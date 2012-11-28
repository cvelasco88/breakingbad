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
			<h2><a href="/episodes">Episodis</a></h2>
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
            <h3 class="title"><?php //echo Text::get('regular-header-about'); ?></h3>
    
                <div class="about-page">
                <a href="#">Breaking Bad</a> és una sèrie de televisió dramàtica Estats Units creada i produïda per <a href="">Vince Gilligan</a>.
                Es va estrenar el 20 de gener del 2008 a la cadena de televisió per cable AMC. 
                La sèrie se centra en la vida de <a href="">Walter White</a>, un professor de química que ha d'encarar diversos problemes als cinquanta
                anys, com afrontar un càncer, la minusvalidesa del seu fill, l'arribada d'un nou membre a la seva família i la gran 
                falta de diners que farà que es fiqui en un enorme embolic que canviarà la seva pacífica vida. Des que es va estrenar 
                la sèrie ha rebut molt bona crítica i ha guanyat sis dels disset <a href="">premis</a> <a href="">Emmy</a> als que fou nominada.
				<a href="#">Breaking Bad</a> ha estat doblada al català per Televisió de Catalunya, que la va estrenar al Canal 3XL l'any 2011 i hi va 
				emetre les tres primeres <a href="">temporades</a>. La <a href="">quarta temporada</a> ha estat estrenada a TV3 l'any 2012.
                </div>
		</div>
	
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
