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
            <?php echo new View('view/header/share.html.php'); ?>
		</div>
	</div>

	<div id="main" class="threecols">
		<div id="about-content">
            <h3 class="title">Sinopsi</h3>
    
                <div class="about-page story-page">
                <a href="/">Breaking Bad</a> és una sèrie de televisió dramàtica Estats Units creada i produïda per <a href="/cast/actor/18">Vince Gilligan</a>.
                Es va estrenar el 20 de gener del 2008 a la cadena de televisió per cable AMC. 
                La sèrie es centra en la vida de <a href="/cast/actor/1">Walter White</a>, un professor de química que ha d'encarar diversos problemes als cinquanta
                anys, com afrontar un càncer, la minusvalidesa del seu fill, l'arribada d'un nou membre a la seva família i la gran 
                falta de diners que farà que es fiqui en un enorme embolic que canviarà la seva pacífica vida. Des que es va estrenar 
                la sèrie ha rebut molt bona crítica i ha guanyat sis dels disset <a href="#">premis</a> <a href="#">Emmy</a> als que fou nominada.
				<a href="/">Breaking Bad</a> ha estat doblada al català per Televisió de Catalunya, que la va estrenar al Canal 3XL l'any 2011 i hi va 
				emetre les tres primeres <a href="/season">temporades</a>. La <a href="/season/4">quarta temporada</a> ha estat estrenada a TV3 l'any 2012.
                </div>
		</div>
	
	
			<div id="about-content">
            <h3 class="title">Premis i nominacions</h3>
    
                <div class="about-page story-page">
         		La sèrie va obtenir quatre nominacions als <a href="#">premis Emmy</a> del 2008, entre els que destaca el de millor actor en sèrie 
         		dramàtica per en <a href="/cast/actor/1">Bryan Cranston</a> i el de millor direcció en una sèrie dramàtica per <a href="/cast/actor/18">Vince Gilligan</a>, escriptor i 
         		creador de la sèrie, per l’<a href="/episodes/1">episodi pilot</a>. Finalment, la sèrie es va emportar el primer dels <a href="#">premis</a> i el de millor 
         		muntatge en una sèrie dramàtica en mono càmera per Lynne Willigham. La sèrie va obtenir una nominació als <a href="#">premis 
         		Satellite</a> i va tornar a guanyar a la categoria de millor <a href="/cast">actor</a> en sèrie dramàtica per Cranston. La <a href="/season">temporada</a> va rebre 
         		tres nominacions per els Writer Guild of America Awards 2009, com a millor sèrie nova i millor episodi dramàtic per 
         		l’<a href="/episodes/1">episodi pilot</a> (resultat guanyador) i el titulat <<Grey Matter>>.
				Al 2009 i 2010 va obtenir l’<a href="#">Emmy</a> al millor actor en sèrie dramàtica per en <a href="/cast/actor/1">Bryan Cranston</a>, i al 2010 i 2012 l’<a href="#">Emmy</a> al
				 millor actor 
				de repartiment en sèrie dramàtica per en <a href="/cast/actor/3">Aaron Paul</a>.
         
                </div>
		</div>
	</div>
    
<?php
include 'view/footer.html.php';
include 'view/epilogue.html.php';
