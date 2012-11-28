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

    class Episodes extends \Goteo\Core\Controller {
        
        public function index () {

         

                $episodis1 = Model\Episodes::get(1);
                $episodis2 = Model\Episodes::get(2);
                $episodis3 = Model\Episodes::get(3);
                $episodis4 = Model\Episodes::get(4);
                $episodis5 = Model\Episodes::get(5);

                return new View('view/episodes/index.html.php',
                    array(
                        'episodis1' => $episodis1,
                    	'episodis2' => $episodis2,
                    	'episodis3' => $episodis3,
                    	'episodis4' => $episodis4,
                    	'episodis5' => $episodis5
                    )
                 );
        }
        
    }
    
}