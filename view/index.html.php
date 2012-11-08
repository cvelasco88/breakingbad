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

$currentPost = $this['posts'][$this['post']];

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
	        		<img style="width:680px; height:100%;" src="/data/images/bb-s1.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img style="width:680px; height:100%;" src="/data/images/bb-s2.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img style="width:680px; height:100%;" src="/data/images/bb-s3.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img style="width:680px; height:100%;" src="/data/images/bb-s4.jpg"></img>
	        	</div>
	        	<div class="subhead-banner">
	        		<img style="width:680px; height:100%;" src="/data/images/bb-s5.jpg"></img>
	        	</div>
	        </div>
	    </div>
	    <div class="sliderbanners-ctrl">
	        <a class="prev">prev</a>
	        <ul class="paginacion"></ul>
	        <a class="next">next</a>
	    </div>
	</div>
 	<h2>Seasons</h2>
 	<div class="submain">
 	<center>
 		<?php
 			for($i=1;$i<6;$i++)
 			{ 			
	 		?>
	 		<div>
	        	<center><img src="/data/images/bb-s<?php echo $i; ?>.jpg"></img></center>
	        	<center><a href="./season/<?php echo $i; ?>">Season <?php echo $i; ?></a></center>
	        </div>
 			<?php 
 			} 
 		?>
 	</center>
 	</div>
 </div>
 <div class="widget">
 	<h2>Videos</h2>
 	<div class="submain">
 		<center>
 		<video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
        <video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
        <video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
        <video controls src="http://devfiles.myopera.com/articles/2642/sintel-trailer.ogv">Tu navegador no soporta HTML5 </video>
        </center>
    </div>
 </div>
 <div class="widget">
 	<h2>Images</h2>
 	<div class="submain">
 		<center>
 		<div>
        	<img src="/data/images/bb-s1.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s2.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s3.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s4.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s5.jpg"></img>
        </div>
        </center>
 	</div>
 </div>
 <div class="widget">
 	<h2>Characters</h2>
 	<div class="submain">
 		<center>
 		<div>
        	<img src="/data/images/bb-s1.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s2.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s3.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s4.jpg"></img>
        </div>
        <div>
        	<img src="/data/images/bb-s5.jpg"></img>
        </div>
        </center>
 	</div>
 </div
</div>
<?php include 'view/footer.html.php'; ?>
<?php include 'view/epilogue.html.php'; ?>