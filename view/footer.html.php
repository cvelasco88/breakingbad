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
    Goteo\Model\Category,
    Goteo\Model\Post,
    Goteo\Model\Sponsor;

$lang = (LANG != 'es') ? '?lang='.LANG : '';

$categories = Category::getList();  // categorias que se usan en proyectos
$posts      = Post::getList('footer');
$sponsors   = Sponsor::getList();
?>

<script type="text/javascript">
jQuery(document).ready(function($) {
	$('.scroll-pane').jScrollPane({showArrows: true});
});
</script>

    <div id="footer">
		<div class="w940">
        	<div class="block categories">
                <h8 class="title">Seccions</h8>
                <ul class="scroll-pane">
                    <li><a href="/">Inici</a></li>
                    <li><a href="/story">Argument</a></li>
                    <li><a href="/cast">Actors</a></li>
                    <li><a href="/season">Temporades</a></li>
                    <li><a href="/episodes">Episodis</a></li>
                    <li><a href="/photos">Imatges</a></li>
                    <li><a href="/video">Videos</a></li>
                    <li><a href="/blog">Blog</a></li>
                </ul>
            </div>

            <div class="block projects">
                <h8 class="title">Desenvolupadors</h8>
                <ul class="scroll-pane">
                    <li><a href="/">Carlos Velasco</a></li>
                    <li><a href="/">Norbert Figueras</a></li>
                </ul>
            </div>

            <div class="block resources">
                <h8 class="title"><?php echo Text::get('footer-header-resources') ?></h8>
                <ul class="scroll-pane">
                    <li><a><?php echo Text::get('regular-header-faq') ?></a></li>
                    <?php foreach ($posts as $id=>$title) : ?>
                    <li><a href="/blog/<?php echo $id ?>"><?php echo Text::recorta($title, 50) ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
			<script>
				$(function(){
					$('#slides_sponsor').slides({
						container: 'slides_container',
						effect: 'fade', 
						crossfade: false,
						fadeSpeed: 350,
						play: 5000, 
						pause: 1
					});
				});
			</script>
           <div id="slides_sponsor" class="block sponsors">
                <h8 class="title">Temporades</h8>
				<div class="slides_container">
					<?php for($i=0;$i<6;$i++) { ?>
					<div class="sponsor" id="footer-sponsor-<?php echo $i; ?>">
						<a href="/season/<?php echo $i; ?>" ><img style="width:120px; height:80px;" src="/data/images/bb-s<?php echo $i; ?>.jpg" alt="Temporada <?php echo $i; ?>" /></a>
					</div>
					<?php } ?>
				</div>
				<div class="slidersponsors-ctrl">
					<a class="prev">prev</a>
					<ul class="paginacion"></ul>
					<a class="next">next</a>
				</div>
            </div>

            <div class="block services">
                
                <h8 class="title">Newsletter</h8>
                <ul>
                    <!-- <li><a href="/service/resources"><?php echo Text::get('footer-service-resources') ?></a></li> -->
<?php /*                    <li><a href="/service/campaign"><?php echo Text::get('footer-service-campaign') ?></a></li>
                    <li><a href="/service/consulting"><?php echo Text::get('footer-service-consulting') ?></a></li>
 *
 */ ?>
                     <!-- <li><a href="/service/workshop"><?php echo Text::get('footer-service-workshop') ?></a></li> -->
                </ul>
                
            </div>
         
            <div class="block social" style="border-right:#ebe9ea 2px solid;">
                <h8 class="title"><?php echo Text::get('footer-header-social') ?></h8>
                <ul>
                    <li class="twitter"><a href="https://twitter.com/BreakingBad_AMC" target="_blank"><?php echo Text::get('regular-twitter') ?></a></li>
                    <li class="facebook"><a href="http://www.facebook.com/BreakingBad" target="_blank"><?php echo Text::get('regular-facebook') ?></a></li>
                    <li class="identica"><a target="_blank"><?php echo Text::get('regular-identica') ?></a></li>
                    <li class="gplus"><a href="<?php echo Text::get('social-account-google') ?>" target="_blank"><?php echo Text::get('regular-google') ?></a></li>
                    <li class="rss"><a rel="alternate" type="application/rss+xml" title="RSS" href="/rss<?php echo $lang ?>" target="_blank"><?php echo Text::get('regular-share-rss'); ?></a></li>
                </ul>
            </div>
		</div>
    </div>

    <div id="sub-footer">
		<div class="w940">
			<ul>
				<li><a href=""></a></li>
				<li><a href=""></a></li>
				<li><a href=""></a></li>
<!--                    <li><a href="https://plus.google.com/b/116559557256583965659/"></a></li> -->
<!--                    <li><a href="http://p1.multimedia.com/rss?lang=ca"></a></li> -->
				<li><a href=""></a></li>
				<li><a href=""></a></li>
			</ul>

			<div class="platoniq">
<!--			   <span class="text"><a href="#" class="poweredby"><?php echo Text::get('footer-platoniq-iniciative') ?></a></span>-->
<!--			   <span class="logo"><a href="http://fuentesabiertas.org" target="_blank" class="foundation">FFA</a></span>-->
<!--			   <span class="logo"><a href="http://www.youcoop.org" target="_blank" class="growby">Platoniq</a></span>-->
			</div>
        </div>
    </div>