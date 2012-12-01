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

use Goteo\Library\Text,
    Goteo\Core\View;

$posts = $this['posts'];
$temporades = $this['temporades'];

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'about';

$go_up = Text::get('regular-go_up');
?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/video">Videos</a></h2>
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<?php
            if (!empty($temporades)) {
	       foreach ($temporades as $temporada) :?>
			<div id="about-content">
            <h3 class="title"><a id="tempTitol" href="/video/<?php echo $temporada->id; ?>"><?php echo $temporada->nom; ?></a></h3>
                <div class="about-page">
                <div class="temp-page">
               	<ul>
               		<li>              	
               		<div>
                	<a href="/video/<?php echo $temporada->id; ?>"> <img src="/data/images/bb-s<?php echo $temporada->id; ?>.jpg"></a>
                	</div>
               		</li>
                </ul>  
                </div>
                
               </div>
		</div>
		<?php
		endforeach;
         }
        ?>
	
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
