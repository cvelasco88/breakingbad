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

use Goteo\Core\View,
    Goteo\Library\Text;

//$currentPost = $this['posts'][$this['post']];

$bodyClass = 'home';
// para que el prologue ponga el código js para botón facebook en el bannerside
include 'view/prologue.html.php';
include 'view/header.html.php';
?>
<script type="text/javascript">
    $(function(){
        $('#sub-header').slides();
    });
</script>
<div id="sub-header" class="banners">
</div>
<div id="main">
 <div class="widget">
 <script type="text/javascript">
    $(function(){
        $('#main-slides').slides();
    });
</script>
	<div id="main-slides" class="banners2">
		<div class="clearfix widget">
	        <div class="slides_container">
	        	<div class="subhead-banner">
	        		<img src="/data/images/bb-s1.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img src="/data/images/bb-s2.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img src="/data/images/bb-s3.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img src="/data/images/bb-s4.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img src="/data/images/bb-s5.jpg"></img>
	        	</div>
	        </div>
	    </div>
	    <div class="sliderbanners-ctrl">
	        <a class="prev">prev</a>
	        <ul class="paginacion"></ul>
	        <a class="next">next</a>
	    </div>
	</div>
 	
 </div>
 <div id="main" class="threecols">
  
 		<div id="about-content">
            <h3 class="title">Temporades</h3>    
            <div class="about-page temp-page">
            	<div class="submain">
			 	<center>
			 		<?php
			 			for($i=1;$i<6;$i++)
			 			{ 			
				 		?>
				 		<div>	
				 			<a href="./season/<?php echo $i; ?>"><h2>Season <?php echo $i; ?></h2></a>			        	
				        	<a href="./season/<?php echo $i; ?>"><img src="/data/images/bb-s<?php echo $i; ?>.jpg"></img><a/>				        	
				        </div>
			 			<?php 
			 			} 
			 		?>
			 	</center>
			 	</div>
            </div>
		</div>		
		
		<div id="about-content">
            <h3 class="title">Videos</h3>    
            <div class="about-page video-page">
            	<div class="submain">
			 		<center>
			 		<video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
			        <video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
			        <video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
			        <video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
			        </center>
			    </div>
            </div>
		</div>
		
		<div id="about-content">
            <h3 class="title">Imatges</h3>    
            <div class="about-page photos-page">
            	<div class="submain">
			 		<center>
			 		<?php
		 			for($i=1;$i<6;$i++)
		 			{ 			
			 		?>
				 		<label>			        	
				        	<a href="/photos"><img src="/data/images/bb-s<?php echo $i; ?>.jpg"></img><a/>				        	
				        </label>
				 	<?php 
				 	} 
		 			for($i=1;$i<6;$i++)
		 			{ 			
			 		?>
				 		<label>		        	
				        	<a href="/photos"><img src="/data/images/cast/<?php echo $i; ?>.jpg"></img><a/>				        	
				        </label>
				 	<?php 
				 	} 
				 	?>
			        </center>
			 	</div>
            </div>
		</div>
		
		<div id="about-content">
            <h3 class="title">Actors</h3>    
            <div class="about-page photos-page">
            	<div class="submain">
			 		<center>
		 			<?php for($i=1;$i<6;$i++)
		 			{ 			
			 		?>
				 		<label>		        	
				        	<a href="/cast/actor/<?php echo $i; ?>"><img src="/data/images/cast/<?php echo $i; ?>.jpg"></img><a/>				        	
				        </label>
				 	<?php 
				 	} 
				 	?>
			        </center>
			 	</div>
            </div>
		</div>
		
</div>
<?php include 'view/footer.html.php'; ?>
<?php include 'view/epilogue.html.php'; ?>