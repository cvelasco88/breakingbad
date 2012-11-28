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

$bodyClass = 'about';
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
                
	                <ul style="display: inline;">
	                	<li>
	                	<label><img src=""></label>
	                	<label>Walter White</label>
	                	<p>Descripció</p>
	                	</li>
	                	<li>
	                	<label><img src=""></label>
	                	<label>Skyler White</label>
	                	<p>Descripció</p>
	                	</li>
	                	<li>
	                	<label><img src=""></label>
	                	<label>Jesse Pinkman</label>
	                	<p>Descripció</p>
	                	</li>
	                	<li>
	                	<label><img src=""></label>
	                	<label>Walter White, Jr.</label>
	                	<p>Descripció</p>
	                	</li>
	                	<li>
	                	<label><img src=""></label>
	                	<label>Hank Schrader</label>
	                	<p>Descripció</p>
	                	</li>
	                	<li>
	                	<label><img src=""></label>
	                	<label>Marie Schrader</label>
	                	<p>Descripció</p>
	                	</li>
	                </ul>
                </div>
             <h3 class="title">Secundaris</h3>
    
             <div class="about-page">
                
                <ul style="display: inline;">
                	<li>
                	<label><img src=""></label>
                	<label>Saul Goodman</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Gustavo "Gus" Fring "Señor de los Pollos"</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Michael "Mike" Ehrmantraut</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Ted Beneke</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Steven Gomez</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Gretchen Schwartz</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Elliott Schwartz</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Jane Margolis</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Tuco Salamanca</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Todd</label>
                	<p>Descripció</p>
                	</li>
                	<li>
                	<label><img src=""></label>
                	<label>Wendy</label>
                	<p>Descripció</p>
                	</li>
                </ul>
		</div>
	
	</div>
    
<?php include 'view/footer.html.php' ?>

<?php include 'view/epilogue.html.php' ?>
