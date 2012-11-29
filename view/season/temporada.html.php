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

$temporada = $this['temporada'];
$episodis = $this['episodis'];

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'season';

$go_up = Text::get('regular-go_up');
?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/season">Temporades</a></h2>
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
		<?php if (!empty($temporada)) { ?>
            <h3 class="title"><?php echo $temporada->nom; ?></h3>
    
                <div class="about-page">
                <div class="temp-page">
         
               	<div>
                <img src="/data/images/bb-s<?php echo $temporada->id; ?>.jpg">
                </div>

               	<?php
               		if (!empty($episodis)) {?>
               		
               		<ul>
               		
               		<?php foreach ($episodis as $ep) :?>
	               		<li>
	               		<label><?php echo "<b>Capitol $ep->id</b> - "; ?></label>
	                	<label><?php echo $ep->titol."<br>"; ?></label>
	                	<div style="padding-right:20px;"><?php echo $ep->descripcio; ?></div>	                	
	               		</li>
                        <?php endforeach; ?>
                     </ul>
                    <?php 
               		}
               		?>
              
                </div>
                <a href="/episodes"> + EPISODIS</a>
               </div>
              <?php
              }
              ?>
		</div>
	
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
