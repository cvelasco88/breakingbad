El c�digo licenciado aqu� con la licencia especificada para el mismo ha sido desarrollado por el equipo de Goteo bajo la direcci�n de Platoniq y cedido posteriormente a la Fundaci�n Fuentes Abiertas, tal como se detalla en http://www.goteo.org/about#info6

Se trata de una herramienta web que permite la recepci�n, revisi�n y publicaci�n de campa�as para su financiaci�n colectiva y recepci�n de colaboraciones, as� como la visualizaci�n din�mica de los apoyos recibidos, clasificaci�n de iniciativas y seguimiento de campa�as. Mediante el sistema tambi�n se permite gestionar la comunicaci�n segura y distribuida con los usuarios y entre estos, administraci�n de proyectos destacados en portada y creaci�n de publicaciones peri�diocas tipo blog, secci�n de FAQs y p�ginas est�ticas. 

Es una versi�n standard de Goteo, exceptuando los m�dulos propios de pasarela de pago por TPV y PayPal, cuyo desarrollo y adaptaci�n deben llevarse a cabo por parte de quien lo implemente, en correspondencia con la licencia especificada y sin responsabilidad de mantenimiento, jur�dica o de ning�n otro tipo por parte de la Fundaci�n Fuentes Abiertas. 

Esta primera versi�n se facilita seg�n es accesible desde este repositorio sin documentaci�n adicional m�s all� de los requerimientos t�cnicos, sin posibilidad actualmente de asesoramiento en su instalaci�n o personalizaci�n ni dedicaci�n a la resoluci�n de incidencias t�cnicas por parte del equipo desarrollador de Goteo.

Para la implementaci�n de subdominios funcionales de la plataforma en modalidad de nodo aut�nomo de Goteo (esto es, alojados en servidor de la Fundaci�n Fuentes Abiertas y adaptados para gesti�n independiente por parte de otras entidades o colectivos, que puedan garantizar la articulaci�n m�nima de recursos para su correcto funcionamiento) recomendamos contactar mediante la siguiente direcci�n de correo electr�nico: info[arroba]goteo.org

Instrucciones para la implementaci�n:
- Subir al alojamiento los archivos del repositorio (excepto .sql y .doc)
- Crear una base de datos y ejecutar en ella el script /db/goteo.sql
- Especificar los credenciales de conexi�n a la base de datos en el archivo /config.php (contantes GOTEO_DB_*)

Los detalles t�cnicos se encuentran en el archivo /doc/plataforma_goteo.doc


CREDITOS
Desarrollo herramienta (conceptualizaci�n, arquitectura de la informaci�n, textos, programaci�n y dise�o de interface) 
Susana Noguero, Olivier Schulbaum, Enric Senabre, Diego Bustamante, Juli�n C�naves, Iv�n Verg�s

Traducci�n de interface y textos
Catal�n: Mireia Pui y Enric Senabre
Ingl�s: Liz Castro y Chris Pinchen

Asesor�a legal y privacidad de datos: Jorge Campanillas y Alfonso Pacheco

Other code writers:
  Jaume Alemany, Philipp Keweloh, Susanna Kosic, Marc Hortelano, Pedro Medina
  
Developed with usage of:
	html, css, xml, javascript
	php, php PEAR packages, various licensed php classes,
	jquery and licensed jquery plugins (SlideJS, CKeditor, Tipsy, MouseWheel, jScrollPane, FancyBox, DatePicker )

