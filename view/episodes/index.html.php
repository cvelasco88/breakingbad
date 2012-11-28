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

$episodis1 = $this['episodis1'];
$episodis2 = $this['episodis2'];
$episodis3 = $this['episodis3'];
$episodis4 = $this['episodis4'];
$episodis5 = $this['episodis5'];

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'about';

$go_up = Text::get('regular-go_up');
?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/episodes">Episodis</a></h2>
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
	<?php for($i=1;$i<6;$i++){?>
		<div id="about-content">
            <h3 class="title">Temporada <?php echo $i;?></h3>    
                <div class="about-page">
                <div class="temp-page">                
               	<?php
               		$aux = "episodis".$i;
               		if (!empty($$aux)) {?>
               		
               		<ul>
               		
               		<?php foreach ($$aux as $ep) :?>
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
            	</div>
		</div>	
		<?php } ?>
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
