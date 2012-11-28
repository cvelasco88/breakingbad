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
$principals = $this['principals'];
$secundaris = $this['secundaris'];
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
            <!--  <h3 class="title"><?php //echo Text::get('regular-header-about'); ?></h3>-->
            <h3 class="title">Principals</h3>
    
               	<div class="about-page">
               	<div class="cast-page">
               	<ul>
               	<?php
               		if (!empty($principals)) {
	               		foreach ($principals as $actor) :?>
	               		<li>
	               		<div>
	                	<img src="/data/images/cast/<?php echo $actor->id; ?>">
	                	<label><a href="/cast/actor/<?php echo $actor->id; ?>"><?php echo "$actor->nomserie ($actor->nomreal)"; ?></a></label>
	                	</div>
	               		</li>
                        <?php endforeach;
               		}
               	?>
                </ul>  
                </div>              
                </div>
             <h3 class="title">Secundaris</h3>
    
             <div class="about-page">
                <div class="cast-page">
                <ul>
               	<?php
               		if (!empty($secundaris)) {
	               		foreach ($secundaris as $actor) :?>
	               		<li>
	                	<div>
	                	<img src="/data/images/cast/<?php echo $actor->id; ?>">
	                	<label><a href="/cast/actor/<?php echo $actor->id; ?>"><?php echo "$actor->nomserie ($actor->nomreal)"; ?></a></label>
	                	</div>
	               		</li>
                        <?php endforeach;
               		}
               	?>
                </ul>   
                </div>
			</div>	
		</div>
	</div>
    
<?php include 'view/footer.html.php' ?>

<?php include 'view/epilogue.html.php' ?>
