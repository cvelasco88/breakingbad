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

$posts = $this['posts'];

include 'view/prologue.html.php';
include 'view/header.html.php';

$bodyClass = 'about';

$go_up = Text::get('regular-go_up');
?>

	<div id="sub-header-secondary">
		<div class="clearfix">
			<h2><a href="/about">Argument</a></h2>
            <?php echo new View('view/header/share.html.php') ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
            <h3 class="title"><?php echo Text::get('regular-header-about'); ?></h3>
    
                <div class="about-page">
                Walter White (Bryan Cranston) es un aplicado profesor de instituto, padre de un joven discapacitado y con una mujer (Anna Gunn) embarazada. Walt, además, trabaja en un lavadero de coches por las tardes. Cuando le diagnostican un cáncer pulmonar terminal se plantea qué pasará con su familia cuando él muera. En una redada de la DEA organizada por su cuñado (Dean Norris) reconoce a un antiguo alumno suyo Jesse Pinkman (Aaron Paul) a quien contacta para fabricar y vender metanfetamina y así asegurar el bienestar económico de su familia. Mientras tanto, el acercamiento al mundo de las drogas y el trato con traficantes y mafiosos contamina la personalidad de Walter, el cual va abandonando poco a poco su personalidad recta y predecible para convertirse en alguien sin demasiados escrúpulos cuando se trata de conseguir lo que quiere.
                
                </div>
		</div>
	
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
