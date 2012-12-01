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

$id = $this['id'];

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'season';

$go_up = Text::get('regular-go_up');
?>
<script src="/data/js/jquery.tools.min.js"></script>
<script src="/data/js/jquery.overlay.min.js"></script>
<head>

<!-- same styling as in minimal setup -->

	<div id="sub-header-secondary">
		<div class="clearfix">
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
		<div class="about-page">
        <div class="temp-page">
         
            <h3 class="title">Temporada <?php $id ?></h3>
            	<?php 
            		for($i=1;$i<11;$i++)
            		{?>
            		<div id="imatgetemporada">
            			<img rel="#mies<?php echo $i;?>" src=/data/images/<?php echo "t".$id;?>/<?php echo $i;?>.jpg>
            		</div>
            	<?php 
            	}
            	?>
            	<?php 
		 			for($i=1;$i<11;$i++)
		 			{ 			
			 		?>
				 		<!-- first overlay. id attribute matches our selector -->
						<div class="simple_overlay photo-overlay" id="mies<?php echo $i; ?>">
						  	<!-- large image -->
            				<img src=/data/images/<?php echo "t".$id;?>/<?php echo $i;?>.jpg>
						</div>
				 	<?php 
				 	} 
				 	?>		
           <div>>
            <a href="/episodes"> + EPISODIS</a>
            <a href="/photos"> + IMATGES</a>
            <a href="/video"> + VIDEOS</a>
           </div>

		</div>
	
	</div>
    <!-- make it happen -->
	<script>
	 $("img[rel]").overlay();
	</script>
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
