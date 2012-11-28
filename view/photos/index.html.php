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

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'about';

$go_up = Text::get('regular-go_up');
?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/photos">Imatges</a></h2>
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
		<div class="about-page">
			<div id="photos-img">
	            <h3 class="title"><?php //echo Text::get('regular-header-about'); ?></h3>
	            <?php
	            	for($i=0;$i<6;$i++) 
	            	{
	            		echo "<img src='/data/images/bb-s$i'>";
	            	}
 					for($i=1;$i<18;$i++) 
	            	{
	            		echo "<img src='/data/images/cast/$i'>";
	            	}
	            ?>
            </div>
		</div>
	</div>
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
