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
$actor = $this['actor'];
$bodyClass = 'cast';

include 'view/prologue.html.php';
include 'view/header.html.php'; ?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/cast">Actors</a></h2>
            <?php //echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
			<?php if (!empty($actor)) { ?>
	            <h3 class="title"><?php echo $actor->nomserie; ?></h3>
	    
	               	<div class="about-page">
		               	<div class="cast-page">
		               	<ul>
		               		<li>
		                	<label><?php echo "$actor->nomserie ($actor->nomreal)"; ?></label>
		                	<label><?php echo "Actor $actor->tipus"; ?></label>
		               		</li>
	                   		<li>
			                	<div><img src="/data/images/cast/<?php echo $actor->id; ?>.jpg"></div>
			                	<div><?php echo $actor->descripcio; ?></div>
			               	</li>
	                	</ul>  
	                </div>              
           		</div> 
           		<?php
               		}
	            ?>
			</div>
	</div>
    
<?php include 'view/footer.html.php' ?>

<?php include 'view/epilogue.html.php' ?>
