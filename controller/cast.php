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

    use Goteo\Library\Page,
        Goteo\Core\Redirection,
        Goteo\Core\View,
        Goteo\Library\Text,
	    Goteo\Library\Message,
	    Goteo\Model;

    class Cast extends \Goteo\Core\Controller {
        
        public function index ($id = NULL) {
        	
        	/*if (!empty($post)) {
        		$show = 'post';
        		// -- Mensaje azul molesto para usuarios no registrados
        		if (empty($_SESSION['user'])) {
        			$_SESSION['jumpto'] = '/blog/' .  $post;
        			Message::Info(Text::get('user-login-required'));
        		}
        	} else {
        		$show = 'list';
        	}*/

        	// obtenim personatge
            $principals = Model\Cast::get('principal');
            $secundaris = Model\Cast::get('secundari');
           

            if (!isset($principals) || !isset($secundaris)) {
                throw new \Goteo\Core\Redirection('/');
            }

            return new View(
            		'view/cast/index.html.php',
            		array(
                    'principals' => $principals,
                    'secundaris' => $secundaris
                )
             );

        }
        
        public function actor ($id = NULL) {
        	 
        	if (!empty($id)) {
	        	// -- Mensaje azul molesto para usuarios no registrados
	        	
        		// obtenim personatge
        		$actor = Model\Cast::getActor($id);
        		
        		return new View(
        				'view/cast/actor.html.php',
        				array(
        						'actor' => $actor
        				)
        		);
        		
        	} else {
	        	throw new \Goteo\Core\Redirection('/');
	        }
       
        }

    }
    
}