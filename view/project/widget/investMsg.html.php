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

use Goteo\Library\Text;

// aviso para el usuario, puede ser start->hola , ok->gracias o fail->lo sentimos

$user = $this['user'];
$name = $user->name ? $user->name : Text::get('project-invest-guest');

switch ($this['message']) {
    case 'start':
        $title   = Text::get('regular-hello') . " $name";
        $message = Text::get('project-invest-start');
        break;
    case 'continue':
        $title   = Text::get('regular-hello') . " $name";
        $message = Text::get('project-invest-continue');
        break;
    case 'ok':
        $title   = Text::get('regular-thanks') . " {$name}!";
        $message = Text::get('project-invest-ok');
        break;
    case 'fail':
        $title   = Text::get('regular-sorry') . " {$name}";
        $message = Text::get('project-invest-fail');
        break;
}

$level = (int) $this['level'] ?: 3;

?>
<div class="widget invest-message">
    <h2><img src="<?php echo $user->avatar->getLink(50, 50, true); ?>" /><span><?php echo $title; ?></span><br />
    <span class="message"><?php echo $message; ?></span></h2>


</div>
