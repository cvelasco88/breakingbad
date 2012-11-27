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
    Goteo\Library\Lang;
?>

<?php include 'view/header/lang.html.php' ?> 


<div id="header">
    <div id="super-header">
	   <?php //include 'view/header/highlights.html.php' ?>
    
	   <div id="rightside" style="float:left;">
           <div id="about">
                <ul>
                    <li><a href="/"><?php echo "pagina principal"; //echo Text::get('regular-header-about'); ?></a></li>
                    <li><a href="/about"><?php echo "argument"; //echo Text::get('regular-header-blog'); ?></a></li>
                    <!--  <li><a href="/blog"><?php echo "blog & talk"; //echo Text::get('regular-header-faq'); ?></a></li>-->
                    <li><a href="/press"><?php echo "actors"; //echo Text::get('regular-header-faq'); ?></a></li>  
                    <li><a href="/episodes"><?php echo "episodis"; //echo Text::get('regular-header-faq'); ?></a></li>
                    <li><a href="/photos"><?php echo "imatges"; //echo Text::get('regular-header-faq'); ?></a></li> 
                    <li><a href="/video"><?php echo "videos"; //echo Text::get('regular-header-faq'); ?></a></li>                             
                    <li id="lang"><a href="#" ><?php echo Lang::get(LANG)->short ?></a></li>
                    <script type="text/javascript">
                    jQuery(document).ready(function ($) {
						 $("#lang").hover(function(){
						   //desplegar idiomas
						   try{clearTimeout(TID_LANG)}catch(e){};
						   var pos = $(this).offset().left;
						   $('ul.lang').css({left:pos+'px'});
						   $("ul.lang").fadeIn();
					       $("#lang").css("background","#808285 url('/view/css/bolita.png') 4px 7px no-repeat");

					   },function() {
						   TID_LANG = setTimeout('$("ul.lang").hide()',100);
						});
						$('ul.lang').hover(function(){
							try{clearTimeout(TID_LANG)}catch(e){};
						},function() {
						   TID_LANG = setTimeout('$("ul.lang").hide()',100);
						   $("#lang").css("background","#59595C url('/view/css/bolita.png') 4px 7px no-repeat");
						});
						
						
					});
					</script>                                  
                </ul>
            </div>          
		</div>
    </div>

    <?php include 'view/header/menu.html.php' ?>

</div>