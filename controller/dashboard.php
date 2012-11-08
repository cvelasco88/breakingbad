<?php
/*
 *  Copyright (C) 2012 Platoniq y Fundación Fuentes Abiertas (see README for details)
 *	This file is part of Goteo.
 *
 *  Goteo is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Goteo is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *
 *  You should have received a copy of the GNU Affero General Public License
 *  along with Goteo.  If not, see <http://www.gnu.org/licenses/agpl.txt>.
 *
 */


namespace Goteo\Controller {

    use Goteo\Core\ACL,
        Goteo\Core\Error,
        Goteo\Core\Redirection,
        Goteo\Core\View,
        Goteo\Model,
		Goteo\Library\Message,
		Goteo\Library\Feed,
        Goteo\Library\Page,
        Goteo\Library\Mail,
        Goteo\Library\Text,
        Goteo\Library\Template,
        Goteo\Library\Listing;

    class Dashboard extends \Goteo\Core\Controller {

        public function index ($section = null) {
            throw new Redirection('/dashboard/profile');
        }
    

        /*
         * Seccion, Mi perfil
         * Opciones:
         *      'public' perfil público (paso 1), 
         *      'personal' datos personales (paso 2),
         *      'access' configuracion (cambio de email y contraseña)
         *
         */
        public function profile ($option = 'profile', $action = 'edit') {

            // tratamos el post segun la opcion y la acion
            $user = $_SESSION['user'];

            if ($option == 'public') {
                throw new Redirection('/user/profile/'.$user->id);
            }

			if ($_SERVER['REQUEST_METHOD'] == 'POST') {

                $log_action = null;

			    $errors = array();
                switch ($option) {
                    // perfil publico
                    case 'profile':
                        // tratar la imagen y ponerla en la propiedad avatar
                        // __FILES__

                        $fields = array(
                            'user_name'=>'name',
                            'user_location'=>'location',
                            'user_avatar'=>'avatar',
                            'user_about'=>'about',
                            'user_keywords'=>'keywords',
                            'user_contribution'=>'contribution',
                            'user_facebook'=>'facebook',
                            'user_google'=>'google',
                            'user_twitter'=>'twitter',
                            'user_identica'=>'identica',
                            'user_linkedin'=>'linkedin'
                        );

                        foreach ($fields as $fieldPost=>$fieldTable) {
                            if (isset($_POST[$fieldPost])) {
                                $user->$fieldTable = $_POST[$fieldPost];
                            }
                        }

                        // Avatar
                        if(!empty($_FILES['avatar_upload']['name'])) {
                            $user->avatar = $_FILES['avatar_upload'];
                        }

                        // tratar si quitan la imagen
                        if (!empty($_POST['avatar-' . $user->avatar->id .  '-remove'])) {
                            $user->avatar->remove('user');
                            $user->avatar = '';
                        }

                        $user->interests = $_POST['user_interests'];

                        //tratar webs existentes
                        foreach ($user->webs as $i => &$web) {
                            // luego aplicar los cambios

                            if (isset($_POST['web-'. $web->id . '-url'])) {
                                $web->url = $_POST['web-'. $web->id . '-url'];
                            }

                            //quitar las que quiten
                            if (!empty($_POST['web-' . $web->id .  '-remove'])) {
                                unset($user->webs[$i]);
                            }

                        }

                        //tratar nueva web
                        if (!empty($_POST['web-add'])) {
                            $user->webs[] = new Model\User\Web(array(
                                'url'   => 'http://'
                            ));
                        }

                        /// este es el único save que se lanza desde un metodo process_
                        if ($user->save($errors)) {
                            Message::Info(Text::get('user-profile-saved'));
                            $user = Model\User::flush();

//                            $log_action = 'Modificado su información de perfil'; //feed admin
                        }
                    break;
                    
                    // datos personales
                    case 'personal':
                        // campos que guarda este paso
                        $fields = array(
                            'contract_name',
                            'contract_nif',
                            'phone',
                            'address',
                            'zipcode',
                            'location',
                            'country'
                        );

                        $personalData = array();

                        foreach ($fields as $field) {
                            if (isset($_POST[$field])) {
                                $personalData[$field] = $_POST[$field];
                            }
                        }

                        // actualizamos estos datos en los personales del usuario
                        if (!empty ($personalData)) {
                            if (Model\User::setPersonal($user->id, $personalData, true, $errors)) {
                                Message::Info(Text::get('user-personal-saved'));

                                $log_action = 'Modificado sus datos personales'; //feed admin
                            }
                        }
                    break;

                    //cambio de email y contraseña
                    case 'access':
                        // E-mail
                        if(!empty($_POST['user_nemail']) || !empty($_POST['user_remail'])) {
                            if(empty($_POST['user_nemail'])) {
                                $errors['email'] = Text::get('error-user-email-empty');
                            }
                            elseif(!\Goteo\Library\Check::mail($_POST['user_nemail'])) {
                                $errors['email'] = Text::get('error-user-email-invalid');
                            }
                            elseif(empty($_POST['user_remail'])) {
                                $errors['email_retry'] = Text::get('error-user-email-empty');
                            }
                            elseif (strcmp($_POST['user_nemail'], $_POST['user_remail']) !== 0) {
                                $errors['email_retry'] = Text::get('error-user-email-confirm');
                            }
                            else {
                                $user->email = $_POST['user_nemail'];
                                unset($_POST['user_nemail']);
                                unset($_POST['user_remail']);
                                $success[] = Text::get('user-email-change-sended');

                                $log_action = 'Cambiado su email'; //feed admin
                            }
                        }
                        // Contraseña
                        if(!empty($_POST['user_npassword']) ||!empty($_POST['user_rpassword'])) {
                    // Ya no checkeamos más la contraseña actual (ni en recover ni en normal)
                    // porque los usuarios que acceden mediante servicio no tienen contraseña
                            /*
                            if(!isset($_SESSION['recovering']) && empty($_POST['user_password'])) {
                                $errors['password'] = Text::get('error-user-password-empty');
                            }
                            elseif(!isset($_SESSION['recovering']) && !Model\User::login($user->id, $_POST['user_password'])) {
                                $errors['password'] = Text::get('error-user-wrong-password');
                            }
                            else
                            */
                            if(empty($_POST['user_npassword'])) {
                                $errors['password_new'] = Text::get('error-user-password-empty');
                            }
                            elseif(!\Goteo\Library\Check::password($_POST['user_npassword'])) {
                                $errors['password_new'] = Text::get('error-user-password-invalid');
                            }
                            elseif(empty($_POST['user_rpassword'])) {
                                $errors['password_retry'] = Text::get('error-user-password-empty');
                            }
                            elseif(strcmp($_POST['user_npassword'], $_POST['user_rpassword']) !== 0) {
                                $errors['password_retry'] = Text::get('error-user-password-confirm');
                            }
                            else {
                                $user->password = $_POST['user_npassword'];
                                unset($_POST['user_password']);
                                unset($_POST['user_npassword']);
                                unset($_POST['user_rpassword']);
                                $success[] = Text::get('user-password-changed');

                                $log_action = 'Cambiado su contraseña'; //feed admin
                            }
                        }
                        if(empty($errors) && $user->save($errors)) {
                            // Refresca la sesión.
                            $user = Model\User::flush();
                            if (isset($_SESSION['recovering'])) unset($_SESSION['recovering']);
                        } else {
                            $errors[] = Text::get('user-save-fail');
                        }
                    break;

                    // preferencias de notificación
                    case 'preferences':
                        // campos de preferencias
                        $fields = array(
                            'updates',
                            'threads',
                            'rounds',
                            'mailing'
                        );

                        $preferences = array();

                        foreach ($fields as $field) {
                            if (isset($_POST[$field])) {
                                $preferences[$field] = $_POST[$field];
                            }
                        }

                        // actualizamos estos datos en los personales del usuario
                        if (!empty ($preferences)) {
                            if (Model\User::setPreferences($user->id, $preferences, $errors)) {
                                Message::Info(Text::get('user-prefer-saved'));
                                $log_action = 'Modificado las preferencias de notificación'; //feed admin
                            }
                        }
                    break;

                }

                if (!empty($log_action)) {
                        /*
                         * Evento Feed
                         */
                        $log = new Feed();
                        $log->title = 'usuario '.$log_action.' (dashboard)';
                        $log->url = '/admin/users';
                        $log->type = 'user';
                        $log_text = '%s ha %s desde su dashboard';
                        $log_items = array(
                            Feed::item('user', $user->name, $user->id),
                            Feed::item('relevant', $log_action)
                        );
                        $log->html = \vsprintf($log_text, $log_items);
                        $log->add($errors);

                        unset($log);
                }

			}

            $viewData = array(
                    'menu'    => self::menu(),
                    'section' => __FUNCTION__,
                    'option'  => $option,
                    'action'  => $action,
                    'errors'  => $errors,
                    'success' => $success,
                    'user'    => $user
                );

                switch ($option) {
                    case 'profile':
                        $viewData['interests'] = Model\User\Interest::getAll();

                        if ($_POST) {
                            foreach ($_POST as $k => $v) {
                                if (!empty($v) && preg_match('/web-(\d+)-edit/', $k, $r)) {
                                    $viewData[$k] = true;
                                    break;
                                }
                            }
                        }

                        if (!empty($_POST['web-add'])) {
                            $last = end($user->webs);
                            if ($last !== false) {
                                $viewData["web-{$last->id}-edit"] = true;
                            }
                        }
                        break;
                    case 'personal':
                        $viewData['personal'] = Model\User::getPersonal($user->id);
                        break;
                    case 'preferences':
                        $viewData['preferences'] = Model\User::getPreferences($user->id);
                        break;
                    case 'access':
                        // si es recover, en contraseña actual tendran que poner el username
                        if ($action == 'recover') {
                            $viewData['message'] = Text::get('dashboard-password-recover-advice');
                        }
                        break;
                }

            return new View (
                'view/dashboard/index.html.php',
                $viewData
            );
        }

        /*
         * Salto al admin
         *
         */
        public function admin ($option = 'board') {
            if (ACL::check('/admin')) {
                throw new Redirection('/admin', Redirection::TEMPORARY);
            } else {
                throw new Redirection('/dashboard', Redirection::TEMPORARY);
            }
        }

        private static function menu() {
            // todos los textos del menu dashboard
            $menu = array(
                'profile' => array(
                    'label'   => Text::get('dashboard-menu-profile'),
                    'options' => array (
                        'profile'  => Text::get('dashboard-menu-profile-profile'),
                        'personal' => Text::get('dashboard-menu-profile-personal'),
                        'access'   => Text::get('dashboard-menu-profile-access'),
                        'preferences' => Text::get('dashboard-menu-profile-preferences'),
                        'public'   => Text::get('dashboard-menu-profile-public')
                    )
                ),
            );

            // si tiene permiso para ir al admin
            if (ACL::check('/admin')) {
                $menu['admin'] = array(
                    'label'   => Text::get('dashboard-menu-admin_board'),
                    'options' => array(
                        'board' => Text::get('dashboard-menu-admin_board')
                    )
                );
            }

            return $menu;

        }

    }

}