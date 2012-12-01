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

$video = $this['video'];
$id = $this['id'];

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'season';

$go_up = Text::get('regular-go_up');
?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/video">Videos</a></h2>
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
		<div class="about-page">
        <div class="video-page">
         
            <h3 class="title">Temporada <?php echo $id; ?></h3>

            <div>
            	<?php  foreach ($video as $v) {?>
            		<label><?php echo $v->url; ?></label>
            	<?php } ?>
            </div>
            
           <div>
            <a href="/episodes"> + EPISODIS</a>
            <a href="/photos"> + IMATGES</a>
            <a href="/video"> + VIDEOS</a>
           </div>

		</div>
	
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
