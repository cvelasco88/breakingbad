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
        Goteo\Model,
        Goteo\Library\Text,
        Goteo\Library\Mail,
        Goteo\Library\Template;

    class Season extends \Goteo\Core\Controller {
        
        public function index ($id = null) {

            if (empty($id)) {

                $temp = Model\Season::getAll();

                return new View(
                		'view/season/index.html.php',
                    array(
                        'temporades' => $temp
                    )
                 );
            }

            $temp = Model\Season::get($id);
            $episodes = Model\Episodes::get($id);
            
            return new View(
                    'view/season/temp.html.php',
                    array(
                        'temporada' => $temp,
                        'episodes' => $episodes
                    )
            );

        }
        
    }
    
}