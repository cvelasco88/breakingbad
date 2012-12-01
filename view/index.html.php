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
            <h3 class="title"><a href="/story">Argument</a></h3>    
            <div class="about-page main-temp-page">
            	<div class="submain">
		
				 		<div class="justify" style="text-align: left;">	
				 			      <a href="#">Breaking Bad</a> és una sèrie de televisió dramàtica Estats Units creada i produïda per <a href="/cast/actor/18">Vince Gilligan</a>.
                Es va estrenar el 20 de gener del 2008 a la cadena de televisió per cable AMC... 			        	
				        </div><div><a href="/story">llegir +</a></div>
		
			 	</div>
            </div>
		</div>		
		
 		<div id="about-content">
            <h3 class="title"><a href="/season">Temporades</a></h3>    
            <div class="about-page main-temp-page">
            	<div class="submain">
            	<center>
			 	<ul style="display:inline;list-style:none;">
			 	
			 		<?php
			 			for($i=1;$i<6;$i++)
			 			{ 			
				 		?>
				 		<li style="display:inline-block;">	
				        	<a href="./season/<?php echo $i; ?>"><img title="Season <?php echo $i; ?>" alt="Season <?php echo $i; ?>" src="/data/images/bb-s<?php echo $i; ?>.jpg"></img><a/>				        	
				        </li>
			 			<?php 
			 			} 
			 		?>
			 	</ul>
			 	</center>
			 	</div>
            </div>
		</div>		
		
		<div id="about-content">
            <h3 class="title"><a href="/video">Videos</a></h3>    
            <div class="about-page video-page">
            	<div class="submain">
			 		<center>
			 			<iframe width="350" height="250" src="http://www.youtube.com/embed/--z4YzxlT8o" frameborder="0" allowfullscreen></iframe>
			 			<iframe width="350" height="250" src="http://www.youtube.com/embed/pSxpF5M0KTg" frameborder="0" allowfullscreen></iframe>		        </center>
			    </div>
            </div>
		</div>
		
		<div id="about-content">
            <h3 class="title"><a href="/video">Imatges</a></h3>    
            <div class="about-page photos-page">
            	<div class="submain">
			 		<center>
			 				<a title="Primer temporada" alt="Primer temporada" href="./photos/1"><img src="/data/images/t1/1.jpg"></img><a/>	
				        	<a title="Segona temporada" alt="Segona temporada" href="./photos/2"><img src="/data/images/t2/1.jpg"></img><a/>	
				        	<a title="Tercera temporada" alt="Tercera temporada" href="./photos/3"><img src="/data/images/t3/3.jpg"></img><a/>
				        	<a title="Quarta temporada" alt="Quarta temporada" href="./photos/4"><img src="/data/images/t4/1.jpg"></img><a/>	
				        	<a title="Quinta temporada" alt="Quinta temporada" href="./photos/5"><img src="/data/images/t5/1.jpg"></img><a/>		
			        </center>
			 	</div>
            </div>
		</div>
		
		<div id="about-content">
            <h3 class="title"><a href="./cast">Actors</a></h3>    
            <div class="about-page photos-page">
            	<div class="submain">
			 		<center>
						<a title="Walter White" alt="Walter White" href="/cast/actor/1"><img src="/data/images/cast/1.jpg"></img><a/>
						<a title="Skyler" alt="Skyler" href="/cast/actor/2"><img src="/data/images/cast/2.jpg"></img><a/>
						<a title="Jesse" alt="Jesse"" href="/cast/actor/3"><img src="/data/images/cast/3.jpg"></img><a/>
						<a title="WW Jr" alt="WW Jr"" href="/cast/actor/4"><img src="/data/images/cast/4.jpg"></img><a/>
						<a title="Hank" alt="Hank"" href="/cast/actor/5"><img src="/data/images/cast/5.jpg"></img><a/>
						<a title="Marie" alt="Marie"" href="/cast/actor/6"><img src="/data/images/cast/6.jpg"></img><a/>
						<a title="More" alt="More"" href="/cast/"><img src="/data/images/cast/more.png"></img><a/>
			        </center>
			 	</div>
            </div>
		</div>
		
</div>
<?php include 'view/footer.html.php'; ?>
<?php include 'view/epilogue.html.php'; ?>