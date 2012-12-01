-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2012 a las 00:53:48
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `breaking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl`
--

DROP TABLE IF EXISTS `acl`;
CREATE TABLE IF NOT EXISTS `acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` varchar(50) NOT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `role_FK` (`role_id`),
  KEY `user_FK` (`user_id`),
  KEY `node_FK` (`node_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Volcado de datos para la tabla `acl`
--

INSERT INTO `acl` (`id`, `node_id`, `role_id`, `user_id`, `url`, `allow`, `timestamp`) VALUES
(1, '*', '*', '*', '//', 1, '2011-05-18 14:45:40'),
(2, '*', '*', '*', '/image/*', 1, '2011-05-18 21:08:42'),
(3, '*', '*', '*', '/tpv/*', 1, '2011-05-26 23:04:02'),
(4, '*', '*', '*', '/admin/*', 0, '2011-05-18 14:45:40'),
(5, '*', '*', '*', '/project/*', 1, '2011-05-18 14:45:40'),
(6, '*', 'superadmin', '*', '/admin/*', 1, '2011-05-18 14:45:40'),
(7, '*', '*', '*', '/user/edit/*', 0, '2011-05-18 14:49:36'),
(8, '*', '*', '*', '/user/*', 1, '2011-05-18 18:59:54'),
(9, '*', '*', '*', 'user/logout', 1, '2011-05-18 19:15:02'),
(10, '*', '*', '*', '/search', 1, '2011-05-18 19:16:40'),
(11, '*', 'user', '*', '/project/create', 1, '2011-05-18 19:46:44'),
(12, '*', 'user', '*', '/dashboard/*', 1, '2011-05-18 19:48:43'),
(13, '*', 'public', '*', '/invest/*', 0, '2011-05-18 20:30:23'),
(14, '*', 'user', '*', '/message/*', 1, '2011-05-18 20:30:23'),
(15, '*', '*', '*', '/user/logout', 1, '2011-05-18 20:33:27'),
(16, '*', '*', '*', '/discover/*', 1, '2011-05-18 20:37:00'),
(17, '*', '*', '*', '/project/create', 0, '2011-05-18 20:38:22'),
(18, '*', '*', '*', '/project/edit/*', 0, '2011-05-18 20:38:22'),
(19, '*', '*', '*', '/project/raw/*', 0, '2011-05-18 20:39:37'),
(20, '*', 'root', '*', '/project/raw/*', 1, '2011-05-18 20:39:37'),
(21, '*', 'superadmin', '*', '/project/edit/*', 1, '2011-05-18 20:43:08'),
(22, '*', '*', '*', '/project/delete/*', 0, '2011-05-18 20:43:51'),
(23, '*', 'superadmin', '*', '/project/delete/*', 1, '2011-05-18 20:44:37'),
(24, '*', '*', '*', '/blog/*', 1, '2011-05-18 20:45:14'),
(25, '*', '*', '*', '/faq/*', 1, '2011-05-18 20:49:01'),
(26, '*', '*', '*', '/about/*', 1, '2011-05-18 20:49:01'),
(27, '*', 'superadmin', '*', '/user/edit/*', 1, '2011-05-18 20:56:56'),
(29, '*', 'user', '*', '/user/edit', 1, '2011-05-18 21:56:56'),
(30, '*', 'user', '*', '/message/edit/*', 0, '2011-05-18 22:45:29'),
(31, '*', 'user', '*', '/message/delete/*', 0, '2011-05-18 22:45:29'),
(32, '*', 'superadmin', '*', '/message/edit/*', 1, '2011-05-18 22:56:55'),
(33, '*', 'superadmin', '*', '/message/delete/*', 1, '2011-05-18 22:00:00'),
(34, '*', 'user', '*', '/invest/*', 1, '2011-05-18 22:56:32'),
(35, '*', 'public', '*', '/message/*', 0, '2011-05-18 22:56:32'),
(36, '*', 'public', '*', '/user/edit/*', 0, '2011-05-18 23:00:18'),
(37, '*', 'superadmin', '*', '/cron/*', 1, '2011-05-26 23:04:02'),
(38, '*', '*', '*', '/widget/*', 1, '2011-06-10 09:30:39'),
(39, '*', '*', '*', '/user/recover/*', 1, '2011-06-12 20:31:36'),
(40, '*', '*', '*', '/news/*', 1, '2011-06-19 11:36:34'),
(41, '*', 'user', '*', '/community/*', 1, '2011-06-19 11:49:36'),
(42, '*', '*', '*', '/ws/*', 1, '2011-06-20 21:18:15'),
(43, '*', 'checker', '*', '/review/*', 1, '2011-06-21 15:18:51'),
(44, '*', '*', '*', '/contact/*', 1, '2011-06-29 22:24:00'),
(45, '*', '*', '*', '/service/*', 1, '2011-07-13 15:26:04'),
(47, '*', 'translator', '*', '/translate/*', 1, '2011-07-24 10:47:50'),
(48, '*', '*', '*', '/legal/*', 1, '2011-08-05 11:09:08'),
(49, '*', '*', '*', '/rss/*', 1, '2011-08-14 16:32:01'),
(50, '*', 'superadmin', '*', '/impersonate/*', 1, '2011-08-20 07:41:05'),
(51, '*', '*', '*', '/glossary/*', 1, '2011-08-25 13:39:17'),
(52, '*', 'user', 'paypal', '/paypal/*', 1, '2011-09-04 22:58:55'),
(53, '*', 'user', 'paypal', '/cron/*', 1, '2011-09-04 22:58:55'),
(54, '*', '*', '*', '/press/*', 1, '2011-09-06 08:04:52'),
(55, '*', '*', '*', '/project/view/*', 0, '2011-09-16 13:46:34'),
(56, '*', '*', '*', '/mail/*', 1, '2011-09-25 12:13:58'),
(57, '*', 'user', 'diegobus', '/admin/*', 1, '2011-09-29 14:17:50'),
(58, '*', '*', '*', '/json/*', 1, '2011-11-22 15:10:08'),
(67, '*', '*', '*', '/wof/*', 1, '2011-12-14 15:44:10'),
(68, '*', '*', '*', '/cast/*', 1, '2012-11-27 20:00:11'),
(69, '*', '*', '*', '/episodes/*', 1, '2012-11-28 10:46:45'),
(70, '*', '*', '*', '/photos/*', 1, '2012-11-28 10:49:32'),
(71, '*', '*', '*', '/video/*', 1, '2012-11-28 10:50:24'),
(72, '*', '*', '*', '/story/*', 1, '2012-11-28 11:01:16'),
(73, '*', '*', '*', '/season/*', 1, '2012-11-28 11:23:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT '1',
  `image` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_node` (`node`,`project`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proyectos en banner superior' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `owner` varchar(50) NOT NULL COMMENT 'la id del proyecto o nodo',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Blogs de nodo o proyecto' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `type`, `owner`, `active`) VALUES
(1, 'node', 'breaking', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign`
--

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE IF NOT EXISTS `campaign` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cast`
--

DROP TABLE IF EXISTS `cast`;
CREATE TABLE IF NOT EXISTS `cast` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nomserie` varchar(50) NOT NULL,
  `nomreal` varchar(50) NOT NULL,
  `tipus` varchar(20) NOT NULL DEFAULT 'principal',
  `descripcio` varchar(5000) NOT NULL,
  `imatge` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `cast`
--

INSERT INTO `cast` (`id`, `nomserie`, `nomreal`, `tipus`, `descripcio`, `imatge`) VALUES
(1, 'Walter White', 'Bryan Cranston', 'principal', 'És un professor de química de 50 anys d''edat. Li van diagnosticar càncer de pulmó terminal, fet que va fer que canviés dràsticament la seva manera de pensar. Entossudit en aconseguir diners per a la seva família i amb el seu gran coneixement de la química, <a href="/cast/actor/1">Walt</a> comença a produir i distribuir metamfetamina amb el sobrenom de <a href="/cast/actor/1">Heisenberg</a>.', ''),
(2, 'Skyler White ', 'Anna Gunn', 'principal', 'És una escriptora de contes curts. És la mare de <a href="/cast/actor/4">Walter White Jr</a> i d''una filla que està en camí. Skyler es preocupa massa per <a href="/cast/actor/1">Walter</a>, fins al punt de prendre totes les decisions per ell.', ''),
(3, 'Jesse Pinkman', 'Aaron Paul', 'principal', 'Sota el sobrenom de <a href="/cast/actor/3">Capità Cook</a>\n és el company de <a href="/cast/actor/1">Walter White</a> en el negoci de la metamfetamina. <a href="/cast/actor/3">Jesse</a> va ser alumne de <a href="/cast/actor/1">White</a> en la classe de química de l''institut on treballa <a href="/cast/actor/1">Walter</a>, la qual va suspendre. Prové d''una família benestant, però tot i així viu a la casa que la seva tia li va donar d''herència després de morir. Les relacions amb la seva família no són de les millors ja que el van fer fora de casa per las seves relacions amb la droga.', ''),
(4, 'Walter White, Jr', 'RJ Mitte', 'principal', 'És el fill adolescent de <a href="/cast/actor/2">Skyler</a> i <a href="/cast/actor/1">Walter</a>. Va néixer amb paràlisi cerebral, cosa que li provoca problemes a la parla i dificultats motrius i és per això que porta crosses.', ''),
(5, 'Hank Schrader', 'Dean Norris', 'principal', 'És un agent de la DEA (Drug Enforcement Administration), casat amb <a href="/cast/actor/6">Marie Schrader</a> i cunyat de <a href="/cast/actor/1">Walter</a>. Actualment està investigant l''arribada d''una nova persona al negoci de la metamfetamina, sense saber que aquesta persona és <a href="/cast/actor/1">Walter</a>.', ''),
(6, 'Marie Schrader', 'Betsy Brandt', 'principal', 'És la germana de <a href="/cast/actor/2">Skyler</a> i dona de <a href="/cast/actor/5">Hank</a>. Aconsella constantment els demés, però és incapaç d''aplicar-se els seus pròpis consells. A més té un problema de cleptomania.', ''),
(7, 'Saul Goodman', 'Bob Odenkirk', 'secundari', 'Apareix en la segona temporada. És un advocat de mala nota que s''anuncia a la televisió amb el lema de "Better Call <a href="/cast/actor/7">Saul</a>". Ell els ajuda a moure''s millor en el camp de la venda de metamfetamina a més de treure''ls de problemes legals amb mètodes poc ortodoxos.', ''),
(8, 'Gustavo "Gus" Fring "Señor de los Pollos"', 'Giancarlo Esposito', 'secundari', 'Apareix a finals de la <a href="/season/2">segona temporada</a>. Aquest amable i emprenedor empresari, propietari de la major cadena de menjar ràpid de pollastre fregit de l''estat de Nou Mèxic i, alhora, és el major distribuïdor de metamfetamina de tot l''estat.', ''),
(9, 'Michael "Mike" Ehrmantraut', 'Jonathan Banks', 'secundari', 'És un investigador privat que a primera instancia sembla treballar per en <a href="/cast/actor/7">Saul</a>, però a mesura que passen els capítols es revela que la seva lleialtat esta al costat d’en <a href="/cast/actor/8">Fring</a>. ', ''),
(10, 'Ted Beneke', 'Christopher Cousins', 'secundari', 'Va ser el cap de la <a href="/cast/actor/2">Skyler</a> en una empresa d’on ella treballava com a comptable.', ''),
(11, 'Steven Gomez ', 'Steven Michael Quezada', 'secundari', 'És el company d’en <a href="/cast/actor/5">Hank</a> a la DEA.', ''),
(12, 'Gretchen Schwartz', 'Jessica Hecht', 'secundari', 'És l’antiga assistenta de química de <a href="/cast/actor/1">Walter</a> a la universitat. Actualment es propietària de la meitat de la companyia Gray Matter (<<materia girs>>), una companyia farmacèutica exitosa. Aparentment, va tenir interès romàntic per en <a href="/cast/actor/1">Walt</a>, però està casada amb l’<a href="/cast/actor/13">Elliot Schwartz</a>', ''),
(13, 'Elliott Schwartz', 'Adam Godley', 'secundari', 'És l’antic company de ciències de <a href="/cast/actor/1">Walter</a> i propietari de la meitat de la companyia Gray Matter, cofundador d’aquesta juntament amb <a href="/cast/actor/1">Walter White</a>. Està casat amb en <a href="/cast/actor/12">Gretchen</a>.', ''),
(14, 'Jane Margolis', 'Krysten Ritter', 'secundari', 'Xicota d’en <a href="/cast/actor/3">Jesse</a>, és addicte a l’heroïna i està en un pla de desintoxicació per pressió del seu pare.', ''),
(15, 'Tuco Salamanca', 'Raymond Cruz', 'secundari', 'És un mexicà demencial especialista en drogues, es converteix en un distribuïdor de metaenfetamina de <a href="/cast/actor/3">Jeese</a> i <a href="/cast/actor/1">Walter</a>. És imprevisible i propens a enfadar-se violentament, però respecta en <a href="/cast/actor/1">Walt</a> pel seu producte superior, intel•ligència i valentia. ', ''),
(16, 'Todd', 'Jesse Plemons', 'secundari', 'És un empleat de "Vamonos pest control" que assisteix a en <a href="/cast/actor/1">Walt</a> i <a href="/cast/actor/1">Jesse</a> en la seva refundació del negoci de fabricació de metaenfetamina.', ''),
(17, 'Wendy', 'Julia Minesci', 'secundari', 'És una prostituta que té la seva primera aparició en el capítol “And the Bag’s in the River” on dona els seus serveis sexuals a en <a href="/cast/actor/3">Jesse</a>, té aparicions a la primera, segons i <a href="/season/3">tercera temporada</a>. ', ''),
(18, 'Vince Gilligan', 'Vince Gilligan', 'altres', 'Creador i productor executiu. (nascut el 10 de febrer de 1967) és un escriptor, director i productor nord-americà. É el creador de la sèrie de televisió <a href="/">Breaking Bad</a>. També ha treballat en la reeixida sèrie Expediente X i Els Pistolers Solitaris.', ''),
(19, 'Mark Johnson', 'Mark Johnson ', 'altres', 'Productor executiu. (nascut el 27 de desembre 1945) és un productor de cinema nord-americà. Johnson va guanyar el premi de Millor Pel • lícula de l''Acadèmia per a la producció de drama 1988 Rain Man, protagonitzada per Dustin Hoffman i Tom Cruise. La pel • lícula, guanyadora de quatre premis Oscar, també un Globus d''Or com a millor Pel • lícula.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `description` text,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Categorias de los proyectos' AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `order`) VALUES
(2, 'Social', 'Proyectos que promueven el cambio social, la resolución de problemas en las relaciones humanas y/o su fortalecimiento para conseguir un mayor bienestar.', 1),
(6, 'Comunicativo', 'Proyectos con el objetivo de informar, denunciar, comunicar (por ejemplo periodismo ciudadano, documentales, blogs, programas de radio).', 3),
(7, 'Tecnológico', 'Desarrollos técnicos de software, hardware, herramientas etc. para solucionar problemas o necesidades concretas. ', 1),
(9, 'Comercial', 'Proyectos que aspiran a convertirse en una iniciativa empresarial, generando beneficios económicos. ', 1),
(10, 'Educativo', 'Proyectos donde el objetivo primordial es la formación o el aprendizaje. ', 5),
(11, 'Cultural', 'Proyectos con objetivos artísticos y culturales en un sentido amplio.', 6),
(13, 'Ecológico', 'Proyectos relacionados con el cuidado del medio ambiente, la sostenibilidad y/o la diversidad biológica.\r\n', 7),
(14, 'Científico', 'Estudios o investigaciones de alguna materia, proyectos que buscan respuestas, soluciones, explicaciones nuevas.', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_lang`
--

DROP TABLE IF EXISTS `category_lang`;
CREATE TABLE IF NOT EXISTS `category_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `category_lang`
--

INSERT INTO `category_lang` (`id`, `lang`, `name`, `description`) VALUES
(2, 'ca', 'Social', 'Projectes que promouen el canvi social, la resolució de problemes en les relacions humanes i/o el seu enfortiment per aconseguir un major benestar.'),
(2, 'de', 'Gesellschaft', 'Projekte, die den sozialen Austausch sowie die Problemlösung in zwischenmenschlichen Beziehungen fördern und die eine Stärkung gesellschaftlicher Bindungen zur Förderung des Allgemeinwohls unterstützen.'),
(2, 'en', 'Social', 'Projects that promote social change, resolve problems with or strengthen human relationshiops in order to achieve better well-being.'),
(6, 'ca', 'Comunicatiu', 'Projectes amb l''objectiu d''informar, denunciar, comunicar (per exemple periodisme ciutadà, documentals, blogs, programes de radio).'),
(6, 'de', 'Kommunikation', 'Projekte, deren Ziel es ist zu informieren, Misstände öffentlich zu machen oder die sich um Kommunikation im Allgemeinen drehen (z.B. Bürgerzeitungen, Dokumentarfilme, Blogs, Radioprogramme).'),
(6, 'en', 'Communications', 'Projects whose objective is to inform, denounce and/or communicate (for example, civic journalism, documentaries, blogs, radio programs).'),
(7, 'ca', 'Tecnològic', 'Desenvolupaments tècnics de programari, maquinari, eines etc. per solucionar problemes o necessitats concretes. '),
(7, 'de', 'Technologie', 'Technische Entwicklungen im Bereich Software, Hardware, Werkzeuge etc. die der Problemlösung dienen oder die auf konkrete Bedürfnisse eingehen.\r\n'),
(7, 'en', 'Technological', 'Technical development of software, hardware, tools, etc in order to solve concrete problems or needs.'),
(9, 'ca', 'Comercial', 'Projectes que aspiren a convertir-se en una iniciativa empresarial, generant beneficis econòmics. '),
(9, 'de', 'Kommerziell', 'Projekte, die eine unternehmerische Initiative darstellen und die die Absicht haben, ökonomischen Gewinn zu generieren.'),
(9, 'en', 'Commercial', 'Projects that are business initiatives, and that hope to generate profits.'),
(10, 'ca', 'Educatiu', 'Projectes on l''objectiu primordial és la formació o l''aprenentatge. '),
(10, 'de', 'Bildung', 'Projekte, deren primäres Ziel im Bereich Bildung und Lernen liegt.'),
(10, 'en', 'Educational', 'Projects whose most important objective is formation or learning. '),
(11, 'ca', 'Cultural', 'Projectes amb objectius artístics i culturals en un sentit ampli.'),
(11, 'de', 'Kultur', 'Projekte mit künstlerischen und kulturellen Zielsetzungen im weiteren Sinne.'),
(11, 'en', 'Cultural', 'Projects with artistic or cultural objectives.'),
(13, 'ca', 'Ecològic', 'Projectes relacionats amb la cura del medi ambient, la sostenibilitat i/o la diversitat biològica.\r\n'),
(13, 'de', 'Ökologie', 'Projekte im Bereich Umweltschutz, Nachhaltigkeit und Biodiversität.'),
(13, 'en', 'Ecological', 'Projects that are related to the care of the environment, sustainability, and/or biological diversity.\r\n'),
(14, 'ca', 'Científic', 'Estudis o investigacions d''alguna matèria, projectes que busquen respostes, solucions, explicacions noves.'),
(14, 'de', 'Wissenschaft', 'Studien und Untersuchungen jeglicher Art, Projekte auf der Suche nach Antworten, Lösungen, und neuen Erklärungen.'),
(14, 'en', 'Scientific', 'Studies or research, projects that look for answers, solutions, new explanations.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post` bigint(20) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `user` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comentarios' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cost`
--

DROP TABLE IF EXISTS `cost`;
CREATE TABLE IF NOT EXISTS `cost` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `cost` tinytext,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(5) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `from` date DEFAULT NULL,
  `until` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Desglose de costes de proyectos' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cost_lang`
--

DROP TABLE IF EXISTS `cost_lang`;
CREATE TABLE IF NOT EXISTS `cost_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `cost` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criteria`
--

DROP TABLE IF EXISTS `criteria`;
CREATE TABLE IF NOT EXISTS `criteria` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(50) NOT NULL DEFAULT 'node',
  `title` tinytext,
  `description` text,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Criterios de puntuación' AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `criteria`
--

INSERT INTO `criteria` (`id`, `section`, `title`, `description`, `order`) VALUES
(5, 'project', 'Es original', 'donde va esta descripción? donde esta el tool tip?\r\n\r\nHola, este tooltip ira en el formulario de revision', 1),
(6, 'project', 'Es eficaz en su estrategia de comunicación', '', 2),
(7, 'project', 'Aporta información suficiente del proyecto', '', 3),
(8, 'project', 'Aporta productos, servicios o valores “deseables” para la comunidad', '', 4),
(9, 'project', 'Es afín a la cultura abierta', '', 5),
(10, 'project', 'Puede crecer, es escalable', '', 6),
(11, 'project', 'Son coherentes los recursos solicitados con los objetivos y el tiempo de desarrollo', '', 7),
(12, 'project', 'Riesgo proporcional al grado de beneficios (sociales, culturales y/o económicos)', 'Test descripción de un criterio...', 8),
(13, 'owner', 'Posee buena reputación en su sector', '', 1),
(14, 'owner', 'Ha trabajado con organizaciones y colectivos con buena reputación', '', 2),
(15, 'owner', 'Aporta información sobre experiencias anteriores (éxitos y fracasos)', '', 3),
(16, 'owner', 'Tiene capacidades para llevar a cabo el proyecto', '', 4),
(17, 'owner', 'Cuenta con un equipo formado', '', 5),
(18, 'owner', 'Cuenta con una comunidad de seguidores', '', 6),
(19, 'owner', 'Tiene visibilidad en la red', '', 7),
(20, 'reward', 'Es viable (su coste está incluido en la producción del proyecto)', '', 1),
(21, 'reward', 'Puede tener efectos positivos, transformadores (sociales, culturales, empresariales)', '', 2),
(22, 'reward', 'Aporta conocimiento nuevo, de difícil acceso o en proceso de desaparecer', '', 3),
(23, 'reward', 'Aporta oportunidades de generar economía alrededor', '', 4),
(24, 'reward', 'Da libertad en el uso de sus resultados (es reproductible)', '', 5),
(25, 'reward', 'Ofrece un retorno atractivo (por original, por útil, por inspirador... )', '', 6),
(26, 'reward', 'Cuenta con actualizaciones', '', 7),
(27, 'reward', 'Integra a la comunidad (a los seguidores, cofinanciadores, a un grupo social)', '', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criteria_lang`
--

DROP TABLE IF EXISTS `criteria_lang`;
CREATE TABLE IF NOT EXISTS `criteria_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodis`
--

DROP TABLE IF EXISTS `episodis`;
CREATE TABLE IF NOT EXISTS `episodis` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `numero` int(5) NOT NULL,
  `temporada` int(5) NOT NULL,
  `titol` varchar(50) NOT NULL,
  `descripcio` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Volcado de datos para la tabla `episodis`
--

INSERT INTO `episodis` (`id`, `numero`, `temporada`, `titol`, `descripcio`) VALUES
(1, 1, 1, 'Pilot', 'Un professor de química d''institut recorre al negoci de les drogues per mantenir la seva família.'),
(2, 2, 1, 'El gat és al sac...', 'El primer tracte fracassa i fa que en <a href="/cast/actor/1">Walt</a> i <a href="/cast/actor/3">Jesse</a> s''hagin de desfer de dos cadàvers mentre la <a href="/cast/actor/2">Skyler</a> sospita que el seu marit en porta alguna de cap.'),
(3, 3, 1, '.. i el sac és al riu', 'Mentre en <a href="/cast/actor/1">Walt</a> neteja les restes del desastre del seu primer negoci, s''adona que la <a href="/cast/actor/2">Skyler</a> està molt a prop de descobrir la seva doble vida i es planteja dir-li la veritat sobre la malaltia.'),
(4, 4, 1, 'Tinc càncer', 'En <a href="/cast/actor/1">Walt</a> es veu obligat a dir la veritat sobre la seva malaltia i això fa que s''hagi de plantejar com fer front als costos d''una sèrie de tractaments molt cars contra el càncer.'),
(5, 5, 1, 'Matèria Grisa', '<a href="/cast/actor/2">Skyler</a> aprofita un esdeveniment per convèncer en <a href="/cast/actor/1">Walt</a> d''acceptar la generosa oferta del seu antic company d''investigació de costejar els caríssims tractaments per a la seva malaltia.'),
(6, 6, 1, 'Un engany com una casa', 'Els efectes secundaris i les despeses del tractament es van acumulant ràpidament i en <a href="/cast/actor/1">Walt</a> demana al <a href="/cast/actor/3">Jesse</a> que busqui un comprador per al laboratori, però aquest acaba amb problemes amb un delinqüent habitual.'),
(7, 7, 1, 'Un tracte sense males llets', 'Després que en <a href="/cast/actor/3">Jesse</a> va estar a punt de morir, en <a href="/cast/actor/1">Walt</a> accepta produir encara més drogues per al despietat <a href="/cast/actor/15">Tuco</a>, mentre la <a href="/cast/actor/2">Skyler</a> sospita que la seva germana va robar un objecte de bany per a nadons molt car.'),
(8, 8, 2, 'Set-cents trenta-set', 'Mentre ultimen un pla per rematar una gran operació, en <a href="/cast/actor/1">Walt</a> i en <a href="/cast/actor/3">Jesse</a> temen que el seu únic comprador, el <a href="/cast/actor/15">Tuco</a>, els mati tan bon punt se li presenti l''oportunitat'),
(9, 9, 2, 'A la brasa', 'Mentre els antidroga anuncien la cerca i captura del <a href="/cast/actor/15">Tuco</a>, la <a href="/cast/actor/2">Skyler</a> recluta en <a href="/cast/actor/5">Hank</a> per localitzar en <a href="/cast/actor/1">Walt</a>.'),
(10, 10, 2, 'Picat per una abella morta', 'En <a href="/cast/actor/5">Hank</a> s''acosta perillosament a destapar la veritat sobre el paper d''en <a href="/cast/actor/1">Walt</a> en el negoci de les drogues i aquest trama un pla per esborrar qualsevol rastre.'),
(11, 11, 2, 'Avall', 'Mentre en <a href="/cast/actor/1">Walt</a> fa els possibles per evitar el distanciament entre ell i la <a href="/cast/actor/2">Skyler</a>, en <a href="/cast/actor/3">Jesse</a> es queda sense casa quan els seus pares el fan fora d''on estava vivint.'),
(12, 12, 2, 'Pèrdues', 'A en <a href="/cast/actor/1">Walt</a> se li acumulen les factures del metge i els problemes domèstics, però en <a href="/cast/actor/3">Jesse</a> només tornarà al negoci de les drogues si ell en dicta les condicions.'),
(13, 13, 2, 'Taaat!', 'Mentre en <a href="/cast/actor/3">Jesse</a> segueix la pista als addictes que van robar la droga a Skinny Pete, en <a href="/cast/actor/1">Walt</a> se les empesca per reforçar la seva coartada sobre com ha sufragat els tractaments contra el càncer.'),
(14, 14, 2, '"Negre y Blau", la balada d''en Heisenberg', 'Mentre en <a href="/cast/actor/1">Walt</a> vol aprofitar la reputació d''en <a href="/cast/actor/3">Jesse</a> com a senyor de la droga sense escrúpols per ampliar el seu àmbit d''actuació, el primer contacte d''en <a href="/cast/actor/1">Hank</a> amb l''alt risc de l''oficina antidroga d''El Paso el deixa molt tocat.'),
(15, 15, 2, 'Truca a en Saul', 'La detenció d''en Badger obliga en <a href="/cast/actor/1">Walt</a> i en <a href="/cast/actor/3">Jesse</a> a associar-se amb un advocat dubtós.'),
(16, 16, 2, '4 dies a fora', 'Amoïnat perquè el temps se li esgota, en <a href="/cast/actor/1">Walt</a> vol deixar assegurat el futur de la seva família i recluta en <a href="/cast/actor/3">Jesse</a> per fer una sessió maratoniana de cocció de metadona al desert.'),
(17, 17, 2, 'Amunt', 'Després de rebre bones notícies sobre els resultats del tractament contra el càncer, en <a href="/cast/actor/1">Walt</a> s''enfronta amb el seu cunyat, en <a href="/cast/actor/5">Hank</a>, abans de dedicar tots els seus esforços a redreçar les coses a casa.'),
(18, 18, 2, 'Mandala', 'A mesura que s''acosta el final de l''embaràs, la <a href="/cast/actor/2">Skyler</a> es qüestiona el que sent pel seu cap. Mentrestant, la mort d''un camell de carrer fa que en <a href="/cast/actor/1">Walt</a> hagi de buscar un altre lloc on descarregar una gran partida de metadona.'),
(19, 19, 2, 'Phoenix', 'Després de perdre''s el naixement de la seva filla per acabar de tancar un tracte suculent, en <a href="/cast/actor/1">Walt</a> es quadra amb la xicota d''en <a href="/cast/actor/3">Jesse</a> pel repartiment dels beneficis.'),
(20, 20, 2, 'Aeroport Internacional d''Alburquerque', 'En <a href="/cast/actor/1">Walt</a> mira d''encarrilar la seva vida i la d''en <a href="/cast/actor/3">Jesse</a> mentre es prepara per l''operació i procura que la <a href="/cast/actor/2">Skyler</a> i en <a href="/cast/actor/4">Walt Jr.</a> no descobreixin la font dels seus ingressos.'),
(21, 21, 3, 'No més', 'Arrenca la <a href="/season/3">tercera temporada</a> de <a href="/">"Breaking Bad"</a>, en la qual en <a href="/season/3">Walt</a> patirà les conseqüències de les seves activitats delictives.'),
(22, 22, 3, 'Caball sense nom', 'En <a href="/season/1">Walt</a> és capaç de qualsevol cosa per fer que la família torni a estar unida. D''altra banda, en <a href="/season/3">Jesse</a> decideix fer una important inversió del tot inesperada'),
(23, 23, 3, 'Em tiro en Ted', 'En <a href="/season/1">Walt</a> li diu a la <a href="/season/2">Skyler</a> que accepti els diners, justificant que tot el que ha fet ha estat pensant en el futur dels seus fills. La reacció de la <a href="/season/2">Skyler</a> no serà l''esperada ni de bon tros...'),
(24, 24, 3, 'Semàfor verd', 'En <a href="/season/5">Hank</a> continua sense prestar atenció a la trucada a El Paso després d''anotar-se uns quants avenços en la seva investigació en el "cas Heisenberg". Mentrestant, en <a href="/season/3">Jesse</a> vol tornar a treballar.'),
(25, 25, 3, 'Més', 'En <a href="/season/1">Walt</a> s''ocupa de les conseqüències de l''accident d''avió i una nova amenaça s''interposa en el seu camí. Mentrestant, la <a href="/season/2">Skyler</a> considera quins són els millors passos que cal seguir'),
(26, 26, 3, 'Al capvespre', 'En <a href="/season/1">Walt</a> comença a treballar al seu nou laboratori i coneix qui serà el seu nou assistent. Els cosins mexicans reapareixen però no es mouen del restaurant del <a href="/season/8">Gus</a>. En <a href="/season/5">Hank</a> segueix amb la seva investigació i el porta al <a href="/season/3">Jesse</a>. En <a href="/season/1">Walt</a> entrarà en escena.'),
(27, 27, 3, 'Un minut', 'En <a href="/season/5">Hank</a> passa comptes amb en <a href="/season/3">Jesse</a> després d''involucrar la seva parella en un horrible accident que resulta fictici. D''altra banda, al laboratori, el nou assistent d''en <a href="/season/1">Walter</a> no se''n surt amb els primers experiments'),
(28, 28, 3, 'Et veig', 'En <a href="/season/5">Hank</a> ingressa a l''hospital després de rebre 4 trets. Pel que fa al laboratori, en <a href="/season/1">Walt</a> ha de dir-li al Gale que prescindeix dels seus serveis.'),
(29, 29, 3, 'Kafkià', 'Mentre en <a href="/season/5">Hank</a> segueix ingressat, la <a href="/season/2">Skyler</a> trama els seus plans. En <a href="/season/1">Walt</a> i en <a href="/season/8">Gus</a> sembla que s''avenen cada cop més. El <a href="/season/2">Jesse</a>, per la seva banda, busca noves oportunitats.'),
(30, 30, 3, 'La mosca', 'En <a href="/season/1">Walt</a> es nega a seguir amb més experiments fins que no s''aïlli un agent contaminant que fluctua pel laboratori. En <a href="/season/3">Jesse</a> intenta de totes totes que en Walt reconsideri aquesta situació.'),
(31, 31, 3, 'Albuquerque', 'La <a href="/season/2">Skyler</a> s''involucra cada cop més en el negoci d''en <a href="/season/1">Walt</a>. En <a href="/season/5">Hank</a> lluita per a la seva recuperació. En <a href="/season/3">Jesse</a> agafa un rol actiu a la seva nova empresa.'),
(32, 32, 3, 'Mitges tintes', 'En contra de la paraula del <a href="/season/1">Walt</a>, el <a href="/season/3">Jesse</a> tira endavant la seva decisió. En <a href="/season/1">Walt</a> sap que en <a href="/season/3">Jesse</a> corre perill i decideix prendre part en l''assumpte.'),
(33, 33, 3, 'Tot o res', 'En <a href="/season/1">Walt</a> negocia alguna mena de tracte amb en <a href="/season/8">Gus</a> per la seva seguretat i la d''en <a href="/season/3">Jesse</a>.'),
(34, 34, 4, 'Cúter', 'En <a href="/season/1">Walt</a> i en <a href="/season/3">Jesse</a> esperen ansiosament el pròxim moviment d''en <a href="/season/8">Gus</a>, el seu cap de narcotraficants. Per la seva banda, la <a href="/season/2">Skyler</a> descobreix que en <a href="/season/1">Walt</a> ha desaparegut i inicia una recerca desesperada.'),
(35, 35, 4, '38 snub', 'En <a href="/season/1">Walt</a> decideix comprar-se un revòlver per protegir-se i en <a href="/season/3">Jesse</a> ha de trampejar el seu sentiment de culpa en reviure l''amistat amb en Badger i l''Skinny Pete. D''altra banda, la <a href="/season/2">Skyler</a> mira de comprar un túnel d''autorentat de cotxes i la seva germana, ha de fer front al rebuig que sent en <a href="/season/5">Hank</a> per la seva discapacitat.'),
(36, 36, 4, 'Dia de protes obertes', 'En <a href="/season/1">Walt</a> està preocupat perquè en <a href="/season/8">Gus</a> manté el laboratori sota vigilància i perquè l''estat mental d''en <a href="/season/3">Jesse</a> és cada vegada més delicat. D''altra banda, la <a href="/season/2">Skyler</a> fa més pressió per comprar el túnel d''autorentat de cotxes, que servirà de tapadora per blanquejar diners.'),
(37, 37, 4, 'Esquemes', 'La <a href="/season/2">Skyler</a> s''inventa una història d''allò més elaborada per justificar la seva situació financera i en <a href="/season/1">Walt</a> s''inquieta en descobrir que en <a href="/season/1">Hank</a> ha obert una altra investigació. Per la seva banda, en <a href="/season/3">Jesse</a> només pot pensar a fer festes, fet que desperta la curiositat d''en <a href="/season/8">Gus</a>.'),
(38, 38, 4, 'Vigilant', 'En <a href="/season/1">Walt</a> creu que estan a punt d''assassinar el seu company i en <a href="/season/3">Jesse</a> i en <a href="/season/9">Mike</a> fan una sortida perillosa. D''altra banda, en <a href="/season/1">Walt</a> i la <a href="/season/2">Skyler</a> compren oficialment el túnel d''autorentat de cotxes i en <a href="/season/1">Hank</a> decideix tancar la investigació.'),
(39, 39, 4, 'Arraconat', 'Quan la <a href="/season/2">Skyler</a> sospita que en <a href="/season/1">Walt</a> no li diu la veritat, pren una actitud freda i purament professional cap a ell. Mentrestant, en <a href="/season/8">Gusz/a> s''acosta a en <a href="/season/3">Jesse</a>, que demostra que és un home de vàlua per a en <a href="/season/9">Mike</a> i per a l''empresa d''en <a href="/season/8">Gus</a>.'),
(40, 40, 4, 'Un gos problemàtic', 'Amb la nova operació, en <a href="/season/1">Walt</a> col•loca a la <a href="/season/2">Skyler</a> en una situació difícil, i mentre en <a href="/season/1">Walt</a> mira de protegir-se d''en <a href="/season/8">Gus</a>, en <a href="/season/3">Jesse</a> accepta una proposició perillosa.'),
(41, 41, 4, 'Germans', 'Mentre en <a href="/season/5">Hank</a> mostra indicis que en <a href="/season/8">Gus</a> és l''element central del tràfic de metadona d''Alburquerque, en <a href="/season/1">Walt</a> creu que l''assassinaran, i també a en <a href="/season/3">Jesse</a>, per protegir el seu cap. Per la seva banda, en <a href="/season/8">Gus</a> refusa l''exigència del càrtel mexicà d''aturar les seves activitats com a narcotraficant i contraataca.'),
(42, 42, 4, 'Error', ''),
(43, 43, 4, 'Salut', ''),
(44, 44, 4, 'Espai del arrastre', ''),
(45, 45, 4, 'Final dels temps', ''),
(46, 46, 4, 'Final dels temps', ''),
(47, 47, 5, 'Viure lliure o morir', ''),
(48, 48, 5, 'Madrigal', ''),
(49, 49, 5, 'Hazard Pay', ''),
(50, 50, 5, 'Cinquanta-u', ''),
(51, 51, 5, 'Pes mort', ''),
(52, 52, 5, 'Buyout', ''),
(53, 53, 5, 'Del meu nom (FKA totam guanya)', ''),
(54, 54, 5, 'Desplaçant-se per sobre', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL DEFAULT 'node',
  `title` tinytext,
  `description` text,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preguntas frecuentes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq_lang`
--

DROP TABLE IF EXISTS `faq_lang`;
CREATE TABLE IF NOT EXISTS `faq_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE IF NOT EXISTS `feed` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `url` tinytext,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scope` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `html` text NOT NULL,
  `image` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `scope` (`scope`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log de eventos' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `feed`
--

INSERT INTO `feed` (`id`, `title`, `url`, `datetime`, `scope`, `type`, `html`, `image`) VALUES
(1, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2012-11-11 12:50:47', 'admin', 'admin', 'El admin <a href="/user/profile/carlos" class="blue" target="_blank">carlos</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/1" class="grey" target="_blank">Primer blog</a>"', NULL),
(2, 'Primer blog', '/blog/1', '2012-11-11 12:50:47', 'public', 'goteo', '<p>\r\n	yeah</p>', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary`
--

DROP TABLE IF EXISTS `glossary`;
CREATE TABLE IF NOT EXISTS `glossary` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `legend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entradas para el glosario' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary_image`
--

DROP TABLE IF EXISTS `glossary_image`;
CREATE TABLE IF NOT EXISTS `glossary_image` (
  `glossary` bigint(20) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`glossary`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary_lang`
--

DROP TABLE IF EXISTS `glossary_lang`;
CREATE TABLE IF NOT EXISTS `glossary_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` longtext,
  `legend` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icon`
--

DROP TABLE IF EXISTS `icon`;
CREATE TABLE IF NOT EXISTS `icon` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` tinytext,
  `group` varchar(50) DEFAULT NULL COMMENT 'exclusivo para grupo',
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Iconos para retorno/recompensa';

--
-- Volcado de datos para la tabla `icon`
--

INSERT INTO `icon` (`id`, `name`, `description`, `group`, `order`) VALUES
('code', 'Código fuente', 'Por código fuente entendemos programas y software en general.', 'social', 0),
('design', 'Diseño', 'Los diseños pueden ser de planos o patrones, esquemas, esbozos, diagramas de flujo, etc.', 'social', 0),
('file', 'Archivos digitales', 'Los archivos digitales pueden ser de música, vídeo, documentos de texto, etc.', '', 0),
('manual', 'Manuales', 'Documentos prácticos detallando pasos, materiales formativos, bussiness plans, “how tos”, recetas, etc.', 'social', 0),
('money', 'Dinero', 'Retornos económicos proporcionales a la inversión realizada, que se deben detallar en cantidad pero también forma de pago.', 'individual', 50),
('other', 'Otro', 'Sorpréndenos con esta nueva tipología, realmente nos interesa :) ', '', 99),
('product', 'Producto', 'Los productos pueden ser los que se han producido, en edición limitada, o fragmentos u obras derivadas del original.', 'individual', 0),
('service', 'Servicios', 'Acciones y/o sesiones durante tiempo determinado para satisfacer una necesidad individual o de grupo: una formación, una ayuda técnica, un asesoramiento, etc.', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icon_lang`
--

DROP TABLE IF EXISTS `icon_lang`;
CREATE TABLE IF NOT EXISTS `icon_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `icon_lang`
--

INSERT INTO `icon_lang` (`id`, `lang`, `name`, `description`) VALUES
('code', 'ca', 'Codi font', 'Per codi font entenem programes i programari en general.'),
('code', 'en', 'Source code', 'By source code, we mean programs and software in general.'),
('design', 'ca', 'Disseny', 'Els dissenys poden ser de plànols o patrons, esquemes, esbossos, diagrames de flux, etc.'),
('design', 'en', 'Design', 'Designs can be drawings, patterns, sketches, rough drafts, flowcharts, etc.'),
('file', 'ca', 'Arxius digitals', 'Els arxius digitals poden ser de música, vídeo, documents de text, etc.'),
('file', 'en', 'Digital files', 'Digital files may be music, video, text documents, etc.'),
('manual', 'ca', 'Manuals', 'Documents pràctics detallant passos, materials formatius, plans de negoci, “how tos”, receptes, etc.'),
('manual', 'en', 'Manuals', 'Practical documentation that details step-by-step instructions, tutorials, business plans, how-to''s, code cookbooks, etc. '),
('money', 'ca', 'Diners', 'Retorns econòmics proporcionals a la inversió realitzada, que s''han de detallar en quantitat però també forma de pagament.'),
('money', 'en', 'Money', 'Economic benefits that are proportional to the investment made, with details about quantity and also form of payment'),
('other', 'ca', 'Altres', 'Sorprèn-nos amb aquesta nova tipologia, realment ens interessa :) '),
('other', 'en', 'Other', 'Surprise us with this category, we''re really interested!'),
('product', 'ca', 'Producte', 'Els productes poden ser els que s''han produït, en edició limitada, o fragments o obres derivades de l''original.'),
('product', 'en', 'Product', 'Products can be limited editions or prototypes, or pieces or works derived from the original.'),
('service', 'ca', 'Serveis', 'Accions i/o sessions durant temps determinat per satisfer una necessitat individual o de grup: una formació, una ajuda tècnica, un assessorament, etc.'),
('service', 'en', 'Services', 'Actions or sessions during a specific period of time which satisfy an individual or group need: education, technical assistance, advice, etc. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icon_license`
--

DROP TABLE IF EXISTS `icon_license`;
CREATE TABLE IF NOT EXISTS `icon_license` (
  `icon` varchar(50) NOT NULL,
  `license` varchar(50) NOT NULL,
  UNIQUE KEY `icon` (`icon`,`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Licencias para cada icono, solo social';

--
-- Volcado de datos para la tabla `icon_license`
--

INSERT INTO `icon_license` (`icon`, `license`) VALUES
('code', 'agpl'),
('code', 'apache'),
('code', 'balloon'),
('code', 'bsd'),
('code', 'gpl'),
('code', 'gpl2'),
('code', 'lgpl'),
('code', 'mit'),
('code', 'mpl'),
('code', 'odbl'),
('code', 'odcby'),
('code', 'oshw'),
('code', 'pd'),
('code', 'php'),
('code', 'tapr'),
('code', 'xoln'),
('design', 'balloon'),
('design', 'cc0'),
('design', 'ccby'),
('design', 'ccbync'),
('design', 'ccbyncnd'),
('design', 'ccbyncsa'),
('design', 'ccbynd'),
('design', 'ccbysa'),
('design', 'fal'),
('design', 'fdl'),
('design', 'gpl'),
('design', 'gpl2'),
('design', 'oshw'),
('design', 'pd'),
('design', 'tapr'),
('file', 'cc0'),
('file', 'ccby'),
('file', 'ccbync'),
('file', 'ccbyncnd'),
('file', 'ccbyncsa'),
('file', 'ccbynd'),
('file', 'ccbysa'),
('file', 'fal'),
('manual', 'cc0'),
('manual', 'ccby'),
('manual', 'ccbync'),
('manual', 'ccbyncnd'),
('manual', 'ccbyncsa'),
('manual', 'ccbynd'),
('manual', 'ccbysa'),
('manual', 'fal'),
('manual', 'fdl'),
('manual', 'freebsd'),
('manual', 'pd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id`, `name`, `type`, `size`) VALUES
(1, 'avatar.png', 'image/png', 1469);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '1',
  `legend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entradas about' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_image`
--

DROP TABLE IF EXISTS `info_image`;
CREATE TABLE IF NOT EXISTS `info_image` (
  `info` bigint(20) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`info`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_lang`
--

DROP TABLE IF EXISTS `info_lang`;
CREATE TABLE IF NOT EXISTS `info_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` longtext,
  `legend` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invest`
--

DROP TABLE IF EXISTS `invest`;
CREATE TABLE IF NOT EXISTS `invest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `account` varchar(256) NOT NULL COMMENT 'Solo para aportes de cash',
  `amount` int(6) NOT NULL,
  `status` int(1) NOT NULL COMMENT '-1 en proceso, 0 pendiente, 1 cobrado, 2 devuelto, 3 pagado al proyecto',
  `anonymous` tinyint(1) DEFAULT NULL,
  `resign` tinyint(1) DEFAULT NULL,
  `invested` date DEFAULT NULL,
  `charged` date DEFAULT NULL,
  `returned` date DEFAULT NULL,
  `preapproval` varchar(256) DEFAULT NULL COMMENT 'PreapprovalKey',
  `payment` varchar(256) DEFAULT NULL COMMENT 'PayKey',
  `transaction` varchar(256) DEFAULT NULL COMMENT 'PaypalId',
  `method` varchar(20) NOT NULL COMMENT 'Metodo de pago',
  `admin` varchar(50) DEFAULT NULL COMMENT 'Admin que creó el aporte manual',
  `campaign` bigint(20) unsigned DEFAULT NULL COMMENT 'campaña de la que forma parte este dinero',
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Aportes monetarios a proyectos' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invest_address`
--

DROP TABLE IF EXISTS `invest_address`;
CREATE TABLE IF NOT EXISTS `invest_address` (
  `invest` bigint(20) unsigned NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nif` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`invest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dirección de entrega de recompensa';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invest_reward`
--

DROP TABLE IF EXISTS `invest_reward`;
CREATE TABLE IF NOT EXISTS `invest_reward` (
  `invest` bigint(20) unsigned NOT NULL,
  `reward` bigint(20) unsigned NOT NULL,
  `fulfilled` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `invest` (`invest`,`reward`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Recompensas elegidas al aportar';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE IF NOT EXISTS `lang` (
  `id` varchar(2) NOT NULL COMMENT 'Código ISO-639',
  `name` varchar(20) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `short` varchar(10) DEFAULT NULL,
  `locale` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Idiomas';

--
-- Volcado de datos para la tabla `lang`
--

INSERT INTO `lang` (`id`, `name`, `active`, `short`, `locale`) VALUES
('ca', 'Català', 1, 'CAT', 'ca_ES'),
('de', 'Deutsch', 0, NULL, NULL),
('en', 'English', 0, 'ENG', 'en_GB'),
('es', 'Español', 0, 'ES', 'es_ES'),
('eu', 'Euskara', 0, 'EUSK', 'eu_ES'),
('fr', 'Français', 0, NULL, NULL),
('gl', 'Galego', 0, NULL, NULL),
('it', 'Italiano', 0, 'ITA', 'it_IT'),
('pt', 'Português', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `license`
--

DROP TABLE IF EXISTS `license`;
CREATE TABLE IF NOT EXISTS `license` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` tinytext,
  `group` varchar(50) DEFAULT NULL COMMENT 'grupo de restriccion de menor a mayor',
  `url` varchar(256) DEFAULT NULL,
  `order` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Licencias de distribucion';

--
-- Volcado de datos para la tabla `license`
--

INSERT INTO `license` (`id`, `name`, `description`, `group`, `url`, `order`) VALUES
('agpl', 'Affero General Public License', 'Licencia pública general de Affero para software libre que corra en servidores de red', '', 'http://www.affero.org/oagf.html', 2),
('apache', 'Apache License', 'Licencia Apache de software libre, que no exige que las obras derivadas se distribuyan usando la misma licencia ni como software libre', '', 'http://www.apache.org/licenses/LICENSE-2.0', 10),
('balloon', 'Balloon Open Hardware License', 'Licencia para hardware libre de los procesadores Balloon', '', 'http://balloonboard.org/licence.html', 20),
('bsd', 'Berkeley Software Distribution', 'Licencia de software libre permisiva, con pocas restricciones y que permite el uso del código fuente en software no libre', 'open', 'http://es.wikipedia.org/wiki/Licencia_BSD', 5),
('cc0', 'CC0 Universal (Dominio Público)', 'Licencia Creative Commons de obra dedicada al dominio público, mediante renuncia a todos los derechos de autoría sobre la misma', '', 'http://creativecommons.org/publicdomain/zero/1.0/deed.es', 25),
('ccby', 'CC - Reconocimiento', 'Licencia Creative Commons (bienes comunes creativos) con reconocimiento de autoría', 'open', 'http://creativecommons.org/licenses/by/2.0/deed.es_ES', 12),
('ccbync', 'CC - Reconocimiento - NoComercial', 'Licencia Creative Commons (bienes comunes creativos) con reconocimiento de autoría y sin que se pueda hacer uso comercial', '', 'http://creativecommons.org/licenses/by-nc/2.0/deed.es_ES', 13),
('ccbyncnd', 'CC - Reconocimiento - NoComercial - SinObraDerivada', 'Licencia Creative Commons (bienes comunes creativos) con reconocimiento de autoría, sin que se pueda hacer uso comercial ni otras obras derivadas', '', 'http://creativecommons.org/licenses/by-nc-nd/2.0/deed.es_ES', 15),
('ccbyncsa', 'CC - Reconocimiento - NoComercial - CompartirIgual', 'Licencia Creative Commons (bienes comunes creativos) con reconocimiento de autoría, sin que se pueda hacer uso comercial y a compartir en idénticas condiciones', '', 'http://creativecommons.org/licenses/by-nc-sa/3.0/deed.es_ES', 14),
('ccbynd', 'CC - Reconocimiento - SinObraDerivada', 'Licencia Creative Commons (bienes comunes creativos) con reconocimiento de autoría, sin que se puedan hacer obras derivadas ', '', 'http://creativecommons.org/licenses/by-nd/2.0/deed.es_ES', 17),
('ccbysa', 'CC - Reconocimiento - CompartirIgual', 'Licencia Creative Commons (bienes comunes creativos) con reconocimiento de autoría y a compartir en idénticas condiciones', 'open', 'http://creativecommons.org/licenses/by-sa/2.0/deed.es_ES', 16),
('fal', 'Free Art License', 'Licencia de arte libre', '', 'http://artlibre.org/licence/lal/es', 11),
('fdl', 'Free Documentation License ', 'Licencia de documentación libre de GNU, pudiendo ser ésta copiada, redistribuida, modificada e incluso vendida siempre y cuando se mantenga bajo los términos de esa misma licencia', 'open', 'http://www.gnu.org/copyleft/fdl.html', 4),
('freebsd', 'FreeBSD Documentation License', 'Licencia de documentación libre para el sistema operativo FreeBSD', 'open', 'http://www.freebsd.org/copyright/freebsd-doc-license.html', 6),
('gpl', 'General Public License', 'Licencia Pública General de GNU para la libre distribución, modificación y uso de software', 'open', 'http://www.gnu.org/licenses/gpl.html', 1),
('gpl2', 'General Public License (v.2)', 'Licencia Pública General de GNU para la libre distribución, modificación y uso de software', 'open', 'http://www.gnu.org/licenses/gpl-2.0.html', 1),
('lgpl', 'Lesser General Public License', 'Licencia Pública General Reducida de GNU, para software libre que puede ser utilizado por un programa no-GPL, que a su vez puede ser software libre o no', 'open', 'http://www.gnu.org/copyleft/lesser.html', 3),
('mit', 'MIT / X11 License', 'Licencia tanto para software libre como para software no libre, que permite no liberar los cambios realizados sobre el programa original', '', 'http://es.wikipedia.org/wiki/MIT_License', 8),
('mpl', 'Mozilla Public License', 'Licencia pública de Mozilla de software libre, que posibilita la reutilización no libre del software, sin restringir la reutilización del código ni el relicenciamiento bajo la misma licencia', '', 'http://www.mozilla.org/MPL/', 7),
('odbl', 'Open Database License ', 'Licencia de base de datos abierta, que permite compartir, modificar y utilizar bases de datos en idénticas condiciones', 'open', 'http://www.opendatacommons.org/licenses/odbl/', 22),
('odcby', 'Open Data Commons Attribution License', 'Licencia de datos abierta, que permite compartir, modificar y utilizar los datos en idénticas condiciones atribuyendo la fuente original', 'open', 'http://www.opendatacommons.org/licenses/by/', 23),
('oshw', 'Open Hardware License', 'Licencia para obras de hardware libre', 'open', 'http://www.tapr.org/OHL', 18),
('pd', 'Dominio público', 'La obra puede ser libremente reproducida, distribuida, transmitida, usada, modificada, editada u objeto de cualquier otra forma de explotación para el propósito que sea, comercial o no', '', 'http://creativecommons.org/licenses/publicdomain/deed.es', 24),
('php', 'PHP License', 'Licencia bajo la que se publica el lenguaje de programación PHP', '', 'http://www.php.net/license/', 9),
('tapr', 'TAPR Noncommercial Hardware License', 'Licencia para obras de hardware libre con limitación en su comercialización ', '', 'http://www.tapr.org/NCL.html', 19),
('xoln', 'Procomún de la XOLN', 'Licencia de red abierta, libre y neutral, como acuerdo de interconexión entre iguales promovido por Guifi.net', 'open', 'http://guifi.net/es/ProcomunXOLN', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `license_lang`
--

DROP TABLE IF EXISTS `license_lang`;
CREATE TABLE IF NOT EXISTS `license_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  `url` varchar(256) DEFAULT NULL,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `license_lang`
--

INSERT INTO `license_lang` (`id`, `lang`, `name`, `description`, `url`) VALUES
('agpl', 'ca', 'Affero General Public License', 'Llicència pública general d''Affero per a programari lliure que corri en servidors de xarxa', 'http://www.affero.org/oagf.html'),
('agpl', 'en', 'Affero General Public License', 'Affero General Public License for open networked software', 'http://www.affero.org/oagf.html'),
('apache', 'ca', 'Apache License', 'Llicencia Apatxe de programari lliure, que no exigeix que les obres derivades es distribueixin usant la mateixa llicència ni com a programari lliure', 'http://www.apache.org/licenses/LICENSE-2.0'),
('apache', 'en', 'Apache License', 'Apache License for open software, that does not require that derivative works be distributed with the same license, or even as open software', 'http://www.apache.org/licenses/LICENSE-2.0'),
('balloon', 'ca', 'Balloon Open Hardware License', 'Llicència per a maquinari lliure dels processadors Balloon', 'http://balloonboard.org/licence.html'),
('balloon', 'en', 'Balloon Open Hardware License', 'License for open Balloon boards', 'http://balloonboard.org/licence.html'),
('bsd', 'ca', 'Berkeley Software Distribution', 'Llicència de programari lliure permissiva, amb poques restriccions i que permet l''ús del codi font en programari no lliure', 'http://es.wikipedia.org/wiki/Licencia_BSD'),
('bsd', 'en', 'Berkeley Software Distribution Licenses', 'Permissive free software licenses, with few restrictions, that permit the use of source code in non-free software', 'http://en.wikipedia.org/wiki/BSD_licenses'),
('cc0', 'ca', 'CC0 Universal (Domini Públic)', 'Llicència Creative Commons d''obra dedicada al domini públic, mitjançant renúncia a tots els drets d''autoria sobre la mateixa', 'http://creativecommons.org/publicdomain/zero/1.0/deed.ca'),
('cc0', 'en', 'CC0 Universal (Public Domain)', 'Creative Commons License for works dedicated to the public domain, by which all intellectual property rights over a work are waived', 'http://creativecommons.org/publicdomain/zero/1.0/deed.en'),
('ccby', 'ca', 'CC - Reconeixement', 'Llicència Creative Commons (béns comuns creatius) amb reconeixement d''autoria', 'http://creativecommons.org/licenses/by/2.0/deed.ca'),
('ccby', 'en', 'CC - Attribution', 'Creative Commons License with attribution', 'http://creativecommons.org/licenses/by/2.0/deed.en'),
('ccbync', 'ca', 'CC - Reconeixement - NoComercial', 'Llicència Creative Commons (béns comuns creatius) amb reconeixement d''autoria i sense que es pugui fer ús comercial', 'http://creativecommons.org/licenses/by-nc/2.0/deed.ca'),
('ccbync', 'en', 'CC - Attribution-NonCommercial', 'Creative Commons License with attribution that does not permit commercial use', 'http://creativecommons.org/licenses/by-nc/2.0/deed.en'),
('ccbyncnd', 'ca', 'CC - Reconeixement - NoComercial - SenseObraDerivada', 'Llicència Creative Commons (béns comuns creatius) amb reconeixement d''autoria, sense que es pugui fer ús comercial ni altres obres derivades', 'http://creativecommons.org/licenses/by-nc-nd/2.0/deed.ca'),
('ccbyncnd', 'en', 'CC - Attribution  - NonCommercial - NoDerivs', 'Creative Commons License with attribution, that does not allow commercial use nor derivative works', 'http://creativecommons.org/licenses/by-nc-nd/2.0/deed.en'),
('ccbyncsa', 'ca', 'CC - Reconeixement - NoComercial - CompartirIgual', 'Llicència Creative Commons (béns comuns creatius) amb reconeixement d''autoria, sense que es pugui fer ús comercial i a compartir en idèntiques condicions', 'http://creativecommons.org/licenses/by-nc-sa/3.0/deed.ca'),
('ccbyncsa', 'en', 'CC - Attribution - NonCommercial - ShareAlike', 'Creative Commons License with attribution, that does not allow commercial use, and only allows sharing under identical licensing conditions', 'http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en'),
('ccbynd', 'ca', 'CC - Reconeixement - SenseObraDerivada', 'Llicència Creative Commons (béns comuns creatius) amb reconeixement d''autoria, sense que s''en puguin fer obres derivades ', 'http://creativecommons.org/licenses/by-nd/2.0/deed.ca'),
('ccbynd', 'en', 'CC - Attribution - NoDerivs', 'Creative Commons License with attribution that does not allow derivative works', 'http://creativecommons.org/licenses/by-nd/2.0/deed.en'),
('ccbysa', 'ca', 'CC - Reconeixement - CompartirIgual', 'Llicència Creative Commons (béns comuns creatius) amb reconeixement d''autoria i a compartir en idèntiques condicions', 'http://creativecommons.org/licenses/by-sa/2.0/deed.ca'),
('ccbysa', 'en', 'CC - Attribution - ShareAlike', 'Creative Commons License with attribution that only allows sharing under identical licensing conditions', 'http://creativecommons.org/licenses/by-sa/2.0/deed.en'),
('fal', 'ca', 'Free Art License', 'Llicència d''art lliure', 'http://artlibre.org/licence/lal/es'),
('fal', 'en', 'Free Art License', 'Free art license', 'http://artlibre.org/licence/lal/en'),
('fdl', 'ca', 'Free Documentation License ', 'Llicència de documentació lliure de GNU, podent ser aquesta copiada, redistribuïda, modificada i fins i tot venuda sempre que es mantingui sota els termes d''aquesta mateixa llicència', 'http://www.gnu.org/copyleft/fdl.html'),
('fdl', 'en', 'Free Documentation License ', 'GNU free documentation license, which can be copied, redistributed, modified and even sold, as long as the original terms of this same license are maintained.', 'http://www.gnu.org/copyleft/fdl.html'),
('freebsd', 'ca', 'FreeBSD Documentation License', 'Llicència de documentació lliure per al sistema operatiu FreeBSD', 'http://www.freebsd.org/copyright/freebsd-doc-license.html'),
('freebsd', 'en', 'FreeBSD Documentation License', 'Free Documentation License for the FreeBSD operating system', 'http://www.freebsd.org/copyright/freebsd-doc-license.html'),
('gpl', 'ca', 'General Public License', 'Llicència Pública General de GNU per a la lliure distribució, modificació i ús de programari', 'http://www.gnu.org/licenses/gpl.html'),
('gpl', 'en', 'General Public License', 'GNU General Public License for the free distribution, modification, and use of software', 'http://www.gnu.org/licenses/gpl.html'),
('gpl2', 'ca', 'General Public License (v.2)', 'Llicència Pública General de GNU per a la lliure distribució, modificació i ús de programari', 'http://www.gnu.org/licenses/gpl-2.0.html'),
('gpl2', 'en', 'General Public License (v.2)', 'GNU General Public License for the free distribution, modification, and use of software', 'http://www.gnu.org/licenses/gpl-2.0.html'),
('lgpl', 'ca', 'Lesser General Public License', 'Llicència Pública General Reduïda de GNU, per a programari lliure que pot ser utilitzat per un programa no-GPL, que al seu torn pot ser programari lliure o no', 'http://www.gnu.org/copyleft/lesser.html'),
('lgpl', 'en', 'Lesser General Public License', 'GNU Lesser General Public License for free software that can be used by a non-GPL program, which in turn can be free software or not. ', 'http://www.gnu.org/copyleft/lesser.html'),
('mit', 'ca', 'MIT / X11 License', 'Llicència tant per a programari lliure com per a programari no lliure, que permet no alliberar els canvis realitzats sobre el programa original', 'http://ca.wikipedia.org/wiki/Llic%C3%A8ncia_X11'),
('mit', 'en', 'MIT / X11 License', 'License both for open and closed software, that allows changes made to the original program to be protected', 'http://es.wikipedia.org/wiki/MIT_License'),
('mpl', 'ca', 'Mozilla Public License', 'Llicència pública de Mozilla de programari lliure, que possibilita la reutilització no lliure del programari, sense restringir-ne la reutilització del codi ni el rellicenciament sota la mateixa llicència', 'http://www.mozilla.org/MPL/'),
('mpl', 'en', 'Mozilla Public License', 'Mozilla Public License for open software that makes possible the non-open reuse of software, without restricting the reuse of the code or the relicensing under the same license. ', 'http://www.mozilla.org/MPL/'),
('odbl', 'ca', 'Open Database License ', 'Llicència de base de dades oberta, que permet compartir, modificar i utilitzar bases de dades en idèntiques condicions', 'http://www.opendatacommons.org/licenses/odbl/'),
('odbl', 'en', 'Open Database License ', 'Open Database License that allows for sharing, modifying, and using databases in identical conditions', 'http://www.opendatacommons.org/licenses/odbl/'),
('odcby', 'ca', 'Open Data Commons Attribution License', 'Llicència de dades oberta, que permet compartir, modificar i utilitzar les dades en idèntiques condicions atribuint-hi la font original', 'http://www.opendatacommons.org/licenses/by/'),
('odcby', 'en', 'Open Data Commons Attribution License', 'Open data license that allows for sharing, modifying and using data under identical conditions, as long as attribution is given for the original source', 'http://www.opendatacommons.org/licenses/by/'),
('oshw', 'ca', 'Open Hardware License', 'Llicència per a obres de maquinari lliure', 'http://www.tapr.org/OHL'),
('oshw', 'en', 'Open Hardware License', 'Open Hardware License', 'http://www.tapr.org/OHL'),
('pd', 'ca', 'Domini públic', 'L''obra pot ser lliurement reproduïda, distribuïda, transmesa, usada, modificada, editada o objecte de qualsevol altra forma d''explotació per al propòsit que sigui, comercial o no', 'http://creativecommons.org/licenses/publicdomain/deed.ca'),
('pd', 'en', 'Public Domain', 'The work may be freely reproduced, distributed, transmitted, used, modified, edited, or subject to any other form of exploitation for any commerical or non-commercial use.', 'http://creativecommons.org/licenses/publicdomain/deed.en'),
('php', 'ca', 'PHP License', 'Llicència sota la que es publica el llenguatge de programació PHP', 'http://www.php.net/license/'),
('php', 'en', 'PHP License', 'License under which the PHP programming language is published', 'http://www.php.net/license/'),
('tapr', 'ca', 'TAPR Noncommercial Hardware License', 'Llicència per a obres de maquinari lliure amb limitació en la seva comercialització ', 'http://www.tapr.org/NCL.html'),
('tapr', 'en', 'TAPR Noncommercial Hardware License', 'TAPR Noncommercial Hardware License', 'http://www.tapr.org/NCL.html'),
('xoln', 'ca', 'Procomú de la XOLN', 'Llicència de xarxa oberta, lliure i neutral, com a acord d''interconnexió entre iguals promogut per Guifi.net', 'http://guifi.net/es/ProcomunXOLN'),
('xoln', 'en', 'XOLN Common Good License', 'License for an open, free, neutral network, as an agreement of interconnection among equals, promoted by Guifi.net ', 'http://guifi.net/es/ProcomunXOLN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` tinytext NOT NULL,
  `html` longtext NOT NULL,
  `template` int(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contenido enviado por email para el -si no ves-' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `thread` bigint(20) unsigned DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'No se puede modificar ni borrar',
  `closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'No se puede responder',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mensajes de usuarios en proyecto' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_lang`
--

DROP TABLE IF EXISTS `message_lang`;
CREATE TABLE IF NOT EXISTS `message_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `message` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `description` text COMMENT 'Entradilla',
  `url` tinytext NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Noticias en la cabecera' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news_lang`
--

DROP TABLE IF EXISTS `news_lang`;
CREATE TABLE IF NOT EXISTS `news_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  `url` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `node`
--

DROP TABLE IF EXISTS `node`;
CREATE TABLE IF NOT EXISTS `node` (
  `id` varchar(50) NOT NULL,
  `name` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Nodos';

--
-- Volcado de datos para la tabla `node`
--

INSERT INTO `node` (`id`, `name`, `active`) VALUES
('goteo', 'Master node', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` varchar(50) NOT NULL,
  `name` tinytext NOT NULL,
  `description` text,
  `url` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Páginas institucionales';

--
-- Volcado de datos para la tabla `page`
--

INSERT INTO `page` (`id`, `name`, `description`, `url`) VALUES
('about', 'Sobre Goteo', 'Sobre Goteo', '/about'),
('campaign', 'Servicio Campañas', 'Si tu proyecto necesita una <span class="greenblue"> campaña a medida</span>, hablemos ', '/service/campaign'),
('community', 'Comunidad Goteo', 'Bienvenido/a al <span class="greenblue">río</span>. Desde aquí se puede seguir cómo fluye la actividad de Goteo.', '/community'),
('consulting', 'Servicio Consultoría', 'La Fundación <span class="greenblue">Fuentes Abiertas</span> te enseña los beneficios de las nuevas tecnologías distribuidas', '/service/consulting'),
('contact', 'Contacto', 'Pagina de contacto', '/contact'),
('credits', 'Agraïments', ' <span class="greenblue">Recolzaments i col·laboracions</span>', '/about/credits'),
('dashboard', 'Bienvenida', 'Texto de bienvenida en el dashboard', '/dashboard'),
('howto', 'Instrucciones para ser productor/a', '4 condiciones y <br /><span class="red">2 requisitos</span> para proponer un proyecto', '/about/howto'),
('legal', 'Legales', 'Términos legales de Goteo', '/about/legal'),
('news', 'Noticias', 'Pagina de noticias', '/news'),
('press', 'Press kit', 'Kit de prensa', '/press'),
('privacy', 'Política de privacidad', 'Política de privacidad', '/legal/privacy'),
('resources', 'FEEDER CAPITAL', 'A <span class="greenblue">Feeder Capital</span> social investment market with contributions from public institutions, business and other private institutions, and individuals.', '/service/resources'),
('service', 'Servicios', 'General de servicios', '/service'),
('team', 'Equipo', 'Sobre la gente que impulsa Goteo', '/about/team'),
('terms', 'Condiciones de uso', 'Reglas del juego para el <span class="greenblue">buen funcionamiento</span> <br>de la <span class="greenblue">comunidad Goteo</span>', '/legal/terms'),
('workshop', 'Tallers de finançament col·lectiu', 'Apliquem pràctiques d''<span class="greenblue">innovació social</span>.\r\n<br />Com obrir <span class="greenblue">i compartir recursos</span> al voltant del crowdfunding', '/service/workshop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_lang`
--

DROP TABLE IF EXISTS `page_lang`;
CREATE TABLE IF NOT EXISTS `page_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext NOT NULL,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_node`
--

DROP TABLE IF EXISTS `page_node`;
CREATE TABLE IF NOT EXISTS `page_node` (
  `page` varchar(50) NOT NULL,
  `node` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `content` longtext,
  UNIQUE KEY `page` (`page`,`node`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contenidos de las paginas';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog` bigint(20) unsigned NOT NULL,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `image` int(10) DEFAULT NULL,
  `date` date NOT NULL COMMENT 'fehca de publicacion',
  `order` int(11) DEFAULT '1',
  `allow` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Permite comentarios',
  `home` tinyint(1) DEFAULT '0' COMMENT 'para los de portada',
  `footer` tinyint(1) DEFAULT '0' COMMENT 'Para los del footer',
  `publish` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Publicado',
  `legend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Entradas para la portada' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `blog`, `title`, `text`, `media`, `image`, `date`, `order`, `allow`, `home`, `footer`, `publish`, `legend`) VALUES
(1, 1, 'Primer blog', '<p>\r\n	yeah</p>\r\n', '', NULL, '2012-11-11', 1, 1, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_image`
--

DROP TABLE IF EXISTS `post_image`;
CREATE TABLE IF NOT EXISTS `post_image` (
  `post` bigint(20) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_lang`
--

DROP TABLE IF EXISTS `post_lang`;
CREATE TABLE IF NOT EXISTS `post_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` longtext,
  `legend` text,
  `media` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE IF NOT EXISTS `post_tag` (
  `post` bigint(20) unsigned NOT NULL,
  `tag` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`post`,`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tags de las entradas';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` varchar(50) NOT NULL,
  `name` tinytext,
  `subtitle` tinytext,
  `lang` varchar(2) DEFAULT 'es',
  `status` int(1) NOT NULL,
  `translate` int(1) NOT NULL DEFAULT '0',
  `progress` int(3) NOT NULL,
  `owner` varchar(50) NOT NULL COMMENT 'usuario que lo ha creado',
  `node` varchar(50) NOT NULL COMMENT 'nodo en el que se ha creado',
  `amount` int(6) DEFAULT NULL COMMENT 'acumulado actualmente',
  `days` int(3) NOT NULL DEFAULT '0' COMMENT 'Dias restantes',
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `published` date DEFAULT NULL,
  `success` date DEFAULT NULL,
  `closed` date DEFAULT NULL,
  `passed` date DEFAULT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `contract_nif` varchar(15) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `phone` varchar(20) DEFAULT NULL COMMENT 'guardar talcual',
  `contract_email` varchar(255) DEFAULT NULL,
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` text,
  `motivation` text,
  `video` varchar(256) DEFAULT NULL,
  `video_usubs` int(1) NOT NULL DEFAULT '0',
  `about` text,
  `goal` text,
  `related` text,
  `category` varchar(50) DEFAULT NULL,
  `keywords` tinytext COMMENT 'Separadas por comas',
  `media` varchar(256) DEFAULT NULL,
  `media_usubs` int(1) NOT NULL DEFAULT '0',
  `currently` int(1) DEFAULT NULL,
  `project_location` varchar(256) DEFAULT NULL,
  `scope` int(1) DEFAULT NULL COMMENT 'Ambito de alcance',
  `resource` text,
  `comment` text COMMENT 'Comentario para los admin',
  `contract_entity` int(1) NOT NULL DEFAULT '0',
  `contract_birthdate` date DEFAULT NULL,
  `entity_office` varchar(255) DEFAULT NULL COMMENT 'Cargo del responsable',
  `entity_name` varchar(255) DEFAULT NULL,
  `entity_cif` varchar(10) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `post_address` tinytext,
  `secondary_address` int(11) NOT NULL DEFAULT '0',
  `post_zipcode` varchar(10) DEFAULT NULL,
  `post_location` varchar(255) DEFAULT NULL,
  `post_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proyectos de la plataforma';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_account`
--

DROP TABLE IF EXISTS `project_account`;
CREATE TABLE IF NOT EXISTS `project_account` (
  `project` varchar(50) NOT NULL,
  `bank` tinytext,
  `paypal` tinytext,
  PRIMARY KEY (`project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cuentas bancarias de proyecto';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_category`
--

DROP TABLE IF EXISTS `project_category`;
CREATE TABLE IF NOT EXISTS `project_category` (
  `project` varchar(50) NOT NULL,
  `category` int(12) NOT NULL,
  UNIQUE KEY `project_category` (`project`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Categorias de los proyectos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_image`
--

DROP TABLE IF EXISTS `project_image`;
CREATE TABLE IF NOT EXISTS `project_image` (
  `project` varchar(50) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_lang`
--

DROP TABLE IF EXISTS `project_lang`;
CREATE TABLE IF NOT EXISTS `project_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `description` text,
  `motivation` text,
  `video` varchar(256) DEFAULT NULL,
  `about` text,
  `goal` text,
  `related` text,
  `keywords` tinytext,
  `media` varchar(255) DEFAULT NULL,
  `subtitle` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promote`
--

DROP TABLE IF EXISTS `promote`;
CREATE TABLE IF NOT EXISTS `promote` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `title` tinytext,
  `description` text,
  `order` smallint(5) unsigned NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_node` (`node`,`project`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proyectos destacados' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promote_lang`
--

DROP TABLE IF EXISTS `promote_lang`;
CREATE TABLE IF NOT EXISTS `promote_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purpose`
--

DROP TABLE IF EXISTS `purpose`;
CREATE TABLE IF NOT EXISTS `purpose` (
  `text` varchar(50) NOT NULL,
  `purpose` text NOT NULL,
  `html` tinyint(1) DEFAULT NULL COMMENT 'Si el texto lleva formato html',
  `group` varchar(50) NOT NULL DEFAULT 'general' COMMENT 'Agrupacion de uso',
  PRIMARY KEY (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Explicación del propósito de los textos';

--
-- Volcado de datos para la tabla `purpose`
--

INSERT INTO `purpose` (`text`, `purpose`, `html`, `group`) VALUES
('blog-coments-header', 'Comentarios', NULL, 'blog'),
('blog-comments', 'Comentarios', NULL, 'general'),
('blog-comments_no_allowed', 'No se permiten comentarios en  esta entrada', NULL, 'blog'),
('blog-comments_no_comments', 'No hay comentarios en esta entrada', NULL, 'blog'),
('blog-main-header', 'Blog de Breaking Bad', NULL, 'general'),
('blog-no_comments', 'Sin comentarios', NULL, 'blog'),
('blog-no_posts', 'No se ha publicado ninguna entrada ', NULL, 'blog'),
('blog-send_comment-button', 'Enviar', NULL, 'blog'),
('blog-send_comment-header', 'Escribe tu comentario', NULL, 'blog'),
('blog-side-last_comments', 'Últimos comentarios', NULL, 'blog'),
('blog-side-last_posts', 'Últimas entradas', NULL, 'blog'),
('blog-side-tags', 'Categorías', NULL, 'blog'),
('community-menu-activity', 'Actividad', NULL, 'menu'),
('community-menu-main', 'Comunidad', NULL, 'menu'),
('community-menu-sharemates', 'Compartiendo', NULL, 'menu'),
('contact-email-field', 'Email', NULL, 'contact'),
('contact-message-field', 'Mensaje', NULL, 'contact'),
('contact-send_message-button', 'Enviar', NULL, 'contact'),
('contact-send_message-header', 'Envíanos un mensaje', NULL, 'contact'),
('contact-subject-field', 'Asunto', NULL, 'contact'),
('cost-type-lend', 'Préstamo', NULL, 'costs'),
('cost-type-material', 'Material', NULL, 'costs'),
('cost-type-structure', 'Infraestructura', NULL, 'costs'),
('cost-type-task', 'Tarea', NULL, 'costs'),
('costs-field-amount', 'Valor', NULL, 'costs'),
('costs-field-cost', 'Coste', NULL, 'costs'),
('costs-field-dates', 'Fechas', NULL, 'costs'),
('costs-field-date_from', 'Desde', NULL, 'costs'),
('costs-field-date_until', 'Hasta', NULL, 'costs'),
('costs-field-description', 'Descripción', NULL, 'costs'),
('costs-field-required_cost', 'Este coste es', NULL, 'costs'),
('costs-field-required_cost-no', 'Adicional', NULL, 'costs'),
('costs-field-required_cost-yes', 'Imprescindible', NULL, 'costs'),
('costs-field-resoure', 'Otros recursos', NULL, 'costs'),
('costs-field-schedule', 'Agenda de trabajo', NULL, 'costs'),
('costs-field-type', 'Tipo', NULL, 'costs'),
('costs-fields-main-title', 'Desglose de costes', NULL, 'costs'),
('costs-fields-metter-title', 'Visualización de costes', NULL, 'costs'),
('costs-fields-resources-title', 'Recurso', NULL, 'costs'),
('costs-main-header', 'Aspectos económicos', NULL, 'costs'),
('criteria-owner-section-header', 'Respecto al creador/equipo', NULL, 'review'),
('criteria-project-section-header', 'Respecto al proyecto', NULL, 'review'),
('criteria-reward-section-header', 'Respecto al retorno', NULL, 'review'),
('dashboard-embed_code', 'CÓDIGO DIFUSIÓN SIMPLE', NULL, 'dashboard'),
('dashboard-embed_code_investor', 'CÓDIGO CON IMAGEN DE COFINANCIADOR', NULL, 'dashboard'),
('dashboard-header-main', 'Mi panel', NULL, 'dashboard'),
('dashboard-investors-mail-fail', 'Fallo al enviar el mensaje a %s: %s', NULL, 'dashboard'),
('dashboard-investors-mail-nowho', 'No se han encontrado destinatarios', NULL, 'dashboard'),
('dashboard-investors-mail-sended', 'Mensaje enviado correctamente a %s: %s', NULL, 'dashboard'),
('dashboard-investors-mail-sendto', 'Enviado a %s de tus cofinanciadores:', NULL, 'dashboard'),
('dashboard-investors-mail-text-required', 'Escribe el mensaje', NULL, 'dashboard'),
('dashboard-menu-activity', 'Mi actividad', NULL, 'dashboard'),
('dashboard-menu-activity-spread', 'Difusión', NULL, 'dashboard'),
('dashboard-menu-activity-summary', 'Resumen', NULL, 'dashboard'),
('dashboard-menu-activity-wall', 'Mi muro', NULL, 'dashboard'),
('dashboard-menu-admin_board', 'Administración', NULL, 'dashboard'),
('dashboard-menu-main', 'Mi panel', NULL, 'menu'),
('dashboard-menu-profile', 'Mi perfil', NULL, 'dashboard'),
('dashboard-menu-profile-access', 'Datos de acceso', NULL, 'dashboard'),
('dashboard-menu-profile-personal', 'Datos personales', NULL, 'dashboard'),
('dashboard-menu-profile-preferences', 'Preferencias', NULL, 'dashboard'),
('dashboard-menu-profile-profile', 'Editar perfil', NULL, 'dashboard'),
('dashboard-menu-profile-public', 'Perfil público', NULL, 'dashboard'),
('dashboard-menu-projects', 'Mis proyectos', NULL, 'dashboard'),
('dashboard-menu-projects-contract', 'Cuenta bancaria', NULL, 'dashboard'),
('dashboard-menu-projects-preview', 'Página pública', NULL, 'dashboard'),
('dashboard-menu-projects-rewards', 'Gestión cofinanciadores', NULL, 'dashboard'),
('dashboard-menu-projects-summary', 'Resumen', NULL, 'dashboard'),
('dashboard-menu-projects-supports', 'Colaboraciones', NULL, 'dashboard'),
('dashboard-menu-projects-updates', 'Novedades', NULL, 'dashboard'),
('dashboard-menu-projects-widgets', 'Widget', NULL, 'dashboard'),
('dashboard-menu-review_board', 'Revisión', NULL, 'dashboard'),
('dashboard-menu-translates', 'Mis Traducciones', NULL, 'dashboard'),
('dashboard-menu-translate_board', 'Traducción', NULL, 'dashboard'),
('dashboard-password-recover-advice', 'Asegúrate de reestablecer tu contraseña', NULL, 'dashboard'),
('dashboard-project-blog-fail', 'Contacta con nosotr*s', NULL, 'dashboard'),
('dashboard-project-blog-inactive', 'Lo sentimos, la publicación de novedades en este proyecto está desactivada', NULL, 'dashboard'),
('dashboard-project-blog-wrongstatus', 'Lo sentimos, aún no se pueden publicar novedades en este proyecto...', NULL, 'dashboard'),
('dashboard-project-delete_alert', '¿Seguro que deseas eliminar absoluta y definitivamente este proyecto?', NULL, 'dashboard'),
('dashboard-project-updates-deleted', 'Entrada eliminada', NULL, 'dashboard'),
('dashboard-project-updates-delete_fail', 'Error al eliminar la entrada', NULL, 'dashboard'),
('dashboard-project-updates-fail', 'Ha habido algun problema al guardar los datos', NULL, 'dashboard'),
('dashboard-project-updates-inserted', 'Se ha añadido una nueva entrada', NULL, 'dashboard'),
('dashboard-project-updates-noblog', 'No se ha encontrado ningún blog para este proyecto', NULL, 'dashboard'),
('dashboard-project-updates-nopost', 'No se ha encontrado la entrada', NULL, 'dashboard'),
('dashboard-project-updates-postcorrupt', 'La entrada está corrupta, contacta con nosotros', NULL, 'dashboard'),
('dashboard-project-updates-saved', 'La entrada se ha actualizado correctamente', NULL, 'dashboard'),
('discover-banner-header', 'Por categoría, lugar o retorno,<br /><span class="red">encuentra el proyecto</span> con el que más te identificas', 1, 'banners'),
('discover-group-all-header', 'En campaña', NULL, 'discover'),
('discover-group-archive-header', 'Archivados', NULL, 'discover'),
('discover-group-outdate-header', 'A punto de ser archivado', NULL, 'discover'),
('discover-group-popular-header', 'Más populares', NULL, 'discover'),
('discover-group-recent-header', 'Publicados recientemente', NULL, 'discover'),
('discover-group-success-header', 'Exitosos', NULL, 'discover'),
('discover-results-empty', 'No hemos encontrado ningún proyecto que cumpla los criterios de búsqueda', NULL, 'discover'),
('discover-results-header', 'Resultado de búsqueda', NULL, 'discover'),
('discover-searcher-button', 'Buscar', NULL, 'discover'),
('discover-searcher-bycategory-all', 'TODAS', NULL, 'discover'),
('discover-searcher-bycategory-header', 'Por categoría:', NULL, 'discover'),
('discover-searcher-bycontent-header', 'Por contenido:', NULL, 'discover'),
('discover-searcher-bylocation-all', 'TODOS', NULL, 'discover'),
('discover-searcher-bylocation-header', 'Por lugar:', NULL, 'discover'),
('discover-searcher-byreward-all', 'TODOS', NULL, 'discover'),
('discover-searcher-byreward-header', 'Por retorno:', NULL, 'discover'),
('discover-searcher-header', 'Busca un proyecto', NULL, 'discover'),
('error-contact-email-empty', 'No has añadido tu email', NULL, 'contact'),
('error-contact-email-invalid', 'El email que has escrito no es válido', NULL, 'general'),
('error-contact-message-empty', 'No has escrito ningún mensaje', NULL, 'contact'),
('error-contact-subject-empty', 'No has escrito el asunto', NULL, 'contact'),
('error-image-name', 'Error en el nombre del archivo', NULL, 'general'),
('error-image-size', 'Error en el tamaño del archivo', NULL, 'general'),
('error-image-size-too-large', 'La imagen es demasiado grande', NULL, 'general'),
('error-image-tmp', 'Error al cargar el archivo', NULL, 'general'),
('error-image-type', 'Solo se permiten imágenes jpg, png y gif', NULL, 'general'),
('error-image-type-not-allowed', 'Solo se permiten archivos de imagen tipo  .png  .jpg  .gif', NULL, 'general'),
('error-register-email', 'La dirección de correo es obligatoria', NULL, 'register'),
('error-register-email-confirm', 'La comprobación de email no coincide', NULL, 'register'),
('error-register-email-exists', 'La dirección de correo facilitada corresponde a un usuario ya registrado', NULL, 'general'),
('error-register-invalid-password', 'La contraseña no es válida', NULL, 'register'),
('error-register-password-confirm', 'La comprobación de contraseña no coincide', NULL, 'register'),
('error-register-pasword', 'La contraseña no puede estar vacía', NULL, 'register'),
('error-register-pasword-empty', 'No has puesto contraseña', NULL, 'general'),
('error-register-short-password', 'La contraseña debe contener un mínimo de 8 caracteres', NULL, 'register'),
('error-register-user-exists', 'Este nombre de usuario ya está registrado.', NULL, 'register'),
('error-register-userid', 'Es obligatorio escribir un nombre de acceso', NULL, 'login'),
('error-register-username', 'El nombre público es obligatorio.', NULL, 'register'),
('error-user-email-confirm', 'La confirmación de correo electrónico no coincide', NULL, 'general'),
('error-user-email-empty', 'No puedes dejar el campo de email vacío', NULL, 'general'),
('error-user-email-exists', 'Ya hay un usuario registrado con este email', NULL, 'general'),
('error-user-email-invalid', 'El email que has puesto no es válido', NULL, 'general'),
('error-user-email-token-invalid', 'El código no es correcto', NULL, 'general'),
('error-user-password-confirm', 'La confirmación de contraseña no coincide', NULL, 'general'),
('error-user-password-empty', 'No has puesto la contraseña', NULL, 'general'),
('error-user-password-invalid', 'La contraseña es demasiado corta', NULL, 'general'),
('error-user-wrong-password', 'La contraseña no es correcta', NULL, 'general'),
('explain-project-progress', 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 80%. Los criterios que hacen subir este "termómetro"  tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los consejos de la columna derecha, que guían durante todo el proceso.', NULL, 'general'),
('faq-ask-question', '¿No has podido resolver tu duda?\r\n Envía un mensaje con tu pregunta.', NULL, 'faq'),
('faq-investors-section-header', 'Para cofinanciador@s', NULL, 'general'),
('faq-main-section-header', 'Una aproximación a Goteo', NULL, 'faq'),
('faq-nodes-section-header', 'Sobre nodos locales', NULL, 'faq'),
('faq-project-section-header', 'Sobre los proyectos', NULL, 'faq'),
('faq-sponsor-section-header', 'Para impulsor@s', NULL, 'general'),
('fatal-error-project', 'Este proyecto que buscas... <span class="red">no existe :(</span>', 1, 'error'),
('fatal-error-teapot', '<span class="greenblue">How embarassing...</span> unexpected Error occurred', 1, 'error'),
('fatal-error-user', 'Este usuario que buscas... <span class="red">no existe :(</span>', 1, 'error'),
('feed-blog-comment', 'Ha escrito un <span class="green">Comentario</span> en la entrada "%s" del blog de %s', 1, 'feed'),
('feed-head-community', 'Comunidad', NULL, 'community'),
('feed-head-goteo', 'Goteo', NULL, 'community'),
('feed-head-projects', 'Proyectos', NULL, 'community'),
('feed-header', 'Actividad reciente', NULL, 'community'),
('feed-invest', 'Ha aportado %s al proyecto %s', 1, 'feed'),
('feed-messages-new_thread', 'Ha abierto un tema en %s del proyecto %s', 1, 'feed'),
('feed-messages-response', 'Ha respondido en %s del proyecto %s', 1, 'feed'),
('feed-new_project', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tenemos 40 días para apoyarlo!', 1, 'feed'),
('feed-new_support', 'Ha publicado una nueva <span class="green">Colaboración</span> en el proyecto %s, con el título "%s"', 1, 'feed'),
('feed-new_update', '%s ha publicado un nuevo post en %s sobre el proyecto %s', 1, 'feed'),
('feed-new_user', 'Nuevo usuario en Goteo %s', 1, 'feed'),
('feed-project_fail', 'El proyecto %s ha sido <span class="red">archivado sin éxito</span> obteniendo <span class="violet">%s € (%s &#37;) de aportes sobre mínimo</span>', 1, 'feed'),
('feed-project_finish', 'El proyecto %s ha <span class="red">completado la segunda ronda</span> obteniendo <span class="violet">%s € (%s &#37;) de aportes sobre mínimo</span>', 1, 'feed'),
('feed-project_goon', 'El proyecto %s <span class="red">continúa en campaña</span> en segunda ronda obteniendo <span class="violet">%s € (%s &#37;) de aportes sobre mínimo</span>', 1, 'feed'),
('feed-project_runout', 'Al proyecto %s le faltan <span class="red">%s días</span> para finalizar la %sª ronda', 1, 'feed'),
('feed-side-top_ten', 'Top ten cofinanciadores', NULL, 'community'),
('feed-timeago', 'Hace %s', NULL, 'feed'),
('feed-timeago-justnow', 'nada', NULL, 'feed'),
('feed-timeago-periods', 'segundo-segundos_minuto-minutos_hora-horas_día-días_semana-semanas_mes-meses_año-años_década-décadas', NULL, 'feed'),
('feed-timeago-published', 'Publicado hace %s', NULL, 'feed'),
('feed-updates-comment', 'Ha escrito un <span class="green">Comentario</span> en la entrada "%s" en %s del proyecto %s', 1, 'feed'),
('footer-header-categories', 'Categorías', NULL, 'footer'),
('footer-header-projects', 'Proyectos', NULL, 'footer'),
('footer-header-resources', 'Recursos', NULL, 'footer'),
('footer-header-services', 'Servicios', NULL, 'footer'),
('footer-header-social', 'Síguenos', NULL, 'footer'),
('footer-header-sponsors', 'Apoyos institucionales', NULL, 'footer'),
('footer-platoniq-iniciative', 'Una iniciativa de:', NULL, 'footer'),
('footer-resources-glossary', 'Glosario', NULL, 'footer'),
('footer-resources-press', 'Prensa', NULL, 'footer'),
('footer-service-campaign', 'Campañas', NULL, 'footer'),
('footer-service-consulting', 'Consultoría', NULL, 'footer'),
('footer-service-resources', 'Capital riego', NULL, 'footer'),
('footer-service-workshop', 'Talleres', NULL, 'footer'),
('form-accept-button', 'Aceptar', NULL, 'form'),
('form-add-button', 'Añadir', NULL, 'form'),
('form-ajax-info', 'El formulario de proyecto se va grabando segun pases por cada campo', NULL, 'form'),
('form-apply-button', 'Aplicar', NULL, 'form'),
('form-errors-info', 'Total: %s | En este paso: %s', NULL, 'form'),
('form-errors-total', 'Hay %s errores en total', NULL, 'form'),
('form-footer-errors_title', 'Errores', NULL, 'form'),
('form-image_upload-button', 'Subir imagen', NULL, 'form'),
('form-navigation_bar-header', 'Ir a', NULL, 'form'),
('form-next-button', 'Siguiente', NULL, 'form'),
('form-project-info_status-title', 'Estado global de la información', NULL, 'form'),
('form-project-progress-title', 'Evaluación de datos', NULL, 'form'),
('form-project-status-title', 'Estado del proyecto', NULL, 'form'),
('form-project_status-campaing', 'En campaña', NULL, 'form'),
('form-project_status-cancel', 'Desechado', NULL, 'form'),
('form-project_status-cancelled', 'Descartado', NULL, 'form'),
('form-project_status-edit', 'Editándose', NULL, 'form'),
('form-project_status-expired', 'Archivado', NULL, 'form'),
('form-project_status-fulfilled', 'Retorno cumplido', NULL, 'form'),
('form-project_status-review', 'Pendiente de valoración', NULL, 'form'),
('form-project_status-success', 'Financiado', NULL, 'form'),
('form-project_waitfor-campaing', 'Difunde tu proyecto, ayuda a que consiga el máximo de aportaciones!', NULL, 'dashboard'),
('form-project_waitfor-cancel', 'Finalmente hemos desestimado la propuesta para publicarla en Goteo, te invitamos a intentarlo con otra idea o concepto.', NULL, 'dashboard'),
('form-project_waitfor-edit', 'Cuando lo tengas listo mándalo a revisión. Necesitas llegar a un mínimo de información sobre el proyecto en el formulario.', NULL, 'dashboard'),
('form-project_waitfor-expired', 'No lo conseguiste :( Trata de mejorarlo e inténtalo de nuevo!', NULL, 'dashboard'),
('form-project_waitfor-fulfilled', 'Has cumplido con los retornos :) Gracias por tu participación!', NULL, 'dashboard'),
('form-project_waitfor-review', 'En breve nos pondremos en contacto contigo respecto al proyecto, una vez se lleve a cabo el proceso de revisión. A continuación lo publicaremos o bien te sugeriremos cosas para mejorarlo.', NULL, 'dashboard'),
('form-project_waitfor-success', 'Has conseguido el mínimo o más en aportes de cofinanciación para el proyecto. Enseguida te contactaremos para hablar de dinero :)', NULL, 'dashboard'),
('form-remove-button', 'Quitar', NULL, 'form'),
('form-self_review-button', 'Corregir', NULL, 'form'),
('form-send_review-button', 'Enviar', NULL, 'form'),
('form-upload-button', 'Enviar', NULL, 'form'),
('guide-dashboard-user-access', 'Desde aquí puedes modificar los datos con que accedes a tu cuenta de Goteo.', NULL, 'general'),
('guide-dashboard-user-personal', 'Sólo debes cumplimentar estos datos si has creado un proyecto y quieres que sea cofinanciado y apoyado mediante Goteo.\r\n\r\nLa información de este apartado es necesaria para contactarte en caso de que obtengas la financiación requerida, y que así se pueda efectuar el ingreso.', NULL, 'general'),
('guide-dashboard-user-preferences', 'Marca ''Sí'' en las notificaciones automáticas que quieras bloquear', NULL, 'dashboard'),
('guide-dashboard-user-profile', 'Tanto si quieres presentar un proyecto como incorporarte como cofinanciador/a, para formar parte de la comunidad de Goteo te recomendamos que pongas atención en tu texto de presentación, que añadas links relevantes sobre lo que haces y subas una imagen de perfil con la que te identifiques.', NULL, 'dashboard'),
('guide-project-comment', 'guide-project-comment', NULL, 'general'),
('guide-project-contract-information', '<strong>A partir de este paso sólo debes cumplimentar los datos si quieres que tu proyecto sea cofinanciado y apoyado mediante Goteo. </strong><br><br>La información de este apartado es necesaria para contactarte si obtienes la financiación requerida, y que así se pueda efectuar el ingreso. En el caso de entidades, se recomienda que quien represente a la organización pueda luego acreditarlo formalmente (por ejemplo a través de los estatutos o de un certificado del secretario con el visto bueno del presidente, en el caso de asociaciones).', NULL, 'general'),
('guide-project-costs', '<strong>En esta sección debes elaborar un pequeño presupuesto basado en los costes que calcules va a tener la realización del proyecto.</strong><br><br>\r\nDebes especificar según tareas, infraestructura o materiales. Intenta ser realista en los costes y explicar brevemente por qué necesitas cubrir cada uno de ellos. Ten en cuenta que por norma general, al menos un 80% del proyecto deberá ser realizado directamente por la persona o equipo que promueve el proyecto, y no subcontratado a terceros.<br><br>\r\n<strong>Muy importante</strong>: En Goteo diferenciamos entre costes imprescindibles y costes adicionales. Los primeros deben lograrse en su totalidad para poder obtener la financiación, mientras que los segundo se solicitan y obtienen directamente en una campaña posterior, una vez está en marcha el proyecto, para poder poder cubrir costes de optimización del mismo (difusión, diseño, alcance, más unidades, etc). Estos costes adicionales no pueden superar la mitad de los costes totales del proyecto.', NULL, 'general'),
('guide-project-description', '<strong>Éste es el apartado donde explicar con detalle los aspectos conceptuales del proyecto. </strong><br><br>Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir un vídeo o subir imágenes. Esto es así porque los consideramos imprescindibles para empezar con éxito una campaña de recaudación de fondos mediante Goteo.<br><br>\r\nTen en cuenta que lo más valorado en Goteo es: la información o conocimiento libre de interés general que tu proyecto aportará a la comunidad,  la originalidad, aspirar a resolver una demanda social,  el potencial para atraer a una comunidad amplia de personas interesadas, dejar claro que el equipo promotor posee las capacidades y experiencia para poder llevarlo a buen puerto. Así que no pierdas de vista informar sobre esos aspectos.', NULL, 'general'),
('guide-project-error-mandatories', 'Faltan campos obligatorios', NULL, 'preview'),
('guide-project-preview', '<strong>Éste es un resumen de toda la información sobre el proyecto.</strong><br><br> Repasa los puntos de cada apartado para ver si puedes mejorar algo, o bien envía el proyecto para su valoración (mediante el botón "Enviar" de la parte de abajo) si ya están cumplimentados todos los campos obligatorios, para que así pueda ser valorado por el equipo y la comunidad de Goteo. Una vez lo envíes ya no se podrán introducir cambios. <br><br>Ten en cuenta que sólo podemos seleccionar unos cuantos proyectos al mes para garantizar la atención y la difusión de las propuestas que se hacen públicas. Próximamente recibirás un mensaje con toda la información, que te indicará los pasos a seguir y recomendaciones para que tu proyecto pueda alcanzar la meta propuesta. ', NULL, 'preview'),
('guide-project-rewards', '<strong>En este apartado debes establecer qué ofrece el proyecto a cambio a sus cofinanciadores, y también sus retornos colectivos.</strong><br><br>\r\nAdemás de las recompensas individuales para cada importe de cofinanciación, aquí debes definir qué tipo de licencia asignar al proyecto, en función de su formato y/o del grado de abertura del mismo (o de alguna de sus partes). Esta parte es muy importante, ya que Goteo es una plataforma de crowdfunding para proyectos basados en la filosofía del código abierto y que fortalezcan el procomún.<br><br>\r\nEn caso de que además de una de las licencias aquí especificadas te interese adicionalmente registrar la propiedad intelectual de tu obra o idea, manteniendo su compatibilidad con los retornos colectivos, te recomendamos obtener una protección legal específica mediante el servicio <a href="http://www.safecreative.org/" target="new">Safe Creative</a>.', NULL, 'general'),
('guide-project-success-minprogress', 'Ha llegado al porcentaje mínimo', NULL, 'preview'),
('guide-project-success-noerrors', 'Todos los campos obligatorios se han cumplimentado', NULL, 'preview'),
('guide-project-success-okfinish', 'Puede enviarse para revisión', NULL, 'preview'),
('guide-project-support', 'guide-project-support', NULL, 'general'),
('guide-project-supports', '<strong>En este apartado puedes especificar qué otras ayudas, aparte de financiación, se necesitan para llevar a cabo el proyecto.</strong><br><br> Pueden ser tareas o acciones a cargo de otras personas (traducciones, gestiones, difusión, etc), o bien préstamos específicos (de material, transporte, hardware, etc).', NULL, 'general'),
('guide-project-updates', '<b>Es muy importante que los proyectos mantengan informados a sus cofinanciadores y el resto de personas potencialmente interesadas sobre cómo avanza su campaña. Desde este apartado puedes publicar mensajes de actualización sobre el proyecto, como una especie de blog público.</b>\r\n\r\nEn Goteo además, una vez se han logrado los fondos mínimos, para la segunda ronda de cofinanciación es crítico explicar regularmente cómo ha arrancado la producción, avances, problemas, etc que permitan la mayor transparencia posible y saber cómo evoluciona el inicio del proyecto, para así tratar de generar más interés y comunidad en torno al mismo.', NULL, 'general'),
('guide-project-user-information', '<strong>En este apartado debes introducir los datos para la información pública de tu perfil de usuario. </strong><br><br>Tanto si quieres presentar un proyecto como incorporarte como cofinanciador/a, para formar parte de la comunidad de Goteo te recomendamos que pongas atención en tu texto de presentación, que añadas links relevantes sobre lo que haces y subas una imagen de perfil con la que te identifiques.', NULL, 'profile'),
('guide-user-data', 'Texto guía en la edición de campos sensibles.', NULL, 'dashboard'),
('guide-user-register', 'Texto guía en el registro de un nuevo usuario.', NULL, 'register'),
('header-about-side', 'Lo que nos mueve', NULL, 'general'),
('home-posts-header', 'En nuestro blog', NULL, 'general'),
('home-promotes-header', 'Destacados', NULL, 'home'),
('image-upload-fail', 'Fallo al subir la imagen', NULL, 'bluead'),
('invest-address-address-field', 'Dirección:', NULL, 'invest'),
('invest-address-country-field', 'País:', NULL, 'invest'),
('invest-address-header', 'Dónde quieres recibir la recompensa (sólo en caso de envíos postales)', NULL, 'invest'),
('invest-address-location-field', 'Ciudad:', NULL, 'invest'),
('invest-address-name-field', 'Nombre:', NULL, 'invest'),
('invest-address-nif-field', 'Número de NIF / NIE / VAT:', NULL, 'invest'),
('invest-address-zipcode-field', 'Código postal:', NULL, 'invest'),
('invest-alert-investing', 'Vas a aportar', NULL, 'invest'),
('invest-alert-noreward', 'No has marcado ninguna recompensa, ¿es correcto?', NULL, 'invest'),
('invest-alert-noreward_renounce', '¿Deseas renunciar a la recompensa y desgravar tu donativo?', NULL, 'invest'),
('invest-alert-renounce', 'Renuncias pero no has puesto tu NIF para desgravar el donativo, ¿es correcto?', NULL, 'invest'),
('invest-alert-rewards', 'Has elegido las siguientes recompensas:', NULL, 'invest'),
('invest-amount', 'Cantidad', NULL, 'invest'),
('invest-amount-error', 'Tienes que indicar el importe', NULL, 'bluead'),
('invest-amount-tooltip', 'Introduce la cantidad con la que apoyarás al proyecto', NULL, 'invest'),
('invest-anonymous', 'Quiero que mi aportación sea anónima', NULL, 'invest'),
('invest-create-error', 'Ha habido algun problema al inicializar la transacción', NULL, 'bluead'),
('invest-data-error', 'No se han recibido los datos necesarios', NULL, 'bluead'),
('invest-donation-header', 'Introduce los datos fiscales para el donativo', NULL, 'invest'),
('invest-individual-header', 'Puedes renunciar a recibir recompensas por tu aportación, o seleccionar las que igualen o estén por debajo del importe que hayas introducido.', NULL, 'general'),
('invest-mail_info-address', 'Has especificado la siguiente dirección:', NULL, 'invest'),
('invest-mail_info-drop', 'Además, el proyecto ha conseguido %s &euro; de capital riego de la campaña %s', NULL, 'invest'),
('invest-next_step', 'Paso siguiente', NULL, 'invest'),
('invest-owner-error', 'Eres el autor del proyecto, no puedes aportar personalmente a tu propio proyecto.', NULL, 'bluead'),
('invest-payment-email', 'Introduce tu cuenta de PayPal', NULL, 'invest'),
('invest-payment_method-header', 'Elige el método de pago', NULL, 'invest'),
('invest-paypal-error_fatal', 'Ha ocurrido un error fatal al conectar con PayPal. Se ha reportado la incidencia, disculpa las molestias.', NULL, 'bluead'),
('invest-resign', 'Renuncio a una recompensa individual, solo quiero ayudar al proyecto', NULL, 'invest'),
('invest-reward-none', 'Ya no se puede elegir', NULL, 'invest'),
('invest-social-header', 'Con los retornos colectivos ganamos tod@s', NULL, 'invest'),
('invest-tpv-error_fatal', 'Ha ocurrido un error fatal al conectar con el TPV. Se ha reportado la incidencia, disculpa las molestias.', NULL, 'bluead'),
('leave-email-sended', 'Te hemos enviado un email para completar el proceso de baja. Verifica también la carpeta de correo no deseado o spam.', NULL, 'register'),
('leave-process-completed', 'La cuenta se ha dado de baja correctamente', NULL, 'register'),
('leave-process-fail', 'No hemos podido completar el proceso para darte de baja. Por favor, contáctanos a hola@goteo.org', NULL, 'register'),
('leave-request-fail', 'No hemos encontrado ninguna cuenta con este email en nuestra base de datos para darla de baja', NULL, 'register'),
('leave-token-incorrect', 'El código para completar el proceso de baja no es válido', NULL, 'register'),
('login-access-button', 'Entrar', NULL, 'login'),
('login-access-header', 'Usuario registrado', NULL, 'login'),
('login-access-password-field', 'Contraseña', NULL, 'login'),
('login-access-username-field', 'Nombre de acceso', NULL, 'login'),
('login-banner-header', 'Accede a la comunidad goteo<br /><span class="greenblue">100% abierto</span>', 1, 'banners'),
('login-fail', 'Error de acceso', NULL, 'login'),
('login-leave-button', 'Dar de baja', NULL, 'login'),
('login-leave-header', 'Cancelar la cuenta', NULL, 'login'),
('login-leave-message', 'Déjanos un mensaje', NULL, 'login'),
('login-oneclick-header', 'Accede con un solo click', NULL, 'login'),
('login-recover-button', 'Recuperar', NULL, 'login'),
('login-recover-email-field', 'Email de la cuenta', NULL, 'login'),
('login-recover-header', 'Recuperar contraseña', NULL, 'login'),
('login-recover-link', 'Recuperar contraseña', NULL, 'login'),
('login-recover-username-field', 'Nombre de acceso', NULL, 'login'),
('login-register-button', 'Registrar', NULL, 'login'),
('login-register-conditions', 'Acepto las condiciones de uso de la plataforma, así­ como presto mi consentimiento para el tratamiento de mis datos personales. A tal efecto, el responsable del portal ha establecido una <a href="/legal/privacy" target="_blank">polí­tica de privacidad</a> donde se puede conocer la finalidad que se le darán a los datos suministrados a través del presente formulario, así­ como los derechos que asisten a la persona que suministra dichos datos.', 1, 'general'),
('login-register-confirm-field', 'Confirmar email', NULL, 'login'),
('login-register-confirm_password-field', 'Confirmar contraseña', NULL, 'login'),
('login-register-email-field', 'Email', NULL, 'login'),
('login-register-header', 'Nuevo usuario', NULL, 'login'),
('login-register-password-field', 'Contraseña', NULL, 'login'),
('login-register-password-minlength', 'Mínimo 6 carácteres', NULL, 'login'),
('login-register-userid-field', 'Nombre de acceso', NULL, 'login'),
('login-register-username-field', 'Nombre público', NULL, 'login'),
('login-signin-facebook', 'Accede con Facebook', NULL, 'login'),
('login-signin-google', 'Accede con Google', NULL, 'login'),
('login-signin-linkedin', 'Accede con LinkedIn', NULL, 'login'),
('login-signin-myopenid', 'Accede con myOpenID', NULL, 'login'),
('login-signin-openid', 'Otro servidor Open ID', NULL, 'login'),
('login-signin-openid-go', 'Ir', NULL, 'login'),
('login-signin-twitter', 'Accede con Twitter', NULL, 'login'),
('login-signin-view-more', 'Mostrar más opciones de acceso', NULL, 'login'),
('login-signin-yahoo', 'Accede con Yahoo', NULL, 'login'),
('mailer-baja', '¿No quieres recibir más comunicaciones de Goteo? Puedes dar tu email de baja mediante este <a href="%s">enlace</a>', 1, 'mailer'),
('mailer-disclaimer', 'Goteo es una plataforma digital para la financiación colectiva, colaboración y distribución de recursos para el desarrollo de proyectos sociales, culturales, educativos, tecnológicos... que contribuyan al fortalecimiento del procomún, el código abierto y/o el conocimiento libre.', NULL, 'mailer'),
('mailer-sinoves', 'Si no puedes ver este mensaje utiliza este <a href="%s">enlace</a>', 1, 'mailer'),
('main-banner-header', '<h2 class="message">Red social para <span class="greenblue">cofinanciar y colaborar con</span><br /> proyectos creativos que fomentan el procomún<br /> ¿Tienes un proyecto con <span class="greenblue">adn abierto</span>?</h2><a href="/contact" class="button banner-button">Contáctanos</a>', 1, 'banners'),
('mandatory-cost-field-amount', 'Es obligatorio asignar un importe a los costes', NULL, 'costs'),
('mandatory-cost-field-description', 'Es obligatorio poner alguna descripción a los costes', NULL, 'costs'),
('mandatory-cost-field-name', 'Es obligatorio ponerle un nombre al coste', NULL, 'costs'),
('mandatory-cost-field-task_dates', 'Es obligatorio especificar las fechas aproximadas de la tarea', NULL, 'costs'),
('mandatory-cost-field-type', 'Es obligatorio seleccionar el tipo de coste', NULL, 'general'),
('mandatory-individual_reward-field-amount', 'Es obligatorio indicar el importe que permite obtener la recompensa', NULL, 'general'),
('mandatory-individual_reward-field-description', 'Es obligatorio poner alguna descripción', NULL, 'rewards'),
('mandatory-individual_reward-field-icon', 'Es obligatorio seleccionar el tipo de recompensa', NULL, 'rewards'),
('mandatory-individual_reward-field-name', 'Es obligatorio poner la recompensa', NULL, 'rewards'),
('mandatory-project-costs', 'Debe desglosarse en al menos dos costes.', NULL, 'general'),
('mandatory-project-field-about', 'Es obligatorio explicar las características básicas del proyecto', NULL, 'overview'),
('mandatory-project-field-address', 'La dirección de la/el responsable del proyecto es obligatoria', NULL, 'personal'),
('mandatory-project-field-category', 'Es obligatorio elegir al menos una categoria para el proyecto.', NULL, 'overview'),
('mandatory-project-field-contract_birthdate', 'Es obligatorio poner la fecha de nacimiento del responsable del proyecto', NULL, 'personal'),
('mandatory-project-field-contract_email', 'Es obligatorio poner el email de la/el responsable del proyecto.', NULL, 'personal'),
('mandatory-project-field-contract_name', 'Es obligatorio poner el nombre de la/el responsable del proyecto', NULL, 'personal'),
('mandatory-project-field-contract_nif', 'Es obligatorio poner el documento de identificación de la/el responsable del proyecto', NULL, 'personal'),
('mandatory-project-field-country', 'El país de la/el responsable del proyecto es obligatorio', NULL, 'personal'),
('mandatory-project-field-description', 'Es obligatorio resumir el proyecto', NULL, 'overview'),
('mandatory-project-field-entity_cif', 'Es obligatorio poner el CIF de la entidad jurídica', NULL, 'personal'),
('mandatory-project-field-entity_name', 'Es obligatorio poner el nombre de la organización', NULL, 'personal'),
('mandatory-project-field-entity_office', 'Es obligatorio poner el cargo que tienes dentro la organización que vas a representar', NULL, 'personal'),
('mandatory-project-field-goal', 'Es obligatorio explicar los objetivos en la descripción del proyecto', NULL, 'overview'),
('mandatory-project-field-image', 'Es obligatorio vincular una imagen como mínimo al proyecto. ', NULL, 'overview'),
('mandatory-project-field-lang', 'Tienes que indicar el idioma del proyecto', NULL, 'overview'),
('mandatory-project-field-location', 'Es obligatorio poner el alcance potencial del proyecto', NULL, 'overview'),
('mandatory-project-field-media', 'Recomendamos poner un vídeo para mejorar la valoración del proyecto a la hora de decidir si publicarlo o no en Goteo.', NULL, 'overview'),
('mandatory-project-field-motivation', 'Es obligatorio explicar la motivación en la descripción del proyecto', NULL, 'overview'),
('mandatory-project-field-name', 'Es obligatorio poner un nombre al proyecto', NULL, 'overview'),
('mandatory-project-field-phone', 'El teléfono de la/el responsable del proyecto es obligatorio', NULL, 'personal'),
('mandatory-project-field-related', 'Es obligatorio explicar en la descripción del proyecto la experiencia relacionada y/o el equipo con que se cuenta ', NULL, 'overview'),
('mandatory-project-field-residence', 'Es obligatorio poner el lugar de residencia de la/el responsable del proyecto', NULL, 'personal'),
('mandatory-project-field-resource', 'Es obligatorio especificar si cuentas con otros recursos o no', NULL, 'costs'),
('mandatory-project-field-zipcode', 'El código postal de la/el responsable del proyecto es obligatorio', NULL, 'personal'),
('mandatory-project-resource', 'Es obligatorio especificar si cuentas con otros recursos o no', NULL, 'costs'),
('mandatory-project-total-costs', 'Es obligatorio especificar algún coste', NULL, 'costs'),
('mandatory-register-field-email', 'Tienes que indicar un email', NULL, 'general'),
('mandatory-social_reward-field-description', 'Es obligatorio poner alguna descripción al retorno', NULL, 'rewards'),
('mandatory-social_reward-field-icon', 'Es obligatorio seleccionar el tipo de retorno', NULL, 'rewards'),
('mandatory-social_reward-field-name', 'Es obligatorio especificar el retorno', NULL, 'rewards'),
('mandatory-support-field-description', 'Es obligatorio poner alguna descripción', NULL, 'supports'),
('mandatory-support-field-name', 'Es obligatorio ponerle un nombre a la colaboración', NULL, 'supports'),
('oauth-confirm-user', 'Vincular usuario existente', NULL, 'login'),
('oauth-facebook-access-denied', 'Acceso desde Facebook denegado', NULL, 'login'),
('oauth-goteo-openid-sync-password', 'Estás intentando vincular una cuenta ya existente en Goteo con un proveedor externo. Esto te permitirá entrar en Goteo con un solo clic en el futuro.<br/>Esta primera vez deberás proporcionar la contraseña de tu cuenta en Goteo para confirmar tu identidad.', 1, 'login'),
('oauth-goteo-user-not-exists', 'Ese usuario no existe en Goteo', NULL, 'login'),
('oauth-goteo-user-password-exists', 'Ese usuario ya existe en Goteo', NULL, 'login'),
('oauth-import-about', 'Acerca de ti', NULL, 'login'),
('oauth-import-facebook', 'Link a tu cuenta de Facebook', NULL, 'login'),
('oauth-import-location', 'Lugar de residencia', NULL, 'login'),
('oauth-import-name', 'Nombre', NULL, 'login'),
('oauth-import-twitter', 'Link a tu cuenta de Twitter', NULL, 'login'),
('oauth-import-website', 'Tus sitios webs', NULL, 'login'),
('oauth-linkedin-access-denied', 'Acceso desde Linkedin denegado', NULL, 'login'),
('oauth-login-imported-data', 'También van a importarse estos datos, puedes cambiarlos una vez autentificado:', NULL, 'login'),
('oauth-login-welcome-from', 'Bienvenido/a a Goteo! Comprueba tu nombre de usuario y email para finalizar el proceso. En caso de que no se haya podido importar el email o lo cambies por otro, recibirás un correo electrónico con un link de activación para comprovar su validez.', NULL, 'login'),
('oauth-openid-access-denied', 'Acceso desde Open ID denegado', NULL, 'login'),
('oauth-openid-not-logged', 'Usuario desconectado desde Open ID', NULL, 'login'),
('oauth-token-request-error', 'Ha ocurrido un error al obtener las credenciales con el proveedor', NULL, 'login'),
('oauth-twitter-access-denied', 'Acceso desde Twitter denegado', NULL, 'login'),
('oauth-unknown-provider', 'No se puede iniciar sesión con este proveedor', NULL, 'login'),
('open-banner-header', '<div class="modpo-open">OPEN</div><div class="modpo-percent">100&#37; ABIERTO</div><div class="modpo-whyopen">%s</div>', 1, 'banners'),
('overview-field-about', 'Características básicas', NULL, 'general'),
('overview-field-categories', 'Categorías', NULL, 'overview'),
('overview-field-currently', 'Estado actual', NULL, 'overview'),
('overview-field-description', 'Breve descripción ', NULL, 'overview'),
('overview-field-goal', 'Objetivos de la campaña de crowdfunding', NULL, 'overview'),
('overview-field-image_gallery', 'Imágenes actuales', NULL, 'overview'),
('overview-field-image_upload', 'Subir una imagen', NULL, 'overview'),
('overview-field-keywords', 'Palabras clave del proyecto', NULL, 'overview'),
('overview-field-lang', 'Idioma original', NULL, 'overview'),
('overview-field-media', 'Vídeo de presentación', NULL, 'overview'),
('overview-field-media_preview', 'Vista previa', NULL, 'overview'),
('overview-field-motivation', 'Motivación y a quién va dirigido el proyecto', NULL, 'general'),
('overview-field-name', 'Título del proyecto', NULL, 'overview'),
('overview-field-options-currently_avanzado', 'Avanzado', NULL, 'overview'),
('overview-field-options-currently_finalizado', 'Finalizado', NULL, 'overview'),
('overview-field-options-currently_inicial', 'Inicial', NULL, 'overview'),
('overview-field-options-currently_medio', 'Medio', NULL, 'overview'),
('overview-field-options-scope_global', 'Global', NULL, 'overview'),
('overview-field-options-scope_local', 'Local', NULL, 'overview'),
('overview-field-options-scope_nacional', 'Nacional', NULL, 'overview'),
('overview-field-options-scope_regional', 'Regional', NULL, 'overview'),
('overview-field-project_location', 'Ubicación', NULL, 'overview'),
('overview-field-related', 'Experiencia previa y equipo', NULL, 'overview'),
('overview-field-scope', 'Alcance del proyecto', NULL, 'overview'),
('overview-field-subtitle', 'Frase de resumen', NULL, 'overview'),
('overview-field-usubs', 'Cargar con Universal Subtitles', NULL, 'overview'),
('overview-field-video', 'Vídeo adicional sobre motivación', NULL, 'overview'),
('overview-fields-images-title', 'Imágenes del proyecto', NULL, 'overview'),
('overview-main-header', 'Descripción del proyecto', NULL, 'overview'),
('personal-field-address', 'Dirección', NULL, 'personal'),
('personal-field-contract_birthdate', 'Fecha de nacimiento', NULL, 'personal'),
('personal-field-contract_data', 'Datos del/la responsable del proyecto', NULL, 'personal'),
('personal-field-contract_email', 'Email vinculado al proyecto', NULL, 'personal'),
('personal-field-contract_entity', 'Promotor/a del proyecto', NULL, 'personal'),
('personal-field-contract_entity-entity', 'Persona jurídica (asociaciones, fundaciones, empresas)', NULL, 'personal'),
('personal-field-contract_entity-person', 'Persona física', NULL, 'personal'),
('personal-field-contract_name', 'Nombre y apellidos', NULL, 'personal'),
('personal-field-contract_nif', 'Número de NIF / NIE / VAT', NULL, 'personal'),
('personal-field-country', 'País', NULL, 'personal'),
('personal-field-entity_cif', 'CIF de la entidad', NULL, 'personal'),
('personal-field-entity_name', 'Denominación social (nombre) de la entidad', NULL, 'personal'),
('personal-field-entity_office', 'Cargo en la organización', NULL, 'personal'),
('personal-field-location', 'Localidad', NULL, 'personal'),
('personal-field-main_address', 'Domicilio fiscal', NULL, 'personal'),
('personal-field-phone', 'Teléfono', NULL, 'personal'),
('personal-field-post_address', 'Domicilio postal', NULL, 'personal'),
('personal-field-post_address-different', 'Diferente', NULL, 'personal'),
('personal-field-post_address-same', 'Igual', NULL, 'personal'),
('personal-field-zipcode', 'Código postal', NULL, 'personal'),
('personal-main-header', 'Datos del promotor/a', NULL, 'personal'),
('preview-main-header', 'Previsualización de datos', NULL, 'preview'),
('preview-send-comment', 'Notas adicionales para el administrador', NULL, 'preview'),
('profile-about-header', 'Sobre mí', NULL, 'general'),
('profile-field-about', 'Cuéntanos algo sobre ti', NULL, 'profile'),
('profile-field-avatar_current', 'Tu imagen actual', NULL, 'profile'),
('profile-field-avatar_upload', 'Subir una imagen', NULL, 'profile'),
('profile-field-contribution', 'Qué puedes aportar a Goteo', NULL, 'profile'),
('profile-field-interests', 'Qué tipo de proyecto te motiva más', NULL, 'profile'),
('profile-field-keywords', 'Temas que te interesan', NULL, 'profile'),
('profile-field-location', 'Lugar de residencia habitual', NULL, 'profile'),
('profile-field-name', 'Nombre de usuario/a', NULL, 'profile'),
('profile-field-url', 'URL', NULL, 'profile'),
('profile-field-websites', 'Mis páginas web', NULL, 'profile'),
('profile-fields-image-title', 'Imagen de perfil', NULL, 'profile'),
('profile-fields-social-title', 'Perfiles sociales', NULL, 'profile'),
('profile-interests-header', 'Me interesan proyectos con fin...', NULL, 'public_profile'),
('profile-invest_on-header', 'Proyectos que apoyo', NULL, 'public_profile'),
('profile-invest_on-title', 'Cofinancia', NULL, 'public_profile'),
('profile-keywords-header', 'Mis palabras clave', NULL, 'public_profile'),
('profile-last_worth-title', 'Fecha', NULL, 'public_profile'),
('profile-location-header', 'Mi ubicación', NULL, 'public_profile'),
('profile-main-header', 'Datos de perfil', NULL, 'profile'),
('profile-my_investors-header', 'Mis cofinanciadores', NULL, 'public_profile'),
('profile-my_projects-header', 'Mis proyectos', NULL, 'public_profile'),
('profile-my_worth-header', 'Mi caudal en goteo', NULL, 'public_profile'),
('profile-name-header', 'Perfil de ', NULL, 'public_profile'),
('profile-sharing_interests-header', 'Compartiendo intereses', NULL, 'public_profile'),
('profile-social-header', 'Social', NULL, 'public_profile'),
('profile-webs-header', 'Mis webs', NULL, 'public_profile'),
('profile-widget-button', 'Ver perfil', NULL, 'public_profile'),
('profile-widget-user-header', 'Usuario', NULL, 'public_profile'),
('profile-worth-title', 'Aporta aquí:', NULL, 'public_profile'),
('profile-worthcracy-title', 'Posición', NULL, 'public_profile'),
('project-collaborations-supertitle', 'Necesidades no monetarias', NULL, 'project'),
('project-collaborations-title', 'Se busca', NULL, 'project'),
('project-form-header', 'Formulario', NULL, 'form'),
('project-invest-closed', 'El proyecto ya no está en campaña', NULL, 'bluead'),
('project-invest-continue', 'Elige el modo de pago', NULL, 'invest'),
('project-invest-fail', 'Algo ha fallado, por favor inténtalo de nuevo', NULL, 'invest'),
('project-invest-guest', 'Invitado (no olvides registrarte)', NULL, 'invest'),
('project-invest-ok', 'Se ha tramitado tu aportación para cofinanciar este proyecto :)', NULL, 'invest'),
('project-invest-start', 'Estás a un paso de ser cofinanciador/a de este proyecto', NULL, 'invest'),
('project-invest-thanks_mail-fail', 'Ha habido algún error al enviar el mensaje de agradecimiento', NULL, 'bluead'),
('project-invest-thanks_mail-success', 'Mensaje de agradecimiento enviado correctamente', NULL, 'bluead'),
('project-invest-total', 'Total de aportaciones', NULL, 'general'),
('project-menu-home', 'Proyecto', NULL, 'project'),
('project-menu-messages', 'Mensajes', NULL, 'project'),
('project-menu-needs', 'Necesidades', NULL, 'project'),
('project-menu-supporters', 'Cofinanciadores', NULL, 'project'),
('project-menu-updates', 'Novedades', NULL, 'project'),
('project-messages-answer_it', 'Responder', NULL, 'project'),
('project-messages-closed', 'Aun no se pueden enviar mensajes al proyecto', NULL, 'project'),
('project-messages-send_direct-header', 'Envía un mensaje al impulsor/a del proyecto', NULL, 'project'),
('project-messages-send_message-button', 'Enviar', NULL, 'project'),
('project-messages-send_message-header', 'Escribe tu mensaje', NULL, 'project'),
('project-messages-send_message-your_answer', 'Escribe aquí tu respuesta', NULL, 'general'),
('project-review-confirm_mail-fail', 'Ha habido algún error al enviar el mensaje de confirmación de recepción', NULL, 'bluead'),
('project-review-confirm_mail-success', 'Mensaje de confirmación de recepción para revisión enviado correctamente', NULL, 'bluead'),
('project-review-request_mail-fail', 'Ha habido algún error al enviar la solicitud de revisión', NULL, 'bluead'),
('project-review-request_mail-success', 'Mensaje de solicitud de revisión enviado correctamente', NULL, 'bluead'),
('project-rewards-header', 'Retorno', NULL, 'project'),
('project-rewards-individual_reward-limited', 'Recompensa limitada', NULL, 'project'),
('project-rewards-individual_reward-title', 'Recompensas individuales', NULL, 'project'),
('project-rewards-individual_reward-units_left', 'Quedan <span class="left">%s</span> unidades', 1, 'project'),
('project-rewards-social_reward-title', 'Retorno colectivo', NULL, 'project'),
('project-rewards-supertitle', 'Qué ofrece a cambio', NULL, 'project'),
('project-share-header', 'Comparte este proyecto', NULL, 'project'),
('project-share-pre_header', 'Deja saber a tu red que', NULL, 'project'),
('project-side-investors-header', 'Ya han aportado', NULL, 'project'),
('project-spread-embed_code', 'Código Embed', NULL, 'project'),
('project-spread-header', 'Difunde este proyecto', NULL, 'project'),
('project-spread-pre_widget', 'Difunde este proyecto', NULL, 'project'),
('project-spread-widget', 'Widget del proyecto', NULL, 'project'),
('project-spread-widget_legend', 'Copia y pega el código en tu web o blog y ayuda a difundir este proyecto', NULL, 'project'),
('project-spread-widget_title', 'publica el widget del proyecto', NULL, 'project'),
('project-support-supertitle', 'Necesidades económicas', NULL, 'project'),
('project-view-categories-title', 'Categorías', NULL, 'project'),
('project-view-metter-days', 'Quedan', NULL, 'project'),
('project-view-metter-got', 'Obtenido', NULL, 'project'),
('project-view-metter-investment', 'Cofinanciación', NULL, 'project'),
('project-view-metter-investors', 'Cofinanciadores', NULL, 'project'),
('project-view-metter-minimum', 'Mínimo', NULL, 'project'),
('project-view-metter-optimum', 'Óptimo', NULL, 'project'),
('recover-email-sended', 'Te hemos enviado un email para reestablecer la contraseña de tu cuenta. Verifica también la carpeta de correo no deseado o spam.', NULL, 'register'),
('recover-request-fail', 'No se puede recuperar la contraseña de ninguna cuenta con estos datos', NULL, 'register'),
('recover-token-incorrect', 'El código de recuperación de contraseña no es válido', NULL, 'register'),
('register-confirm_mail-fail', 'Ha habido algún error al enviar el email de activación de cuenta. Por favor, contáctanos a %s', NULL, 'bluead'),
('register-confirm_mail-success', 'Mensaje de activación de cuenta enviado. Si no está en tu buzón de correo, revisa la carpeta de /Spam', NULL, 'bluead'),
('regular-admin_board', 'Panel admin', NULL, 'general'),
('regular-allsome', 'todos/algunos de', NULL, 'general'),
('regular-anonymous', 'Anónimo', NULL, 'general'),
('regular-ask', 'Preguntar', NULL, 'general'),
('regular-banner-metter', 'obtenido-de-quedan', NULL, 'banner'),
('regular-by', 'Por:', NULL, 'general'),
('regular-collaborate', 'Colabora', NULL, 'general'),
('regular-create', 'Crea un proyecto', NULL, 'general'),
('regular-days', 'días', NULL, 'general'),
('regular-delete', 'Borrar', NULL, 'general'),
('regular-discover', 'Descubre proyectos', NULL, 'general'),
('regular-edit', 'Editar', NULL, 'general'),
('regular-facebook', 'Facebook', NULL, 'general'),
('regular-facebook-url', 'http://www.facebook.com/', NULL, 'url'),
('regular-fail_mark', 'Archivado...', NULL, 'widget');
INSERT INTO `purpose` (`text`, `purpose`, `html`, `group`) VALUES
('regular-faq', 'Preguntas frecuentes', NULL, 'general'),
('regular-first', 'Primera', NULL, 'general'),
('regular-footer-contact', 'Contacto', NULL, 'footer'),
('regular-footer-legal', 'Términos legales', NULL, 'footer'),
('regular-footer-privacy', 'Política de privacidad', NULL, 'footer'),
('regular-footer-terms', 'Condiciones de uso', NULL, 'footer'),
('regular-google', 'Google+', NULL, 'general'),
('regular-google-url', 'https://plus.google.com/', NULL, 'url'),
('regular-gotit_mark', 'Financiado!', NULL, 'widget'),
('regular-go_up', 'Subir', NULL, 'general'),
('regular-header-about', 'Sobre Goteo', NULL, 'general'),
('regular-header-blog', 'Blog', NULL, 'general'),
('regular-header-faq', 'FAQ', NULL, 'general'),
('regular-header-glossary', 'Principios para una economía abierta', NULL, 'general'),
('regular-hello', 'Hola', NULL, 'general'),
('regular-home', 'Inicio', NULL, 'general'),
('regular-identica', 'Identi.ca', NULL, 'general'),
('regular-identica-url', 'http://identi.ca/', NULL, 'url'),
('regular-im', 'Soy', NULL, 'general'),
('regular-invest', 'Aportar', NULL, 'general'),
('regular-investing', 'Aportando', NULL, 'general'),
('regular-invest_it', 'Cofinancia este proyecto', NULL, 'general'),
('regular-keepiton_mark', 'Mínimo conseguido', NULL, 'widget'),
('regular-last', 'Última', NULL, 'general'),
('regular-license', 'Licencia', NULL, 'general'),
('regular-linkedin', 'LinkedIn', NULL, 'general'),
('regular-linkedin-url', 'http://es.linkedin.com/in/', NULL, 'url'),
('regular-login', 'Accede', NULL, 'general'),
('regular-logout', 'Cerrar sesión', NULL, 'general'),
('regular-looks_for', 'busca:', NULL, 'general'),
('regular-main-header', 'Goteo.org', NULL, 'general'),
('regular-mandatory', 'Campo obligatorio!', NULL, 'general'),
('regular-media_legend', 'Leyenda', NULL, 'general'),
('regular-menu', 'Menú', NULL, 'general'),
('regular-message_fail', 'Ha habido algun error al enviar el mensaje', NULL, 'general'),
('regular-message_success', 'Mensaje enviado correctamente', NULL, 'general'),
('regular-months', 'meses', NULL, 'general'),
('regular-more_info', '+ info', NULL, 'general'),
('regular-news', 'Noticias:', NULL, 'general'),
('regular-new_project', 'Proyecto nuevo', NULL, 'project'),
('regular-no', 'No', NULL, 'general'),
('regular-onrun_mark', 'En marcha!', NULL, 'widget'),
('regular-preview', 'Previsualizar', NULL, 'general'),
('regular-projects', 'proyectos', NULL, 'general'),
('regular-published_no', 'Borrador', NULL, 'general'),
('regular-published_yes', 'Publicado', NULL, 'general'),
('regular-read_more', 'Leer más', NULL, 'general'),
('regular-review_board', 'Panel revisor', NULL, 'general'),
('regular-round', 'ª ronda', NULL, 'general'),
('regular-save', 'Guardar', NULL, 'general'),
('regular-search', 'Buscar', NULL, 'general'),
('regular-see_all', 'Ver todos', NULL, 'general'),
('regular-see_blog', 'Blog', NULL, 'general'),
('regular-see_details', 'Ver detalles', NULL, 'general'),
('regular-see_more', 'Ver más', NULL, 'general'),
('regular-send_message', 'Enviar mensaje', NULL, 'general'),
('regular-share-facebook', 'Goteo en Facebook', NULL, 'general'),
('regular-share-rss', 'RSS/BLOG', NULL, 'general'),
('regular-share-twitter', 'Síguenos en Twitter', NULL, 'general'),
('regular-share_this', 'Compartir en:', NULL, 'general'),
('regular-sorry', 'Lo sentimos', NULL, 'general'),
('regular-success_mark', 'Exitoso!', NULL, 'widget'),
('regular-thanks', 'Gracias', NULL, 'general'),
('regular-total', 'Total', NULL, 'general'),
('regular-translate_board', 'Panel traductor', NULL, 'general'),
('regular-twitter', 'Twitter', NULL, 'general'),
('regular-twitter-url', 'http://twitter.com/#!/', NULL, 'url'),
('regular-view_project', 'Ver proyecto', NULL, 'general'),
('regular-weeks', 'semanas', NULL, 'general'),
('regular-yes', 'Sí', NULL, 'general'),
('review-ajax-alert', 'Los criterios y los campos de evaluación / mejoras se guardan automáticamente al modificarse', NULL, 'bluead'),
('review-closed-alert', 'Has dado por terminada esta revisión, no puedes realizar más cambios', NULL, 'bluead'),
('rewards-field-individual_reward-amount', 'Importe financiado', NULL, 'rewards'),
('rewards-field-individual_reward-description', 'Descripción', NULL, 'rewards'),
('rewards-field-individual_reward-other', 'Especificar el tipo de recompensa', NULL, 'rewards'),
('rewards-field-individual_reward-reward', 'Recompensa', NULL, 'rewards'),
('rewards-field-individual_reward-type', 'Tipo de recompensa', NULL, 'rewards'),
('rewards-field-individual_reward-units', 'Unidades', NULL, 'rewards'),
('rewards-field-social_reward-description', 'Descripción', NULL, 'rewards'),
('rewards-field-social_reward-license', 'Opciones de licencia', NULL, 'rewards'),
('rewards-field-social_reward-other', 'Especificar el tipo de retorno', NULL, 'rewards'),
('rewards-field-social_reward-reward', 'Retorno', NULL, 'rewards'),
('rewards-field-social_reward-type', 'Tipo de retorno', NULL, 'rewards'),
('rewards-fields-individual_reward-title', 'Recompensas individuales', NULL, 'rewards'),
('rewards-fields-social_reward-title', 'Retornos colectivos', NULL, 'rewards'),
('rewards-main-header', 'Retornos y recompensas', NULL, 'rewards'),
('social-account-facebook', 'http://www.facebook.com/pages/Goteo/268491113192109', NULL, 'social'),
('social-account-google', 'https://plus.google.com/b/116559557256583965659/', NULL, 'social'),
('social-account-identica', 'http://identi.ca/goteofunding', NULL, 'social'),
('social-account-linkedin', 'Página Goteo LinkedIn', NULL, 'social'),
('social-account-twitter', 'http://twitter.com/goteofunding', NULL, 'social'),
('step-1', 'Perfil', NULL, 'profile'),
('step-2', 'Promotor/a', NULL, 'personal'),
('step-3', 'Descripción', NULL, 'overview'),
('step-4', 'Costes', NULL, 'costs'),
('step-5', 'Retorno', NULL, 'rewards'),
('step-6', 'Colaboraciones', NULL, 'supports'),
('step-7', 'Previsualización', NULL, 'preview'),
('step-costs', 'Paso 4: Proyecto / Costes', NULL, 'costs'),
('step-overview', 'Paso 3: Descripción del proyecto', NULL, 'overview'),
('step-preview', 'Proyecto / Previsualización', NULL, 'preview'),
('step-rewards', 'Paso 5: Proyecto / Retornos', NULL, 'rewards'),
('step-supports', 'Paso 6: Proyecto / Colaboraciones', NULL, 'supports'),
('step-userPersonal', 'Paso 2: Datos personales', NULL, 'personal'),
('step-userProfile', 'Paso 1: Usuario / Perfil', NULL, 'profile'),
('supports-field-description', 'Descripción', NULL, 'supports'),
('supports-field-support', 'Resumen', NULL, 'supports'),
('supports-field-type', 'Tipo de ayuda', NULL, 'supports'),
('supports-fields-support-title', 'Colaboraciones', NULL, 'supports'),
('supports-main-header', 'Solicitud de colaboraciones', NULL, 'supports'),
('tooltip-dashboard-user-access_data', 'Estos son tus datos actuales de acceso. Lo único que no se puede cambiar es el login de usuario.', NULL, 'general'),
('tooltip-dashboard-user-change_email', 'Desde aquí puedes cambiar la dirección de correo electrónico en que recibes los mensajes de Goteo.', NULL, 'general'),
('tooltip-dashboard-user-change_password', 'Desde aquí puedes cambiar la contraseña con que accedes a Goteo.', NULL, 'general'),
('tooltip-dashboard-user-confirm_email', 'Confirma la nueva dirección de correo electrónico en que quieres recibir los mensajes de Goteo.', NULL, 'general'),
('tooltip-dashboard-user-confirm_password', 'Confirma la nueva contraseña con que quieres acceder a Goteo.', NULL, 'general'),
('tooltip-dashboard-user-new_email', 'Indica la nueva dirección de correo electrónico en que quieres recibir los mensajes de Goteo.', NULL, 'general'),
('tooltip-dashboard-user-new_password', 'Escribe la nueva contraseña con que quieres acceder a Goteo.', NULL, 'general'),
('tooltip-dashboard-user-user_password', 'Escribe la contraseña actual con que accedes a Goteo.', NULL, 'general'),
('tooltip-project-about', 'Describe brevemente el proyecto de modo conceptual, técnico o práctico. Por ejemplo detallando sus características de funcionamiento, o en qué partes consistirá. Piensa en cómo será una vez acabado y todo lo que la gente podrá hacer con él.', NULL, 'overview'),
('tooltip-project-category', 'Selecciona tantas categorías como creas necesario para describir el proyecto, basándote en todo lo que has descrito arriba. Mediante estas palabras clave lo podremos hacer llegar a diferentes usuarios de Goteo.', NULL, 'overview'),
('tooltip-project-comment', '¿Tienes dudas o comentarios para que las lea el administrador de Goteo? Éste es lugar para explicar alguna parte de lo que has escrito de la que no estás seguro,  para proponer mejoras, etc.', NULL, 'preview'),
('tooltip-project-contract_birthdate', 'Indica la fecha de tu nacimiento. No se hará pública en ningún caso, nos interesa por temas estadísticos.', NULL, 'personal'),
('tooltip-project-contract_data', 'Ya sea como persona física o bien jurídica, es necesario que alguien figure como promotor/a del proyecto, y también para la interlocución con el equipo de Goteo. No tiene que coincidir necesariamente con el perfil de usuario del apartado anterior.', NULL, 'personal'),
('tooltip-project-contract_email', 'Dirección de correo electrónica principal asociada al proyecto. Aquí recibirás las notificaciones y mensajes del equipo de Goteo en relación al proyecto propuesto.', NULL, 'personal'),
('tooltip-project-contract_entity', 'Selecciona "Persona física" en el caso de que tú seas el/la promotor/a del proyecto y te representes a ti mismo/a. Si el promotor es un grupo es necesario para elegir la segunda opción que tenga un CIF propio, en ese caso elige "Persona jurídica". ', NULL, 'personal'),
('tooltip-project-contract_name', 'Deben ser tu nombre y apellidos reales. Ten en cuenta que figurarás como responsable del proyecto.', NULL, 'personal'),
('tooltip-project-contract_nif', 'Tu número de NIF o NIE con cifras y letra.', NULL, 'personal'),
('tooltip-project-contract_surname', 'P2-Consejo-5  Consejo para rellenar el apellido del responsable del proyecto', NULL, 'personal'),
('tooltip-project-cost-amount', 'Especifica el importe en euros de lo que consideras que implica este coste. No utilices puntos para las cifras de miles ok?', NULL, 'costs'),
('tooltip-project-cost-cost', 'Introduce un título lo más descriptivo posible de este coste.', NULL, 'costs'),
('tooltip-project-cost-dates', 'Indica entre qué fechas calculas que se va a llevar a cabo esa tarea o cubrir ese coste. Planifícalo empezando no antes de dos meses a partir de ahora, pues hay que considerar el plazo para revisar la propuesta, publicarla si es seleccionada y los 40 días de la primera financiación. No incluyas en este calendario la agenda de lo desarrollado anteriormente aunque es bueno que lo expliques en la descripción del proyecto. En la agenda sólo nos interesan las fases que quedan por hacer y buscan ser cofinanciadas.', NULL, 'costs'),
('tooltip-project-cost-description', 'Explica brevemente en qué consiste este coste.', NULL, 'costs'),
('tooltip-project-cost-required', 'Este punto es muy importante: en cada coste que introduzcas tienes que marcar si es imprescindible o bien adicional. Todos los costes marcados como imprescindibles se sumarán dando el valor del importe de financiación mínimo para el proyecto. La suma de los costes adicionales, en cambio, se podrá obtener durante la segunda ronda de financiación, después de haber obtenido los fondos imprescindibles.', NULL, 'costs'),
('tooltip-project-cost-type', 'Aquí debes especificar el tipo de coste: vinculado a una tarea (algo que requiere la habilidad o conocimientos de alguien), la obtención de material (consumibles, materias primas) o bien infraestructura (espacios, equipos, mobiliario).', NULL, 'costs'),
('tooltip-project-cost-type-material', 'Materiales necesarios para el proyecto como herramientas, papelería, equipos informáticos, etc.', NULL, 'types'),
('tooltip-project-cost-type-structure', 'Inversión en costes vinculados a un local, medio de transporte u otras infraestructuras básicas para llevar a cabo el proyecto.  ', NULL, 'types'),
('tooltip-project-cost-type-task', 'Tareas donde invertir conocimientos y/o habilidades para desarrollar alguna parte del proyecto.', NULL, 'types'),
('tooltip-project-costs', 'Cuanto más precisión en el desglose mejor valorará Goteo la información general del proyecto. ', NULL, 'costs'),
('tooltip-project-currently', 'Indica en qué fase se encuentra el proyecto actualmente respecto a su proceso de creación o ejecución.', NULL, 'overview'),
('tooltip-project-description', 'Describe el proyecto con un mínimo de 80 palabras (con menos marcará error). Explícalo de modo que sea fácil de entender para cualquier persona. Intenta darle un enfoque atractivo y social, resumiendo sus puntos fuertes, qué lo hace único, innovador o especial.', NULL, 'overview'),
('tooltip-project-entity_cif', 'Escribe el CIF (letra + número) de la organización.', NULL, 'personal'),
('tooltip-project-entity_name', 'Escribe el nombre de la organización tal como aparece en su CIF.', NULL, 'personal'),
('tooltip-project-entity_office', 'Escribe el cargo con el que representas a la organización (secretario/a, presidente/a, vocal...). ', NULL, 'personal'),
('tooltip-project-goal', 'Enumera las metas principales del proyecto, a corto y largo plazo, en todos los aspectos que consideres importante destacar. Se trata de otra oportunidad para contactar y conseguir el apoyo de gente que simpatice con esos objetivos.', NULL, 'overview'),
('tooltip-project-image', 'Pueden ser esquemas, pantallazos, fotografías, ilustraciones, storyboards, etc. (su licencia de autoría debe ser compatible con la que selecciones en el apartado 5). Te recomendamos que sean diversas y de buena resolución. Puedes subir tantas como quieras!', NULL, 'overview'),
('tooltip-project-image_upload', 'BORRAR', NULL, 'overview'),
('tooltip-project-individual_reward-amount', 'Importe a cambio del cual se puede obtener este tipo de recompensa. ', NULL, 'rewards'),
('tooltip-project-individual_reward-description', 'Explica brevemente en qué consistirá la recompensa para quienes cofinancien con este importe el proyecto.', NULL, 'rewards'),
('tooltip-project-individual_reward-icon-other', 'Especifica brevemente en qué consistirá este otro tipo de recompensa individual.', NULL, 'rewards'),
('tooltip-project-individual_reward-reward', 'Intenta que el título sea lo más descriptivo posible. Recuerda que puedes añadir más recompensas a continuación.', NULL, 'rewards'),
('tooltip-project-individual_reward-type', 'Selecciona el tipo de recompensa que el proyecto puede ofrecer a la gente que aporta esta cantidad.', NULL, 'rewards'),
('tooltip-project-individual_reward-units', 'Cantidad limitada de ítems que se pueden ofrecer individualizadamente a cambio de ese importe. Calcula que la suma total de todas las recompensas individuales del proyecto se acerquen al presupuesto mínimo de financiación que has establecido. También la posibilidad de incorporar las recompensas previas a medida que suba el importe, puedes empezar diciendo "Todo lo anterior más..."  ', NULL, 'rewards'),
('tooltip-project-individual_rewards', 'Aquí debes especificar la recompensa para quien apoye el proyecto, vinculada a una cantidad de dinero concreta. Elige bien lo que ofreces, intenta que sean productos/servicios atractivos o ingeniosos pero que no generen gastos extra de producción. Si no hay más remedio que tener esos gastos extra, calcula lo que cuesta producir esa recompensa (tiempo, materiales, envíos, etc) y oferta un número limitado. Piensa que tendrás que cumplir con todos esos compromisos al final de la producción del proyecto. ', NULL, 'rewards'),
('tooltip-project-keywords', 'A medida que introduzcas texto el sistema te sugerirá palabras clave que ya han escrito otros usuarios. Estas categorías ayudan a vincular tu proyecto con personas afines.', NULL, 'overview'),
('tooltip-project-lang', 'Indica en qué idioma cumplimentas el formulario del proyecto.', NULL, 'overview'),
('tooltip-project-main_address', 'Dirección fiscal de la persona u organización (según proceda).', NULL, 'personal'),
('tooltip-project-media', 'Copia y pega la dirección URL de un vídeo de presentación del proyecto, publicado previamente en Youtube o Vimeo. Esta parte es fundamental para atraer la atención de potenciales cofinanciadores y colaboradores, y cuanto más original sea mejor. Te recomendamos que tenga una duración de entre 2 y 4 minutos. ', NULL, 'overview'),
('tooltip-project-motivation', 'Explica qué motivos o circunstancias te han llevado a idear el proyecto, así como las comunidades o usuarios a las que va destinado. Te ayudará a conectar con personas movidas por ese mismo tipo de intereses, problemáticas o gustos.', NULL, 'overview'),
('tooltip-project-name', 'Escribe un nombre para titular el proyecto. Cuanto más breve mejor, para hacerlo más descriptivo puedes ampliarlo en el siguiente apartado.', NULL, 'overview'),
('tooltip-project-nsupport', 'Consejo para rellenar una nueva colaboración', NULL, 'supports'),
('tooltip-project-phone', 'Número de teléfono móvil o fijo, con su prefijo de marcado.', NULL, 'personal'),
('tooltip-project-post_address', 'Indica en caso necesario una dirección postal detallada.', NULL, 'personal'),
('tooltip-project-project_location', 'Indica el lugar donde se desarrollará el proyecto, en qué población o poblaciones se encuentra su impulsor o impulsores principales.', NULL, 'overview'),
('tooltip-project-related', 'Resume tu trayectoria o la del grupo impulsor del proyecto. ¿Qué experiencia tiene relacionada con la propuesta? ¿Con qué equipo de personas, recursos y/o infraestructuras cuenta? ', NULL, 'overview'),
('tooltip-project-resource', 'Indica aquí si cuentas con recursos adicionales, aparte de los que solicitas, para llevar a cabo el proyecto: fuentes de financiación, recursos propios o bien ya has hecho acopio de materiales. Puede suponer un aliciente para los potenciales cofinanciadores del proyecto.', NULL, 'costs'),
('tooltip-project-schedule', 'Visualización de cómo queda la agenda de producción de tu proyecto. Recuerda que sólo debes señalar las nuevas tareas a realizar, no las que ya se hayan efectuado.', NULL, 'general'),
('tooltip-project-scope', 'Indica el impacto geográfico que aspira a tener el proyecto (cada categoría incluye la anterior). ', NULL, 'project'),
('tooltip-project-social_reward-description', 'Explica brevemente el tipo de retorno colectivo que ofrecerá o permitirá el proyecto.', NULL, 'rewards'),
('tooltip-project-social_reward-icon-other', 'Especifica brevemente en qué consistirá este otro tipo de retorno colectivo.', NULL, 'rewards'),
('tooltip-project-social_reward-license', 'Aquí debes seleccionar una licencia de entre cada una del grupo que se muestran. Te recomendamos leerlas con calma antes de decidir, pero piensa que un aspecto importante para Goteo es que los proyectos dispongan de licencias lo más abiertas posible.', NULL, 'rewards'),
('tooltip-project-social_reward-reward', 'Intenta que el título sea lo más descriptivo posible. Recuerda que puedes añadir más recompensas a continuación.', NULL, 'rewards'),
('tooltip-project-social_reward-type', 'Especifica el tipo de retorno: ARCHIVOS DIGITALES como música, vídeo, documentos de texto, etc. CÓDIGO FUENTE de software informático. DISEÑOS de  planos o patrones. MANUALES en forma de kits, business plans, “how tos” o recetas. SERVICIOS como talleres, cursos, asesorías, acceso a websites, bases de datos online. ', NULL, 'rewards'),
('tooltip-project-social_rewards', 'Define el tipo de retorno o retornos del proyecto a los que se podrá acceder abiertamente, y la licencia que los debe regular. Si tienes dudas sobre qué opción escoger o lo que se adaptaría mejor a tu caso, <a href="http://www.goteo.org/contact" target="new">contáctanos</a> y te asesoraremos en este punto.', NULL, 'rewards'),
('tooltip-project-subtitle', 'Define con una frase un subtítulo que acabe de explicar en qué consistirá la iniciativa, que permita hacerse una idea mínima de para qué sirve o en qué consiste. Aparecerá junto al título del proyecto.', NULL, 'overview'),
('tooltip-project-support', 'Consejo para editar colaboraciones existentes', NULL, 'supports'),
('tooltip-project-support-description', 'Explica brevemente en qué consiste la ayuda que necesita el proyecto, para facilitar que la gente la reconozca y se anime a colaborar. \r\n', NULL, 'supports'),
('tooltip-project-support-support', 'Título descriptivo sobre la colaboración necesaria.', NULL, 'supports'),
('tooltip-project-support-type', 'Selecciona si el proyecto necesita ayuda en tareas concretas  o bien préstamos (de material, infraestructura, etc).  ', NULL, 'supports'),
('tooltip-project-support-type-lend', 'Préstamo temporal de material necesario para el proyecto, o bien de cesión de infraestructuras o espacios por un periodo determinado. También puede implicar préstamos permanentes, o sea regalos :)', NULL, 'types'),
('tooltip-project-support-type-task', 'Colaboración que requiera una habilidad para una tarea específica, ya sea a distancia mediante ordenador o bien presencialmente.', NULL, 'types'),
('tooltip-project-supports', 'En Goteo los proyectos pueden recibir otro tipo de ayudas además de aportaciones monetarias. Hay gente que a lo mejor no puede ayudar económicamente pero sí con su talento, tiempo, energía, etc.', NULL, 'supports'),
('tooltip-project-totals', 'Este gráfico muestra la suma de costes imprescindibles (mínimos para realizar el proyecto) y la suma de costes secundarios (importe óptimo) para las dos rondas de financiación. La primera ronda es de 40 días, para conseguir el importe mínimo imprescindible. Sólo si se consigue ese volumen de financiación se puede optar a la segunda ronda, de 40 días más, para llegar al presupuesto óptimo. A diferencia de la primera, en la segunda ronda se obtiene todo lo recaudado (aunque no se haya llegado al mínimo). ', NULL, 'costs'),
('tooltip-project-usubs', 'Marca la casilla en caso de que hayas subtitulado a otros idiomas el vídeo mediante Universal Subtitles: http://www.universalsubtitles.org/', NULL, 'overview'),
('tooltip-project-video', 'Considera aquí la posibilidad de publicar y enlazar un vídeo (en Youtube o Vimeo) donde expliques brevemente a la cámara el porqué de tu proyecto. Se trata de algo que pueda complementar el vídeo principal, con una persona que transmita su necesidad u originalidad, del modo más directo posible. Si te da corte hablar a la cámara, también puede ser alguna persona que conoces y sigue el proyecto o la idea y pueda hacer esta aportación como "fan". La empatía y necesidad de ver a alguien al otro lado del proyecto es muy importante para determinado tipo de cofinanciadores. ', NULL, 'overview'),
('tooltip-updates-allow_comments', 'tooltip-updates-allow_comments', NULL, 'project'),
('tooltip-updates-date', 'tooltip-updates-date', NULL, 'project'),
('tooltip-updates-home', 'Texto tooltip-updates-home', NULL, 'project'),
('tooltip-updates-image', 'tooltip-updates-image', NULL, 'project'),
('tooltip-updates-image_upload', 'tooltip-updates-image_upload', NULL, 'project'),
('tooltip-updates-media', 'tooltip-updates-media', NULL, 'project'),
('tooltip-updates-tags', 'Texto tooltip-updates-tags', NULL, 'project'),
('tooltip-updates-text', 'tooltip-updates-text', NULL, 'project'),
('tooltip-updates-title', 'tooltip-updates-title', NULL, 'project'),
('tooltip-user-about', 'Como red social, Goteo pretende ayudar a difundir y financiar proyectos interesantes entre el máximo de gente posible. Para eso es importante la información que puedas compartir sobre tus habilidades o experiencia (profesional, académica, aficiones, etc).\r\n', NULL, 'profile'),
('tooltip-user-avatar_upload', 'Texto tooltip subir imagen usuario', NULL, 'profile'),
('tooltip-user-contribution', 'Explica brevemente tus habilidades o los ámbitos en que podrías ayudar a un proyecto (traduciendo, difundiendo, testeando, programando, enseñando, etc).', NULL, 'profile'),
('tooltip-user-facebook', 'Esta red social puede ayudar a que difundas proyectos de Goteo que te interesan entre amigos y familiares.', NULL, 'profile'),
('tooltip-user-google', 'La red social de Google+ es muy nueva pero también puedes indicar tu usuario si ya la usas :)', NULL, 'profile'),
('tooltip-user-identica', 'Este canal puede ayudar a que difundas proyectos de Goteo entre la comunidad afín al software libre.', NULL, 'profile'),
('tooltip-user-image', 'No es obligatorio que pongas una fotografía en tu perfil, pero ayuda a que los demás usuarios te identifiquen.', NULL, 'personal'),
('tooltip-user-interests', 'Indica el tipo de proyectos que pueden conectar con tus intereses para cofinanciarlos y/o aportar con otros recursos, conocimientos o habilidades. Estas categorías son transversales, puedes seleccionar más de una.', NULL, 'profile'),
('tooltip-user-keywords', 'A medida que introduzcas texto el sistema te sugerirá palabras clave que ya han escrito otros usuarios. Estas categorías ayudan a vincular tu perfil con otras personas y con proyectos concretos.', NULL, 'profile'),
('tooltip-user-linkedin', 'Esta red social puede ayudar a que difundas proyectos de Goteo que te interesan entre contactos profesionales.', NULL, 'profile'),
('tooltip-user-location', 'Este dato es importante para poderte vincular con un grupo local de Goteo.', NULL, 'profile'),
('tooltip-user-name', 'Tu nombre o nickname dentro de Goteo. Lo puedes cambiar siempre que quieras (ojo: no es lo mismo que el login de acceso, que ya no se puede modificar).', NULL, 'profile'),
('tooltip-user-twitter', 'Esta red social puede ayudar a que difundas proyectos de Goteo de manera ágil y viral.', NULL, 'profile'),
('tooltip-user-webs', 'Indica las direcciones URL de páginas personales o de otro tipo vinculadas a ti.', NULL, 'profile'),
('translate-home-guide', 'Mensaje para el traductor', NULL, 'general'),
('user-account-inactive', 'La cuenta está desactivada. Debes recuperar la contraseña para activarla de nuevo', NULL, 'general'),
('user-activate-already-active', 'La cuenta de usuario ya está activada', NULL, 'register'),
('user-activate-fail', 'Error al activar la cuenta de usuario', NULL, 'general'),
('user-activate-success', 'La cuenta de usuario se ha activado correctamente', NULL, 'register'),
('user-changeemail-fail', 'Error al cambiar el email', NULL, 'general'),
('user-changeemail-success', 'El email se ha cambiado con éxito ;)', NULL, 'dashboard'),
('user-changeemail-title', 'Cambiar email', NULL, 'dashboard'),
('user-changepass-confirm', 'Confirmar nueva contraseña', NULL, 'dashboard'),
('user-changepass-new', 'Nueva contraseña', NULL, 'dashboard'),
('user-changepass-old', 'Contraseña actual', NULL, 'dashboard'),
('user-changepass-title', 'Cambiar contraseña', NULL, 'dashboard'),
('user-email-change-sended', 'Te hemos enviado un email para que confirmes el cambio de dirección electrónica', NULL, 'dashboard'),
('user-login-required', 'Debes iniciar sesión para interactuar con la comunidad de Goteo', NULL, 'bluead'),
('user-login-required-access', 'Debes iniciar sesión o solicitar permisos para acceder a esa sección', NULL, 'bluead'),
('user-login-required-to_create', 'Debes iniciar sesión para crear un proyecto', NULL, 'bluead'),
('user-login-required-to_invest', 'Debes iniciar sesión para cofinanciar un proyecto', NULL, 'bluead'),
('user-login-required-to_message', 'Debes iniciar sesión para enviar mensajes', NULL, 'bluead'),
('user-login-required-to_see', 'Debes iniciar sesión para ver esta página', NULL, 'bluead'),
('user-login-required-to_see-supporters', 'Debes iniciar sesión para ver los cofinanciadores', NULL, 'bluead'),
('user-message-send_personal-header', 'Envia un mensaje al usuario', NULL, 'public_profile'),
('user-password-changed', 'Has cambiado tu contraseña', NULL, 'dashboard'),
('user-personal-saved', 'Datos personales actualizados', NULL, 'dashboard'),
('user-prefer-saved', 'Tus preferencias de notificación se han guardado correctamente', NULL, 'dashboard'),
('user-preferences-mailing', 'Bloquear el envio de newsletter', NULL, 'dashboard'),
('user-preferences-rounds', 'Bloquear notificaciones de progreso de los proyectos que apoyo', NULL, 'dashboard'),
('user-preferences-threads', 'Bloquear notificaciones de respuestas en los mensajes que yo inicio', NULL, 'dashboard'),
('user-preferences-updates', 'Bloquear notificaciones de novedades sobre los proyectos que apoyo', NULL, 'dashboard'),
('user-profile-saved', 'Información de perfil actualizada', NULL, 'dashboard'),
('user-register-success', 'El usuario se ha registrado correctamente. A continuación recibirás un mensaje de correo para activarlo.', NULL, 'general'),
('user-save-fail', 'Ha habido algun problema al guardar los datos', NULL, 'dashboard'),
('validate-cost-field-dates', 'Debes indicar las fechas de inicio y final de este coste para poder valorar mejor el proyecto.', NULL, 'costs'),
('validate-project-costs-any_error', 'Falta alguna información en el desglose de costes', NULL, 'costs'),
('validate-project-field-about', 'La explicación del proyecto es demasiado corta', NULL, 'overview'),
('validate-project-field-costs', 'Recomendamos desglosar hasta 5 costes diferentes para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'costs'),
('validate-project-field-currently', 'Indica el estado del proyecto para mejorar la valoración del mismo, de cara a determinar si publicarlo en Goteo.', NULL, 'overview'),
('validate-project-field-description', 'La descripción del proyecto es demasiado corta', NULL, 'overview'),
('validate-project-individual_rewards', 'Indica hasta 5 recompensas individuales para mejorar la puntuación.', NULL, 'rewards'),
('validate-project-individual_rewards-any_error', 'Falta alguna información sobre recompensas individuales', NULL, 'rewards'),
('validate-project-social_rewards', 'Es obligatorio indicar como mínimo un retorno colectivo ', NULL, 'general'),
('validate-project-social_rewards-any_error', 'Falta alguna información sobre retornos colectivos', NULL, 'rewards'),
('validate-project-total-costs', 'El coste óptimo no puede superar en más de un 50% al coste mínimo. O subes los costes imprescindibles o bajas los costes adicionales.\r\n', NULL, 'general'),
('validate-project-userProfile-any_error', 'Hay algún error en la dirección URL introducida', NULL, 'profile'),
('validate-project-userProfile-web', 'Es recomendable indicar alguna web', NULL, 'profile'),
('validate-project-value-contract_email', 'La dirección de email no es correcta', NULL, 'register'),
('validate-project-value-contract_nif', 'El NIF no es correcto.', NULL, 'personal'),
('validate-project-value-description', 'La descripción del proyecto es demasiado corta	', NULL, 'overview'),
('validate-project-value-entity_cif', 'El CIF no es válido', NULL, 'personal'),
('validate-project-value-keywords', 'Indica un mínimo de 5 palabras clave del proyecto para mejorar la valoración del mismo, de cara a determinar si publicarlo en Goteo.', NULL, 'overview'),
('validate-project-value-phone', 'El formato de número de teléfono no es correcto.', NULL, 'personal'),
('validate-register-value-email', 'El email introducido no es válido', NULL, 'register'),
('validate-social_reward-license', 'Indicar una licencia para mejorar la puntuación', NULL, 'rewards'),
('validate-user-field-about', 'Cuenta algo sobre ti, para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile'),
('validate-user-field-avatar', 'Pon una imagen de perfil para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile'),
('validate-user-field-contribution', 'Explica qué podrías aportar en Goteo para mejorar la valoración del proyecto de cara a determinar si publicarlo en la plataforma.', NULL, 'profile'),
('validate-user-field-facebook', 'Pon tu cuenta de Facebook para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile'),
('validate-user-field-interests', 'Selecciona algún interés para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile'),
('validate-user-field-keywords', 'Indica hasta 5 palabras clave que te definan, para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile'),
('validate-user-field-linkedin', 'El campo de LinkedIn no es válido', NULL, 'profile'),
('validate-user-field-location', 'El lugar de residencia del usuario no es válido', NULL, 'profile'),
('validate-user-field-name', 'Pon tu nombre completo para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile'),
('validate-user-field-twitter', 'El usuario de Twitter no es válido', NULL, 'profile'),
('validate-user-field-web', 'Debes poner la dirección (URL) de la web', NULL, 'profile'),
('validate-user-field-webs', 'Pon tu página web para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `to_checker` text,
  `to_owner` text,
  `score` int(2) NOT NULL DEFAULT '0',
  `max` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision para evaluacion de proyecto' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review_comment`
--

DROP TABLE IF EXISTS `review_comment`;
CREATE TABLE IF NOT EXISTS `review_comment` (
  `review` bigint(20) unsigned NOT NULL,
  `user` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `evaluation` text,
  `recommendation` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review`,`user`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comentarios de revision';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review_score`
--

DROP TABLE IF EXISTS `review_score`;
CREATE TABLE IF NOT EXISTS `review_score` (
  `review` bigint(20) unsigned NOT NULL,
  `user` varchar(50) NOT NULL,
  `criteria` bigint(20) unsigned NOT NULL,
  `score` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`review`,`user`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Puntuacion por citerio';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reward`
--

DROP TABLE IF EXISTS `reward`;
CREATE TABLE IF NOT EXISTS `reward` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `reward` tinytext,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `other` tinytext COMMENT 'Otro tipo de recompensa',
  `license` varchar(50) DEFAULT NULL,
  `amount` int(5) DEFAULT NULL,
  `units` int(5) DEFAULT NULL,
  `fulsocial` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Retorno colectivo cumplido',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Retornos colectivos e individuales' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reward_lang`
--

DROP TABLE IF EXISTS `reward_lang`;
CREATE TABLE IF NOT EXISTS `reward_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `reward` tinytext,
  `description` text,
  `other` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
('admin', 'Administrador'),
('checker', 'Revisor de proyectos'),
('root', 'ROOT'),
('superadmin', 'Super administrador'),
('translator', 'Traductor de contenidos'),
('user', 'Usuario mediocre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE IF NOT EXISTS `sponsor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `url` tinytext,
  `image` int(10) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Patrocinadores' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support`
--

DROP TABLE IF EXISTS `support`;
CREATE TABLE IF NOT EXISTS `support` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `support` tinytext,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `thread` bigint(20) unsigned DEFAULT NULL COMMENT 'De la tabla message',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Colaboraciones' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support_lang`
--

DROP TABLE IF EXISTS `support_lang`;
CREATE TABLE IF NOT EXISTS `support_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `support` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `blog` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tags de blogs (de nodo)' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag_lang`
--

DROP TABLE IF EXISTS `tag_lang`;
CREATE TABLE IF NOT EXISTS `tag_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE IF NOT EXISTS `template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `purpose` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Plantillas emails automáticos' AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `template`
--

INSERT INTO `template` (`id`, `name`, `purpose`, `title`, `text`) VALUES
(1, 'Mensaje de contacto', 'Plantilla para un mensaje de contacto desde Goteo', 'Contacto desde Goteo: %SUBJECT%', ''),
(2, 'Mensaje a los cofinanciadores', 'Plantilla del mensaje masivo a cofinanciadores desde dashboard - gestión de retornos', 'Mensaje de un promotor', ''),
(3, 'Mensaje al autor', 'Plantilla del mensaje al autor después de aportar a su proyecto', 'Mensaje de un/a cofinanciador/a de %PROJECTNAME%', ''),
(4, 'Mensaje entre usuarios', 'Mensaje de un usuario a otro desde la página de perfil del destinatario', 'Mensaje personal de %USERNAME% desde Goteo', ''),
(5, 'Confirmación de registro', 'Plantilla del mensaje de confirmación de registro', 'Confirmación de registro en Goteo', ''),
(6, 'Recuperar contraseña', 'Plantilla para el mensaje al solicitar la recuperación de contraseña', 'Petición de recuperación de contraseña en Goteo', ''),
(7, 'Cambio de email', 'Plantilla del mensaje al cambiar el email', 'Petición de cambio de email en Goteo', ''),
(8, 'Confirmacion de proyecto enviado', 'Mensaje al usuario cuando envia un proyecto a revisión desde el preview del formulario', 'El proyecto %PROJECTNAME% ha pasado a fase de valoración', ''),
(9, 'Darse de baja', 'Plantilla para el mensaje al solicitar la baja', 'Solicitud de baja en Goteo', ''),
(10, 'Agradecimiento aporte', 'Mensaje al usuario después de aportar a un proyecto', 'Gracias por cofinanciar el proyecto %PROJECTNAME%', ''),
(11, 'Comunicación desde admin', 'Plantilla para un mensaje de comunicación enviado desde admin a los destinatarios seleccionados', 'El asunto lo pone el admin', ''),
(12, 'Mensaje al autor de un thread', 'Plantilla del mensaje al autor de un hilo de mensajes cuando hay una respuesta', 'Respuesta a tu mensaje en el proyecto %PROJECTNAME%', ''),
(13, 'Aviso de 8 días para fallar', 'Mensaje al autor de un proyecto cuando este está proximo (8 dias) a fallar (no minimo)', 'Al proyecto %PROJECTNAME% le faltan 8 días para caducar', ''),
(14, 'Aviso de 1 día para fallar', 'Mensaje al autor de un proyecto cuando este está condenado a fallar', 'Al proyecto %PROJECTNAME% le falta 1 día para caducar', ''),
(15, 'Agradecimiento cofinanciadores si supera primera', 'Mensaje a los cofinanciadores de un proyecto cuando este supera la primera ronda', 'El proyecto %PROJECTNAME% ha pasado a segunda ronda en Goteo', ''),
(16, 'Agradecimiento cofinanciadores final segunda', 'Mensaje a los cofinanciadores de un proyecto cuando este llega al final de la segunda ronda', 'El proyecto %PROJECTNAME% ha finalizado la segunda ronda', ''),
(17, 'Aviso cofinanciadores proyecto fallido', 'Mensaje a los cofinanciadores de un proyecto cuando este caduca sin conseguir el mínimo', 'El proyecto %PROJECTNAME% no ha logrado su objetivo mínimo en Goteo :(', ''),
(18, 'Aviso cofinanciadores novedade en proyecto', 'Mensaje a los cofinanciadores de un proyecto cuando se publica una novedad en este', 'El proyecto %PROJECTNAME% ha publicado novedades', ''),
(19, 'Recuerdo al autor a los 20 días', 'Mensaje al autor de un proyecto cuando este lleva 20 días de campaña', 'El proyecto %PROJECTNAME% lleva 20 días en campaña', ''),
(20, 'Notificación al autor proyecto supera primera ronda', 'Mensaje al autor de un proyecto cuando este pasa a segunda ronda', 'El proyecto %PROJECTNAME% ha pasado a segunda ronda', ''),
(21, 'Notificación al autor proyecto fallido', 'Mensaje al autor de un proyecto cuando este caduca sin conseguir el mínomo', 'El proyecto %PROJECTNAME% ha caducado', ''),
(22, 'Notificación al autor proyecto fin segunda ronda', 'Mensaje al autor de un proyecto cuando este finaliza la segunda ronda', 'El proyecto %PROJECTNAME% ha finalizado la segunda ronda', ''),
(23, 'Recuerdo al autor proyecto sin novedades', 'Mensaje mensual al autor de un proyecto si no ha publicado novedades durante 3 meses', 'El proyecto %PROJECTNAME% sin novedades', ''),
(24, 'Recuerdo al autor proyecto sin actividad', 'Mensaje bisemanal al autor de un proyecto si este no ha tenido actividad durante 3 meses', 'El proyecto %PROJECTNAME% sin actividad', ''),
(25, 'Recuerdo al autor proyecto financiado', 'Mensaje al autor de un proyecto después de 2 meses de haber sido financiado', 'El proyecto %PROJECTNAME% hace 2 meses que se financió', ''),
(26, 'Informa al autor de proyecto listo para traducción', 'Plantilla del mensaje al autor al habilitar la traducción de su proyecto', 'Ya puedes traducir tu proyecto %PROJECTNAME%', ''),
(27, 'Aviso a los talleristas', 'Plantilla del mensaje a los usuarios que aun tienen su email como contraseña', 'El crowdfunding de Goteo.org en marcha', ''),
(28, 'Agradecimiento donativo', 'Mensaje al usuario aporta renunciando a la recompensa', 'Gracias por tu donativo al proyecto %PROJECTNAME%', ''),
(29, 'Notificación de nuevo aporte al autor', 'Mensaje al autor de un proyecto cuando un nuevo aporte', 'Nuevo aporte al proyecto %PROJECTNAME%', ''),
(30, 'Notificacion nuevo thread', 'Mensaje al autor de un proyecto cuando se abre un nuevo hilo de mensajes', 'Nuevo hilo de mensajes en el proyecto %PROJECTNAME%', ''),
(31, 'Notificación comentario en novedades', 'Mensaje al autor de un proyecto cuando hay un comentario en las novedades', 'Nuevo comentario en las Novedades del proyecto %PROJECTNAME%', ''),
(32, 'Informa al autor de convocatoria lista para traducción', 'Plantilla del mensaje al convocador al habilitar la traducción de su Convocatoria', 'Ya puedes traducir tu convocatoria %CALLNAME%', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_lang`
--

DROP TABLE IF EXISTS `template_lang`;
CREATE TABLE IF NOT EXISTS `template_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporades`
--

DROP TABLE IF EXISTS `temporades`;
CREATE TABLE IF NOT EXISTS `temporades` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `descripcio` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `temporades`
--

INSERT INTO `temporades` (`id`, `nom`, `descripcio`) VALUES
(1, 'Primera temporada', 'A un lluitador professor de química Walter White (Cranston) li diagnostiquen un càncer inoperable de pulmó avançat. En un viatge al costat del seu agent cunyat de la DEA, Hank (Dean Norris), Walter veu un antic alumne seu, en Jesse (Pau), fugint de l''escena d''un laboratori de metamfetamina. Més tard, en Jesse contacta amb en Walter i idea un pla per convertir-se en socis en un intent de combinar les seves habilitats per elaborar i distribuir metamfetamina. Walter diu que necessita diners perquè vol donar estabilitat financera a la seva dona embarassada, Skyler (Gunn) i el seu fill discapacitat, i per pagar el seu tractament contra el càncer. Durant els seus primers dies es troben amb una sèrie de problemes amb els narcotraficants locals.'),
(2, 'Segona temporada', 'En Walter es segueix trobant davant insuperables despeses mèdiques del seu tractament contra el càncer. Malgrat haver tingut diverses males experiències, mentre feia la producció de metamfetamina amb en Jesse, Walter es compromet a reunir-se amb la seva parella. Els dos comencen a produir metamfetamina, però tenen múltiples problemes. Un amic d’en Jesse, Badger (Matt L. Jones), és arrestat mentre fa la venda de metamfetamina en una operació encoberta. Walter contracta un advocat, Saul Goodman (Bob Odenkirk), per ajudar-lo. En Walter i en Jesse produeixen metamfetamina en una autocaravana en ple desert durant quatre dies. Més tard, Combo, un altre dels amics de Jesse i distribuïdors, és assassinat per una banda rival per vendre metamfetamina al seu territori. Saül els suggereix que els dos trobin un nova manera de fer distribució. Durant la temporada, en Jesse ha estat establint una relació amb la seva veïna i propietària de la casa que té llogada, Jane. La Jane s''està recuperant d''una addicció, però els dos recauen i comencen a consumir heroïna. Saül els troba un nou soci comercial, Gus Fring (Giancarlo Esposito), que està disposat a pagar $ 1,2 milions per als 38 quilos de metamfetamina produïda. Walter precipitadament lliura el producte a Gus, però es perd el naixement de la seva filla. Walt visita la casa d’en Jesse i veu que la Jane vomita mentre dorm, però no fa res per salvar-la. Skyler s''enfronta a Walter per les seves freqüents absències i excuses. Ella comença a reconstruir la seva vida, i li exigeix que es separin.'),
(3, 'Tercera temporada', 'Walter vol reunir a la seva família, però Skyler segueix sospitant de la segona vida d’en Walter. Walter creu que pot millorar la relació que hi ha entre ells en confessar-l’hi que ell és productor de metamfetamina. La Skyler està consternada per la confessió i exigeix un divorci formal. Mentrestant, Gus s''ofereix a pagar Walter tres milions de dòlars pels tres mesos del seu servei. Fins i tot s''ofereix a proporcionar-li a en Walter una planta de producció i un assistent de laboratori brillant, Gale (David Costabile). En Jesse continua produint i venent metamfetamina per si mateix. En Hank investiga en Jesse i poc a poc recol•lecta proves per arrestar-lo. En Jesse amenaça en Walter en explicar-ho tot a la policia si l’ arresten, però en Walter li ofereix la posició d’en Gale al laboratori. Després d''obtenir la posició, Jesse comença a robar mètodes del laboratori i vendre en secret. Jesse té una relació sentimental amb una dona que coneix en al seu grup de rehabilitació i s''assabenta que el seu germà petit, de 11 anys, va ser posat per en Gus i els seus traficants al carrer per matar en Combo. Jesse decideix venjar en Combo. En Walter i en Jesse demanen ajuda per escapar de la ira d’en Gus. Gus comença en perdre la confiança d’en Walter  i li pregunta a en Gale si li interessaria fer-se càrrec del laboratori i ordena als seus sequaços matar Walter i en Jesse. En Walter és segrestat, però dóna instruccions a en Jesse de matar en Gale per ser els únics cuiners de metamfetamina.'),
(4, 'Quarta temporada', 'En Jesse segueix les instruccions d’en Walter mata en Gale. En Gus decideix disciplinar-los amb l''aplicació de polítiques més estrictes en el laboratori. També intenta trencar l''amistat d’en Walter i en Jesse assignant-los diferents feines. Mentre en Walter treballa al laboratori de metamfetamina, en Jesse, acompanyant d’en Mike (Jonathan Banks), es dedica a fer cobraments. En Walter i en Jesse estan cada vegada més distanciats entre si. Mentrestant, en Hank, que s’ha estat recuperant del seu últim contacte amb el “cartel”, troba evidències que vinculen la mort d’en Gale amb en Gus. Ell creu que en Gus és un important distribuïdor de droga i comença a buscar proves tangibles per presentar càrrecs. En Gus s''adona dels estrets vincles d’en Walter amb en Hank i creu que podria posar en risc la seva operació. En Gus amenaça en Walter en matar a tota la seva família. En Jesse i en Walter aparten les seves diferències a un costat i es posen d''acord per assassinar en Gus convencent un antic membre del “cartel” perquè detoni una bomba suïcida, l’Hèctor té èxit, matant-se a si mateix i en Gus. En Walter i en Jesse destrueixen el laboratori de metamfetamina i en Walter li diu a la seva dona, "jo he guanyar."\n'),
(5, 'Cinquena temporada', 'La primera meitat de la temporada es centra en la reactivació de la producció de metamfetamina d’en Walt i en Jesse. La història gira entorn el matrimoni deteriorat entre en Walt i la Skyler. En Walt intimida la seva esposa i finalment la porta a un intent de suïcidi per forçar-lo a col•locar els seus fills a casa de la seva germana, perquè estiguin fora de perill.  En Walt, en Jesse i en Mike treballen plegats per refer el negoci desprès de la mort d’en Gust. Inicialment, en Walt decideix que no vol posar fi a la seva carrera de producció de metamfetamina i convenç en Jesse i en Mike per iniciar un imperi conjuntament. En Mike s''encarrega de la distribució i cobraments del negoci, mentre que en Walt i en Jesse segueixen produint en cases que s’estan fumigant. La  DEA té en Mike cada vegada més acorralat, i aquest decideix que és hora de sortir del negoci per sempre. Després que Mike es negui a donar a en Walt els deu noms dels enllaços (nou presos més un advocat) que podrien implicar en Walt aquest el mata. Mentrestant, en Jesse segueix se sentint malament per l''assassinat d''un nen després d''un robatori de metilamina i es tanca a casa. En Walt segueix produint amb en Todd, un dels membres de la plantilla del fumigador. Fa enviaments de metamfetamina a la República Txeca i hi guanya molts diners. De tota manera, la Skyler demana a en Walt "quant serà suficient?" ja que ha acumulat molts diners per comptar i blanquejar. La primera meitat de la temporada acaba mostrant en Hank trobant el llibre que li va donar en Gale a en \nWalt i al veure la línia "Al meu altre favorit WW" a la primera pàgina, es queda comprensió a la cara.\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `text`
--

DROP TABLE IF EXISTS `text`;
CREATE TABLE IF NOT EXISTS `text` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'es',
  `text` text NOT NULL,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Textos multi-idioma';

--
-- Volcado de datos para la tabla `text`
--

INSERT INTO `text` (`id`, `lang`, `text`) VALUES
('blog-coments-header', 'ca', 'Comentaris'),
('blog-coments-header', 'de', 'Kommentare'),
('blog-coments-header', 'en', 'Comments'),
('blog-comments', 'ca', 'Comentaris'),
('blog-comments', 'en', 'Comments'),
('blog-comments_no_allowed', 'ca', 'No es permeten comentaris en aquesta entrada'),
('blog-comments_no_allowed', 'de', 'Zu diesem Eintrag sind keine Kommentare erlaubt'),
('blog-comments_no_allowed', 'en', 'Comments are not allowed on this post'),
('blog-comments_no_comments', 'ca', 'No hi ha comentaris en aquesta entrada'),
('blog-comments_no_comments', 'de', 'Zu diesem Eintrag gibt es keine Kommentare'),
('blog-comments_no_comments', 'en', 'This post has no comments'),
('blog-main-header', 'ca', 'Blog de Goteo'),
('blog-main-header', 'en', 'Goteo Blog'),
('blog-no_comments', 'ca', 'Sense comentaris'),
('blog-no_comments', 'de', 'Ohne Kommentare'),
('blog-no_comments', 'en', 'No comment'),
('blog-no_posts', 'ca', 'No s''ha publicat cap entrada d''actualització'),
('blog-no_posts', 'de', 'Es wurde kein Eintrag veröffentlicht'),
('blog-no_posts', 'en', 'No posts have been published'),
('blog-send_comment-button', 'ca', 'Enviar'),
('blog-send_comment-button', 'de', 'Senden'),
('blog-send_comment-button', 'en', 'Send'),
('blog-send_comment-header', 'ca', 'Escriu el teu comentari'),
('blog-send_comment-header', 'de', 'Verfasse deinen Kommentar'),
('blog-send_comment-header', 'en', 'Write a comment'),
('blog-side-last_comments', 'ca', 'Darrers comentaris'),
('blog-side-last_comments', 'de', 'Letzte Kommentare'),
('blog-side-last_comments', 'en', 'Latest comments'),
('blog-side-last_posts', 'ca', 'Darreres entrades'),
('blog-side-last_posts', 'de', 'Letzte Einträge'),
('blog-side-last_posts', 'en', 'Latest posts'),
('blog-side-tags', 'ca', 'Categories de projecte'),
('blog-side-tags', 'de', 'Kategorien'),
('blog-side-tags', 'en', 'Categories'),
('community-menu-activity', 'ca', 'Activitat'),
('community-menu-activity', 'de', 'Aktivitäten'),
('community-menu-activity', 'en', 'Activity'),
('community-menu-main', 'ca', 'Comunitat'),
('community-menu-main', 'de', 'Community'),
('community-menu-main', 'en', 'Community'),
('community-menu-sharemates', 'ca', 'Compartint'),
('community-menu-sharemates', 'de', 'Teilen'),
('community-menu-sharemates', 'en', 'Sharing'),
('contact-email-field', 'ca', 'Email'),
('contact-email-field', 'en', 'Email address'),
('contact-message-field', 'ca', 'Missatge'),
('contact-message-field', 'en', 'Message'),
('contact-send_message-button', 'ca', 'Enviar'),
('contact-send_message-button', 'en', 'Send'),
('contact-send_message-header', 'ca', 'Envia''ns un missatge'),
('contact-send_message-header', 'en', 'Send us a message'),
('contact-subject-field', 'ca', 'Tema'),
('contact-subject-field', 'en', 'Subject'),
('cost-type-lend', 'ca', 'Préstec'),
('cost-type-lend', 'en', 'Loan'),
('cost-type-material', 'ca', 'Material'),
('cost-type-material', 'en', 'Material'),
('cost-type-structure', 'ca', 'Infraestructura'),
('cost-type-structure', 'en', 'Infrastructure'),
('cost-type-task', 'ca', 'Tasca'),
('cost-type-task', 'en', 'Task'),
('costs-field-amount', 'ca', 'Valor'),
('costs-field-amount', 'en', 'Value'),
('costs-field-cost', 'ca', 'Cost'),
('costs-field-cost', 'en', 'Expense'),
('costs-field-dates', 'ca', 'Dates'),
('costs-field-dates', 'en', 'Dates'),
('costs-field-date_from', 'ca', 'Des de'),
('costs-field-date_from', 'en', 'From'),
('costs-field-date_until', 'ca', 'Fins'),
('costs-field-date_until', 'en', 'Until'),
('costs-field-description', 'ca', 'Descripció'),
('costs-field-description', 'en', 'Description'),
('costs-field-required_cost', 'ca', 'Aquest cost és'),
('costs-field-required_cost', 'en', 'This expense is'),
('costs-field-required_cost-no', 'ca', 'Addicional'),
('costs-field-required_cost-no', 'en', 'Supplemental'),
('costs-field-required_cost-yes', 'ca', 'Imprescindible'),
('costs-field-required_cost-yes', 'en', 'Necessary'),
('costs-field-resoure', 'ca', 'Altres recursos'),
('costs-field-resoure', 'en', 'Other resources'),
('costs-field-schedule', 'ca', 'Agenda de treball'),
('costs-field-schedule', 'en', 'Tasks schedule'),
('costs-field-type', 'ca', 'Tipus'),
('costs-field-type', 'en', 'Type'),
('costs-fields-main-title', 'ca', 'Desglossament de costos'),
('costs-fields-main-title', 'en', 'Breakdown of expenses'),
('costs-fields-metter-title', 'ca', 'Visualització de costos'),
('costs-fields-metter-title', 'en', 'View of expenses'),
('costs-fields-resources-title', 'ca', 'Recurs'),
('costs-fields-resources-title', 'en', 'Resource'),
('costs-main-header', 'ca', 'Aspectes econòmics'),
('costs-main-header', 'en', 'Expenses'),
('criteria-owner-section-header', 'ca', 'Respecte al creador/equip'),
('criteria-owner-section-header', 'en', 'About project responsible/team'),
('criteria-project-section-header', 'ca', 'Respecte al projecte'),
('criteria-project-section-header', 'en', 'About the project'),
('criteria-reward-section-header', 'ca', 'Respecte al retorn'),
('criteria-reward-section-header', 'en', 'About the rewards'),
('dashboard-header-main', 'ca', 'El meu panell'),
('dashboard-header-main', 'en', 'My dashboard'),
('dashboard-investors-mail-fail', 'ca', 'Error en enviar el missatge a %s: %s'),
('dashboard-investors-mail-fail', 'en', '    Message failed to %s: %s'),
('dashboard-investors-mail-nowho', 'ca', 'No s''han trobat destinataris'),
('dashboard-investors-mail-nowho', 'en', 'No recipient was found'),
('dashboard-investors-mail-sended', 'ca', 'Missatge enviat correctament a %s: %s'),
('dashboard-investors-mail-sended', 'en', 'Message sent correctly to %s: %s'),
('dashboard-investors-mail-sendto', 'ca', 'Enviat a %s dels teus cofinançadors:'),
('dashboard-investors-mail-sendto', 'en', 'Sent to %s of your backers:'),
('dashboard-investors-mail-text-required', 'ca', 'Escriu el missatge'),
('dashboard-investors-mail-text-required', 'en', 'Write the message'),
('dashboard-menu-activity', 'ca', 'Activitat'),
('dashboard-menu-activity', 'en', 'My activity'),
('dashboard-menu-activity-spread', 'ca', 'Difusió'),
('dashboard-menu-activity-spread', 'en', 'Spread the word'),
('dashboard-menu-activity-summary', 'ca', 'Resum'),
('dashboard-menu-activity-summary', 'en', 'Summary'),
('dashboard-menu-activity-wall', 'ca', 'El meu mur'),
('dashboard-menu-activity-wall', 'en', 'My wall'),
('dashboard-menu-admin_board', 'ca', 'Administració'),
('dashboard-menu-admin_board', 'en', 'Administration'),
('dashboard-menu-main', 'ca', 'Panell'),
('dashboard-menu-main', 'de', 'Mein Menü'),
('dashboard-menu-main', 'en', 'My panel'),
('dashboard-menu-profile', 'ca', 'Perfil'),
('dashboard-menu-profile', 'en', 'My profile'),
('dashboard-menu-profile-access', 'ca', 'Dades d''accés'),
('dashboard-menu-profile-access', 'en', 'Account details'),
('dashboard-menu-profile-personal', 'ca', 'Dades personals'),
('dashboard-menu-profile-personal', 'en', 'Personal information'),
('dashboard-menu-profile-preferences', 'ca', 'Preferències'),
('dashboard-menu-profile-preferences', 'en', 'Preferences'),
('dashboard-menu-profile-profile', 'ca', 'Editar perfil'),
('dashboard-menu-profile-profile', 'en', 'Edit profile'),
('dashboard-menu-profile-public', 'ca', 'Perfil públic'),
('dashboard-menu-profile-public', 'en', 'Public profile'),
('dashboard-menu-projects', 'ca', 'Projectes'),
('dashboard-menu-projects', 'en', 'My projects'),
('dashboard-menu-projects-contract', 'ca', 'Contracte'),
('dashboard-menu-projects-contract', 'en', 'Contract'),
('dashboard-menu-projects-preview', 'ca', 'Pàgina pública'),
('dashboard-menu-projects-preview', 'en', 'Public page'),
('dashboard-menu-projects-rewards', 'ca', 'Gestió cofinançadors'),
('dashboard-menu-projects-rewards', 'en', 'Manage benefits'),
('dashboard-menu-projects-summary', 'ca', 'Resum'),
('dashboard-menu-projects-summary', 'en', 'Summary'),
('dashboard-menu-projects-supports', 'ca', 'Col·laboracions '),
('dashboard-menu-projects-supports', 'en', 'Collaborations'),
('dashboard-menu-projects-updates', 'ca', 'Actualitzacions'),
('dashboard-menu-projects-updates', 'en', 'News'),
('dashboard-menu-projects-widgets', 'ca', 'Widget'),
('dashboard-menu-projects-widgets', 'en', 'Widget'),
('dashboard-menu-review_board', 'ca', 'Revisió'),
('dashboard-menu-review_board', 'en', 'Review'),
('dashboard-menu-translates', 'ca', 'Traduccions'),
('dashboard-menu-translates', 'en', 'My translations'),
('dashboard-menu-translate_board', 'ca', 'Traducció'),
('dashboard-menu-translate_board', 'en', 'Translation'),
('dashboard-password-recover-advice', 'ca', 'Assegura''t de restablir la teva contrasenya'),
('dashboard-password-recover-advice', 'en', 'You are recovering your password. Remember to put your user name in the "current password" field to change it.'),
('dashboard-project-blog-fail', 'ca', 'Contacta amb nosaltres'),
('dashboard-project-blog-fail', 'en', 'Contact us'),
('dashboard-project-blog-inactive', 'ca', 'Ho sentim, la publicació de novetats en aquest projecte està desactivada'),
('dashboard-project-blog-inactive', 'en', 'Sorry, you can''t publish news on this project right now.'),
('dashboard-project-blog-wrongstatus', 'ca', 'Ho sentim, encara no es poden publicar actualitzacions en aquest projecte'),
('dashboard-project-blog-wrongstatus', 'en', 'Sorry, you can''t publish news about this project yet...'),
('dashboard-project-delete_alert', 'ca', 'Segur que desitges eliminar absoluta i definitivament aquest projecte?'),
('dashboard-project-delete_alert', 'en', 'Are you sure you want to permanently delete this project?'),
('dashboard-project-updates-deleted', 'ca', 'Entada eliminada'),
('dashboard-project-updates-deleted', 'en', 'Post removed'),
('dashboard-project-updates-delete_fail', 'ca', 'Error en eliminar l''entrada'),
('dashboard-project-updates-delete_fail', 'en', 'Error while removing post'),
('dashboard-project-updates-fail', 'ca', 'Hi ha hagut algun problema en desar les dades'),
('dashboard-project-updates-fail', 'en', 'There was a problem saving the data'),
('dashboard-project-updates-inserted', 'ca', 'S''ha afegit una nova entrada'),
('dashboard-project-updates-inserted', 'en', 'New post added'),
('dashboard-project-updates-noblog', 'ca', 'No s''ha trobat cap blog per aquest projecte'),
('dashboard-project-updates-noblog', 'en', 'No blog was found for this project'),
('dashboard-project-updates-nopost', 'ca', 'No s''ha trobat l''entrada'),
('dashboard-project-updates-nopost', 'en', 'Post not found'),
('dashboard-project-updates-postcorrupt', 'ca', 'L''entrada s''ha corromput, contacta amb nosaltres'),
('dashboard-project-updates-postcorrupt', 'en', 'There is a problem with the post. Please contact us.'),
('dashboard-project-updates-saved', 'ca', 'L''entrada s''ha actualitzat correctament'),
('dashboard-project-updates-saved', 'en', 'Post updated correctly'),
('discover-banner-header', 'ca', 'Per categoria, lloc o retorn,<br /><span class="red">troba el projecte</span> amb que més t''identifiques'),
('discover-banner-header', 'de', '  Sortiert nach Kategorie, Ort oder Gegenleistung,<br /><span class="red">finde das Projekt</span> mit dem du dich am meisten identifizierst.'),
('discover-banner-header', 'en', '    By category, location or benefit,<br /><span class="red">find the project</span> that you identify with the most.'),
('discover-group-all-header', 'ca', 'En campanya'),
('discover-group-all-header', 'en', 'Campaign in progress'),
('discover-group-archive-header', 'ca', 'Arxivats '),
('discover-group-archive-header', 'en', 'Filed'),
('discover-group-outdate-header', 'ca', 'A punt de caducar'),
('discover-group-outdate-header', 'en', 'About to expire'),
('discover-group-popular-header', 'ca', 'Més populars'),
('discover-group-popular-header', 'en', 'Most popular'),
('discover-group-recent-header', 'ca', 'Recents'),
('discover-group-recent-header', 'en', 'Recent'),
('discover-group-success-header', 'ca', 'Reeixits '),
('discover-group-success-header', 'en', 'Successes'),
('discover-results-empty', 'ca', 'No hem trobat cap projecte que compleixi els criteris de cerca'),
('discover-results-empty', 'en', 'We did not find any project that matches your search criteria'),
('discover-results-header', 'ca', 'Resultat de la cerca'),
('discover-results-header', 'en', 'Search results'),
('discover-searcher-button', 'ca', 'Cercar'),
('discover-searcher-button', 'en', 'Search'),
('discover-searcher-bycategory-all', 'ca', 'TOTES'),
('discover-searcher-bycategory-all', 'en', 'ALL'),
('discover-searcher-bycategory-header', 'ca', 'Per categoria:'),
('discover-searcher-bycategory-header', 'en', 'By category:'),
('discover-searcher-bycontent-header', 'ca', 'Per contingut:'),
('discover-searcher-bycontent-header', 'en', 'By content:'),
('discover-searcher-bylocation-all', 'ca', 'TOTS'),
('discover-searcher-bylocation-all', 'en', 'ALL'),
('discover-searcher-bylocation-header', 'ca', 'Per lloc:'),
('discover-searcher-bylocation-header', 'en', 'By location:'),
('discover-searcher-byreward-all', 'ca', 'TOTS'),
('discover-searcher-byreward-all', 'en', 'ALL'),
('discover-searcher-byreward-header', 'ca', 'Per retorn:'),
('discover-searcher-byreward-header', 'en', 'By benefit:'),
('discover-searcher-header', 'ca', 'Cerca un projecte'),
('discover-searcher-header', 'en', 'Find a project'),
('error-contact-email-empty', 'ca', 'No has escrit el teu correu electrònic'),
('error-contact-email-empty', 'en', 'You didn''t add your email address'),
('error-contact-email-invalid', 'ca', 'El correu electrònic que has escrit no és vàlid'),
('error-contact-email-invalid', 'en', 'The email you entered is not valid.'),
('error-contact-message-empty', 'ca', 'No has escrit cap missatge'),
('error-contact-message-empty', 'en', 'You haven''t written a message'),
('error-contact-subject-empty', 'ca', 'No has escrit el tema del missatge'),
('error-contact-subject-empty', 'en', 'You didn''t enter a subject'),
('error-image-name', 'ca', 'Error en el nom de l''arxiu'),
('error-image-name', 'en', 'Error in the file name'),
('error-image-size', 'ca', 'Error en la mida de l''arxiu'),
('error-image-size', 'en', 'Error with the file size'),
('error-image-size-too-large', 'ca', 'La imatge és massa gran'),
('error-image-size-too-large', 'en', 'The image is too big.'),
('error-image-tmp', 'ca', 'Error en carregar l''arxiu'),
('error-image-tmp', 'en', 'Error while loading the file'),
('error-image-type', 'ca', 'Només es permeten imatges jpg, png i gif'),
('error-image-type', 'en', 'Only JPG, PNG, and GIF images are permitted'),
('error-image-type-not-allowed', 'ca', 'Només es permeten arxius d''imatge tipus .png .jpg .gif'),
('error-image-type-not-allowed', 'en', 'Only .png, .jpg, and .gif images are allowed.'),
('error-register-email', 'ca', 'L''adreça de correu és obligatòria'),
('error-register-email', 'en', 'The email field is required.'),
('error-register-email-confirm', 'ca', 'La comprovació de correu electrònic no coincideix'),
('error-register-email-confirm', 'en', 'The emails don''t match.'),
('error-register-email-exists', 'ca', 'L''adreça de correu facilitada correspon a un usuari ja registrat'),
('error-register-email-exists', 'en', 'The email you entered is registered to an existing user.'),
('error-register-invalid-password', 'ca', 'La contrasenya no és vàlida'),
('error-register-invalid-password', 'en', 'That password is not valid.'),
('error-register-password-confirm', 'ca', 'La comprovació de contrasenya no coincideix'),
('error-register-password-confirm', 'en', 'The passwords don''t match.'),
('error-register-pasword', 'ca', 'La contrasenya no pot estar buida'),
('error-register-pasword', 'en', 'You can''t leave the password field empty.'),
('error-register-pasword-empty', 'ca', 'No has posat contrasenya'),
('error-register-pasword-empty', 'en', 'You didn''t enter a password'),
('error-register-short-password', 'ca', 'La contrasenya ha de contenir un mínim de 8 caràcters'),
('error-register-short-password', 'en', 'The password should have at least 8 characters.'),
('error-register-user-exists', 'ca', 'Aquest nom d''usuari ja està registrat'),
('error-register-user-exists', 'en', 'That user name is already registered.'),
('error-register-userid', 'ca', 'És obligatori posar un nom d''accés'),
('error-register-userid', 'en', 'You have to enter a user name'),
('error-register-username', 'ca', 'El nom públic és obligatori.'),
('error-register-username', 'en', 'You have to enter a screen name.'),
('error-user-email-confirm', 'ca', 'La confirmació de correu electrònic no coincideix'),
('error-user-email-confirm', 'en', 'The email confirmation is not the same as the email.'),
('error-user-email-empty', 'ca', 'No pots deixar el camp d''email buit '),
('error-user-email-empty', 'en', 'You can''t leave the email field empty'),
('error-user-email-exists', 'ca', 'Ja hi ha un usuari registrat amb aquest email'),
('error-user-email-exists', 'en', 'There is already a registered user with that email address'),
('error-user-email-invalid', 'ca', 'L''email que has posat no és vàlid'),
('error-user-email-invalid', 'en', 'The email you entered is not valid.'),
('error-user-email-token-invalid', 'ca', 'El codi no és correcte'),
('error-user-email-token-invalid', 'en', 'The code is incorrect'),
('error-user-password-confirm', 'ca', 'La confirmació de contrasenya no coincideix'),
('error-user-password-confirm', 'en', 'The password confirmation is not the same as the password.'),
('error-user-password-empty', 'ca', 'No has posat la contrasenya'),
('error-user-password-empty', 'en', 'You didn''t enter a password'),
('error-user-password-invalid', 'ca', 'La contrasenya és massa curta'),
('error-user-password-invalid', 'en', 'The password is too short. It has to have at least 6 characters.'),
('error-user-wrong-password', 'ca', 'La contrasenya no és correcta'),
('error-user-wrong-password', 'en', 'The password is incorrect.'),
('explain-project-progress', 'ca', 'Aquest gràfic explica d''una manera visual el nivell de dades que has introduït juntament amb una avaluació bàsica que fa el sistema. Per poder enviar el projecte has de superar el 80%. Els criteris que fan pujar aquest "termòmetre" tenen a veure amb la informació rellevant que facilites, els media, imatges i links que introdueixes, si tries una llicència més oberta que una altre, la coherència del teu pressupost respecte a les tasques a desenvolupar, etc. No perdis de vista els consells de la columna dreta, que guien durant tot el procés.'),
('explain-project-progress', 'en', 'This graph explains in a visual way the level of data that you have entered together with a basic evaluation completed by the system. To be able to submit the project, you have to reach at least 80%. The criteria that make the “temperature” rise have to do with the relevant information that you provide, the media, images and links that you enter, the degree of openness of the license you choose, the coherence of your estimate with respect to the work that needs to be carried out, etc. Don''t forget to take advantage of the tooltips on the right that will guide you through the process.'),
('faq-ask-question', 'ca', 'No has pogut resoldre el teu dubte? Envia un missatge amb la teva pregunta'),
('faq-ask-question', 'en', 'Didn''t this solve your question? Send us a message.'),
('faq-investors-section-header', 'ca', 'Per a cofinançadors/es'),
('faq-investors-section-header', 'en', 'For co-financiers'),
('faq-main-section-header', 'ca', 'Una aproximació a Goteo'),
('faq-main-section-header', 'en', 'An approach to Goteo'),
('faq-nodes-section-header', 'ca', 'Sobre nodes locals'),
('faq-nodes-section-header', 'en', 'About local nodes'),
('faq-project-section-header', 'ca', 'Sobre els projectes'),
('faq-project-section-header', 'en', 'About the projects'),
('faq-sponsor-section-header', 'ca', 'Per a impulsors/es'),
('faq-sponsor-section-header', 'en', 'For promoters'),
('fatal-error-project', 'ca', 'Aquest projecte que cerques... <span class="red">no existeix :(</span>'),
('fatal-error-project', 'en', 'The project you''re looking for... <span class="red">does not exist :(</span>'),
('fatal-error-user', 'ca', 'L''usuari que cerques... <span class="red">no existeix :(</span>'),
('fatal-error-user', 'en', 'The user you''re looking for... <span class="red">does not exist :(</span>'),
('feed-blog-comment', 'ca', 'Ha escrit un <span class="green">Comentari</span> a l''entrada "%s" del blog de %s'),
('feed-blog-comment', 'en', 'Has written a <span class="green">Comment</span> at the post "%s" from the %s blog'),
('feed-head-community', 'ca', 'Comunitat'),
('feed-head-community', 'en', 'Community'),
('feed-head-goteo', 'ca', 'Breaking Bad'),
('feed-head-goteo', 'en', 'Goteo'),
('feed-head-projects', 'ca', 'Projectes'),
('feed-head-projects', 'en', 'Projects'),
('feed-header', 'ca', 'Activitat recent '),
('feed-header', 'en', 'Recent activity'),
('feed-invest', 'ca', 'Ha aportat %s al projecte %s'),
('feed-invest', 'en', 'Has contributed with %s to the %s project'),
('feed-messages-new_thread', 'ca', 'Ha obert un tema en %s del projecte %s'),
('feed-messages-new_thread', 'en', 'Has opened a thread at %s of the project %s'),
('feed-messages-response', 'ca', 'Ha respost en %s del projecte %s'),
('feed-messages-response', 'en', 'Has answered to %s of the project %s'),
('feed-new_project', 'ca', '<span class="red">Nou projecte a Goteo</span>, des d''ara tens 40 dies per a recolzar aquest projecte'),
('feed-new_project', 'en', '    <span class="red">New Goteo project</span>, you''ve got 40 days from today to support this project.'),
('feed-new_support', 'ca', 'Ha publicat una nova <span class="green">Col·laboració</span> al projecte %s, amb el títol "%s"'),
('feed-new_support', 'en', 'Has published a new <span class="green">Collaboration</span> at the %s project, with the title "%s"'),
('feed-new_update', 'ca', 'Ha publicat un nou post en %s sobre el projecte %s, amb el títol "%s"'),
('feed-new_user', 'ca', 'Nou usuari a Goteo %s'),
('feed-new_user', 'en', 'New Goteo user, %s'),
('feed-project_fail', 'ca', 'El projecte %s ha <span class="red">caducat sense èxit </span> obtenint <span class="violet">%s ? (%s %) d''aportacions sobre el mínim</span>'),
('feed-project_fail', 'en', '    The project, %s, has <span class="red">closed</span> having only received <span class="violet">%s ? (%s %) of the minimum contribution</span>'),
('feed-project_finish', 'ca', 'El projecte %s ha <span class="red">complert la segona ronda</span> obtenint <span class="violet">%s ? (%s %) d''aportacions sobre el mínim</span>'),
('feed-project_finish', 'en', '    The project, %s, has <span class="red">completed the second round</span> having received <span class="violet">%s ? (%s %) of the minimum contribution</span>'),
('feed-project_goon', 'ca', 'El projecte %s <span class="red">continua en campanya</span> en segona ronda obtenint <span class="violet">%s ? (%s %) d''aportacions sobre el mínim</span>'),
('feed-project_goon', 'en', '    The project, %s, <span class="red">will continue</span> in the second round since it received <span class="violet">%s ? (%s %) of the minimum required contributions</span>'),
('feed-project_runout', 'ca', 'Al projecte %s li queden <span class="red">%s dies</span> per a finalitzar la %sª ronda'),
('feed-project_runout', 'en', 'The %s project has <span class="red">%s more days</span> until the end of round number %s'),
('feed-side-top_ten', 'ca', 'Top ten cofinançadors'),
('feed-side-top_ten', 'en', 'Top ten co-financiers'),
('feed-timeago', 'ca', 'Fa %s'),
('feed-timeago', 'en', '%s ago'),
('feed-timeago-justnow', 'ca', 'res'),
('feed-timeago-justnow', 'en', 'just'),
('feed-timeago-periods', 'ca', 'segon-segons_minut-minuts_hora-hores_dia-dies_setmana-setmanes_mes-mesos_any-anys_dècada-dècades'),
('feed-timeago-periods', 'en', 'second-seconds_minute-minutes_hour-hours_day-days_week-weeks_month-months_year-years_decade-decades'),
('feed-timeago-published', 'ca', 'Publicat fa %s'),
('feed-timeago-published', 'en', 'Published %s ago'),
('feed-updates-comment', 'ca', 'Ha escrit un <span class="green">Comentari</span> a l''entrada "%s" en %s del prohecte %s'),
('feed-updates-comment', 'en', 'Has written a <span class="green">Comment</span> to the message "%s" on %s of the %s project'),
('footer-header-categories', 'ca', 'Categories'),
('footer-header-categories', 'de', 'Kategorien'),
('footer-header-categories', 'en', 'Categories'),
('footer-header-projects', 'ca', 'Projectes'),
('footer-header-projects', 'de', 'Projekte'),
('footer-header-projects', 'en', 'Projects'),
('footer-header-resources', 'ca', 'Recursos'),
('footer-header-resources', 'de', 'Ressourcen'),
('footer-header-resources', 'en', 'Resources'),
('footer-header-services', 'ca', 'Serveis'),
('footer-header-services', 'de', 'Dienstleistungen'),
('footer-header-services', 'en', 'Services'),
('footer-header-social', 'ca', 'Segueix-nos'),
('footer-header-social', 'de', 'Folge uns'),
('footer-header-social', 'en', 'Follow us'),
('footer-header-sponsors', 'ca', 'Suports institucionals'),
('footer-header-sponsors', 'de', 'Institutionelle Unterstützung'),
('footer-header-sponsors', 'en', 'Institutional support'),
('footer-platoniq-iniciative', 'ca', 'Una iniciativa de:'),
('footer-platoniq-iniciative', 'de', 'Eine Initiative von:'),
('footer-platoniq-iniciative', 'en', 'An initiative of:'),
('footer-resources-glossary', 'ca', 'Glossari '),
('footer-resources-glossary', 'de', 'Glossar'),
('footer-resources-glossary', 'en', 'Glossary'),
('footer-resources-press', 'ca', 'Premsa'),
('footer-resources-press', 'de', 'Presse'),
('footer-resources-press', 'en', 'Press Kit'),
('footer-service-campaign', 'ca', 'Campanyes'),
('footer-service-campaign', 'de', 'Kampagnen'),
('footer-service-campaign', 'en', 'Campaigns'),
('footer-service-consulting', 'ca', 'Consultoria'),
('footer-service-consulting', 'de', 'Beratung'),
('footer-service-consulting', 'en', 'Consulting firm'),
('footer-service-resources', 'ca', 'Capital d''irrigació'),
('footer-service-resources', 'de', 'Risikokapital'),
('footer-service-resources', 'en', 'Feeder capital'),
('footer-service-workshop', 'ca', 'Tallers'),
('footer-service-workshop', 'de', 'Workshops'),
('footer-service-workshop', 'en', 'Workshops'),
('form-accept-button', 'ca', 'Acceptar'),
('form-accept-button', 'en', 'OK'),
('form-add-button', 'ca', 'Afegir'),
('form-add-button', 'en', 'Add'),
('form-ajax-info', 'ca', 'El formulari de projecte es va desant segons passis per cada camp'),
('form-ajax-info', 'en', 'This form is saved automatically while you fill it out'),
('form-apply-button', 'ca', 'Aplicar'),
('form-apply-button', 'en', 'Apply'),
('form-errors-info', 'ca', 'Total: %s | En aquesta passa: %s'),
('form-errors-info', 'en', 'Total: %s | At this step: %s'),
('form-errors-total', 'ca', 'Hi ha %s errors en total'),
('form-errors-total', 'en', 'There''s %s errors in total'),
('form-footer-errors_title', 'ca', 'Errors'),
('form-footer-errors_title', 'en', 'Errors'),
('form-image_upload-button', 'ca', 'Pujar imatge'),
('form-image_upload-button', 'en', 'Upload image'),
('form-navigation_bar-header', 'ca', 'Anar a'),
('form-navigation_bar-header', 'en', 'Go to'),
('form-next-button', 'ca', 'Següent'),
('form-next-button', 'en', 'Next'),
('form-project-info_status-title', 'ca', 'Estat global de la informació'),
('form-project-info_status-title', 'en', 'Overall status of information'),
('form-project-progress-title', 'ca', 'Avaluació de dades'),
('form-project-progress-title', 'en', 'Data evaluation'),
('form-project-status-title', 'ca', 'Estat del projecte'),
('form-project-status-title', 'en', 'Project status'),
('form-project_status-campaing', 'ca', 'En campanya'),
('form-project_status-campaing', 'en', 'Campaign in progress'),
('form-project_status-cancel', 'ca', 'Rebutjat'),
('form-project_status-cancel', 'en', 'Discarded'),
('form-project_status-cancelled', 'ca', 'Cancel·lat'),
('form-project_status-cancelled', 'en', 'Canceled'),
('form-project_status-edit', 'ca', 'Editant-se'),
('form-project_status-edit', 'en', 'In review'),
('form-project_status-expired', 'ca', 'Caducat'),
('form-project_status-expired', 'en', 'Closed'),
('form-project_status-fulfilled', 'ca', 'Retorn complert'),
('form-project_status-fulfilled', 'en', 'Benefit completed'),
('form-project_status-review', 'ca', 'Pendent de valoració'),
('form-project_status-review', 'en', 'Evaluation pending'),
('form-project_status-success', 'ca', 'Finançat'),
('form-project_status-success', 'en', 'Funded'),
('form-project_waitfor-campaing', 'ca', 'Difon el teu projecte, ajuda a que aconsegueixi el màxim d''aportacions!'),
('form-project_waitfor-campaing', 'en', 'Spread the word about your project. Help get the most support!'),
('form-project_waitfor-cancel', 'ca', 'Finalment hem desestimat la proposta per publicar-la a Goteo, et convidem a intentar-ho amb una altra idea o concepte.'),
('form-project_waitfor-cancel', 'en', 'We have decided not to publish your proposal on Goteo, though we invite you to try again with a different idea or concept.'),
('form-project_waitfor-edit', 'ca', 'Quan ho tinguis llest envia-ho a revisió. Necessites arribar a un mínim d''informació sobre el projecte al formulari.'),
('form-project_waitfor-edit', 'en', 'When it''s ready, send it for review. You have to provide a minimum of information about your project on the form.'),
('form-project_waitfor-expired', 'ca', 'No ho has aconseguit :( Tracta de millorar-ho i intenta-ho de nou!'),
('form-project_waitfor-expired', 'en', 'It didn''t work out. Make it better and try again!'),
('form-project_waitfor-fulfilled', 'ca', 'Has complert amb els retorns :) Gràcies per la teva participació!'),
('form-project_waitfor-fulfilled', 'en', 'You''ve managed all the benefits. Thanks for participating!'),
('form-project_waitfor-review', 'ca', 'En breu ens posarem en contacte amb tu respecte al projecte, una vegada es dugui a terme el procés de revisió. A continuació ho publicarem o bé et suggerirem coses per millorar-lo.'),
('form-project_waitfor-review', 'en', 'We will get back to you as soon as we''ve had a chance to review your project. At that point, we will either post your project, or suggest ways to make it fit better on Goteo.'),
('form-project_waitfor-success', 'ca', 'Has aconseguit el mínim o més en aportacions de cofinançament pel projecte. De seguida et contactarem per parlar de diners :)'),
('form-project_waitfor-success', 'en', 'You have reached or surpassed your co-financing goal for this project. We will contact you shortly to talk about money :)'),
('form-remove-button', 'ca', 'Llevar'),
('form-remove-button', 'en', 'Remove'),
('form-self_review-button', 'ca', 'Corregir'),
('form-self_review-button', 'en', 'Correct'),
('form-send_review-button', 'ca', 'Enviar'),
('form-send_review-button', 'en', 'Send'),
('form-upload-button', 'ca', 'Pujar'),
('form-upload-button', 'en', 'Send'),
('guide-dashboard-user-access', 'ca', 'Des d''aquí pots modificar les dades amb que accedeixes al teu compte de Goteo.'),
('guide-dashboard-user-access', 'en', 'You can change the information with which you log in to your Goteo account.'),
('guide-dashboard-user-personal', 'ca', 'Només has d''omplir aquestes dades si has creat un projecte i vols que sigui cofinançat i recolzat mitjançant Goteo. La informació d''aquest apartat és necessària per contactar-te en cas que obtinguis el finançament, i que així es pugui fer efectiu l''ingrés.'),
('guide-dashboard-user-personal', 'en', 'You should only fill in this data if you have created a project and you want it to be co-financed and supported through Goteo. The information in this section is necessary so that we can contact you in the event that you obtain the necessary co-financing, and make the corresponding deposit.'),
('guide-dashboard-user-preferences', 'ca', 'Marca ''Sí'' a les notificacions automàtiques que vulguis bloquejar.'),
('guide-dashboard-user-preferences', 'en', 'Select ''Yes'' for the automatic notifications you want to block.'),
('guide-dashboard-user-profile', 'ca', 'Tant si vols presentar un projecte com incorporar-te com a cofinanciador/a, per formar part de la comunitat de Goteo et recomanem que escriguis el teu text de presentació, que afegeixis links rellevants sobre el que fas i pugis una imatge de perfil amb la qual t''identifiquis.'),
('guide-dashboard-user-profile', 'en', 'Whether you want to create a project or co-finance someone else''s, in order to join the Goteo community, we recommend that you carefully edit your presentation text, and include relevant links about what you do as well as a profile image with which you identify'),
('guide-project-comment', 'en', 'guide-project-comment'),
('guide-project-contract-information', 'ca', '<b>A partir d''aquest pas només has d''emplenar les dades si vols que el teu projecte sigui cofinançat i recolzat mitjançant Goteo.</b>\r\n<br><br>\r\nLa informació d''aquest apartat és necessària per contactar-te en cas que obtinguis el finançament requerit, i que així es pugui efectuar l''ingrés.'),
('guide-project-contract-information', 'en', '<strong>The only thing left is to fill in your data if you want your project to be co-financed and supported through Goteo.</strong><br><br>The information in this section is necessary so that we can contact you if you get the required financing, and be able to make the deposit. In the case of organizations, we recommend that the representative of the organization be formally accredited (for example, by way of the statutes or a certificate of the secretary with an OK from the president, in the case of associations).'),
('guide-project-costs', 'ca', '<b>En aquesta secció has d''elaborar un petit pressupost basat en els costos que calculis tindrà la realització del projecte.</b><br>\r\n<br>\r\nHas d''especificar segons tasques, infraestructura o materials. Intenta ser realista en els costos i explicar breument per què necessites cobrir cadascun d''ells. Veuràs que diferenciem entre costos imprescindibles i costos addicionals, on els primers han de suposar més de la meitat del total a cofinançar.'),
('guide-project-costs', 'en', '<strong>In this section, you should fill out a short business plan based on the estimated costs for your project.</strong><br><br>You should break down the numbers by tasks, infrastructure, or materials. Try to be realistic about the costs and briefly explain why you need each one. Keep in mind, that as a general rule, at least 80% of the project will have to be undertaken by the person or team that is promoting the project, and not subcontracted to third parties. <br><br><strong>Very important</strong>: On Goteo, we differentiate among necessary and supplemental costs. The former must be totally covered in order to obtain funding, while the latter can be obtained as part of a second campaign, once the project is underway, in order to cover optimization costs (promotion, design, outreach, additional units, etc.) These supplemental costs can not be more than one half of the total cost of the project.'),
('guide-project-description', 'ca', '<strong>Aquest és l''apartat on explicar amb detall els aspectes conceptuals del projecte.</strong><br><br>És la primera informació amb que qualsevol usuari de la xarxa es trobarà, així que tingues cura de la redacció i evita les faltes d''ortografia. Veuràs que hi ha camps obligatoris com incloure un vídeo o pujar imatges. Això és així perquè els considerem imprescindibles per començar amb èxit una campanya de recaptació de fons a Goteo.<br><br> Tingues en compte que el més valorat en Goteo és: la informació o coneixement lliure d''interès general que el teu projecte aportarà a la comunitat, l''originalitat, aspirar a resoldre una demanda social, el potencial per atreure a una comunitat àmplia de persones interessades, deixar clar que l''equip promotor posseeix les capacitats i experiència per poder portar-ho a bon termini. Per tant no perdis de vista informar sobre aquests aspectes.'),
('guide-project-description', 'en', '<strong>Use this section to explain the conceptual aspects of the project</strong><br><br>This is the first information that a visitor to the site will see. For that reason, we recommend being careful with editing and avoiding typos. You will see that there are required fields, including one for video and images. We believe that these are essential for starting a campaign to raise funds via Goteo.<br><br>Keep in mind that the most valuable thing to Goteo is: the free information and general knowledge that your project will bring to the community, the originality, the desire to answer a social need, the power to attract a wide community of interested people, making it clear that the promotion team has the capacity and experience to bring the project to fruition. So don''t forget to give us information about all of these points.'),
('guide-project-error-mandatories', 'ca', 'Falten camps obligatoris'),
('guide-project-error-mandatories', 'en', 'Some required fields are missing'),
('guide-project-preview', 'ca', '<strong>Aquest és un resum de tota la informació sobre el projecte.</strong><br><br>Repassa els punts de cada apartat per veure si pots millorar alguna cosa, o bé envia el projecte per a la seva valoració (amb el botó "Enviar" de la part inferior) si ja estan emplenats tots els camps obligatoris, per a que així pugui ser valorat per l''equip i la comunitat de Goteo. Una vegada ho enviïs ja no es podran introduir canvis.<br><br>Tingues en compte que només podem seleccionar uns quants projectes al mes per garantir-ne l''atenció i la difusió de les propostes que es fan públiques. Pròximament rebràs un missatge amb tota la informació, que t''indicarà els passos a seguir i recomanacions per a que el teu projecte pugui aconseguir la meta proposada. '),
('guide-project-preview', 'en', '<strong>This is a summary of all of the information about the project.</strong><br><br>Review the information given in each field to see if any improvements can be made, and when you''re ready, send us the project (by clicking the Send button below) so we can evaluate it. Once the proposal is sent, no further changes are permitted.<br><br>Keep in mind that we can only choose a few projects per month in order to guarantee a certain amount of attention and promotion for those that are published. You will receive a message with all of this information shortly, which will indicate the next steps, as well as some recommendations that will help your project reach its proposed objectives.'),
('guide-project-rewards', 'ca', '<strong>En aquest apartat has d''establir què ofereix el projecte a canvi als seus cofinançadors, i també els seur retorns col·lectius.</strong><br><br>A més de les recompenses individuals per a cada import de cofinançament, aquí has de definir quin tipus de llicència assignar al projecte, en funció del seu format i/o del grau d''obertura que té (o d''alguna de les seves parts). Aquesta part és molt important, ja que Goteo és una plataforma de crowdfunding per a projectes basats en la filosofia del codi obert i que enforteixin els béns comuns.<br><br>En cas que a més d''una de les llicències aquí especificades t''interessi addicionalment registrar la propietat intel·lectual de la teva obra o idea, tot mantenint la seva compatibilitat amb els retorns col·lectius, et recomanem obtenir una protecció legal específica mitjançant el servei <a href="http://www.safecreative.org/" target="new">Safe Creative</a>.'),
('guide-project-rewards', 'en', '<strong>In this section, you should establish what the project is offering to its co-financiers and also what the collective benefits will be.</strong><br><br>In addition to the individual rewards for each level of co-financing, you should define the kind of license that you will assign to the project, according to its format and/or level of openness (or that of its parts). This is very important, since Goteo is a crowdfunding platform for projects based on a philosophy of open source software and promotion of the common good.<br><br>In the event that in addition to one of the licenses specified here you would also like to register the intellectual property rights of your work or ideas, while maintaining its compatibility with collective benefits, you can get specific legal protection with <a href="http://www.safecreative.org/" target="new">Safe Creative</a>.'),
('guide-project-success-minprogress', 'ca', 'Ha arribat al percentatge mínim'),
('guide-project-success-minprogress', 'en', 'You have achieved the minimum percentage'),
('guide-project-success-noerrors', 'ca', 'Tots els camps obligatoris s''han emplenat'),
('guide-project-success-noerrors', 'en', 'All of the required fields are filled out'),
('guide-project-success-okfinish', 'ca', 'Pot enviar-se per a revisió'),
('guide-project-success-okfinish', 'en', 'You can send it for reviewing'),
('guide-project-support', 'en', 'guide-project-support'),
('guide-project-supports', 'ca', '<strong>En aquest apartat pots especificar quines altres ajudes, a part de finançament, es necessiten per dur a terme el projecte.</strong><br><br>Poden ser tasques o accions a càrrec d''altres persones (traduccions, gestions, difusió, etc), o bé préstecs específics (de material, transport, maquinari, etc).'),
('guide-project-supports', 'en', '<strong>In this section you will specify what other support, apart from financing, that you will need in order to complete the project.</strong><br><br>They can consist of collaboration or assistance from other people (translations, organization, promotion, etc.) or perhaps specific loans (of material, transportation, hardware, etc.)'),
('guide-project-updates', 'ca', '<b>És molt important que els projectes mantinguin informats els seus cofinançadors i la resta de persones potencialment interessades sobre com avança la seva campanya. Des d''aquest apartat pots publicar missatges d''actualització sobre el projecte, com una espècie de blog públic.</b> A Goteo a més, una vegada s''han aconseguit els fons mínims, per a la segona ronda de cofinançament és crític explicar regularment com ha arrencat la producció, avenços, problemes, etc que permetin la major transparència possible i saber com evoluciona l''inici del projecte, per així tractar de generar més interès i comunitat al seu voltant.'),
('guide-project-updates', 'en', '<b>It''s very important that the projects keep their co-financiers and other potentially interested people up to date about how the campaign is progressing. Use this section like a blog to publish updates about the project.</b>On Goteo, after you''ve achieved the minimum financing, and as you go into the second round, it''s essential to periodically explain how the production, progress, problems, etc. are going in order to allow the most transparency possible in order to generate even more interest and community.'),
('guide-project-user-information', 'ca', '<strong>En aquest apartat has d''introduir les dades per a la informació pública del teu perfil d''usuari. </strong><br><br>Tant si vols presentar un projecte com incorporar-te com a cofinanciador/a, per formar part de la comunitat de Goteo et recomanem que escriguis el teu text de presentació, que afegeixis links rellevants sobre el que fas i pugis una imatge de perfil amb la qual t''identifiquis.'),
('guide-project-user-information', 'en', '    <strong>In this section, you will enter data for the public part of your user profile. </strong><br><br>Whether you want to create a project or co-finance someone else''s, in order to join the Goteo community, we recommend that you carefully edit your presentation text, and include relevant links about what you do as well as a profile image with which you identify.'),
('header-about-side', 'ca', 'Allò que ens mou'),
('header-about-side', 'en', 'What inspires us'),
('home-posts-header', 'ca', 'Al nostre blog'),
('home-posts-header', 'en', 'On our blog'),
('home-promotes-header', 'ca', 'Destacats'),
('home-promotes-header', 'de', 'Ausgewählte Projekte'),
('home-promotes-header', 'en', 'Highlighted'),
('image-upload-fail', 'ca', 'Error en pujar la imatge'),
('image-upload-fail', 'en', 'Error uploading image'),
('invest-address-address-field', 'ca', 'Adreça:'),
('invest-address-address-field', 'en', 'Address:'),
('invest-address-country-field', 'ca', '    País:'),
('invest-address-country-field', 'en', 'Country:'),
('invest-address-header', 'ca', 'On vols rebre la recompensa'),
('invest-address-header', 'en', 'Where would you like to receive the reward (only if it''s sent via the postal service)'),
('invest-address-location-field', 'ca', 'Ciutat:'),
('invest-address-location-field', 'en', 'City'),
('invest-address-name-field', 'ca', 'Nom:'),
('invest-address-name-field', 'en', 'Name:'),
('invest-address-nif-field', 'ca', 'Número de NIF / NIE / VAT:'),
('invest-address-nif-field', 'en', 'VAT:'),
('invest-address-zipcode-field', 'ca', 'Codi postal:'),
('invest-address-zipcode-field', 'en', 'Postal code:'),
('invest-amount', 'ca', 'Quantitat'),
('invest-amount', 'en', 'Quantity'),
('invest-amount-error', 'ca', 'Has d''indicar l''import'),
('invest-amount-error', 'en', 'You have to write an amount'),
('invest-amount-tooltip', 'ca', 'Introdueix la quantitat amb que recolzaràs el projecte'),
('invest-amount-tooltip', 'en', 'Enter the quantity with which you want to support this project'),
('invest-anonymous', 'ca', 'Vull que la meva aportació sigui anònima \r\n'),
('invest-anonymous', 'en', 'Please make my donation anonymous'),
('invest-create-error', 'ca', 'Hi ha hagut algun problema en inicialitzar la transacció'),
('invest-create-error', 'en', 'There has been a problem when processing the payment'),
('invest-data-error', 'ca', 'No s''han rebut les dades necessàries'),
('invest-data-error', 'en', 'Necessary data missing'),
('invest-donation-header', 'ca', 'Introdueix les dades fiscals per al donatiu'),
('invest-donation-header', 'en', 'Enter the fiscal information for this donation'),
('invest-individual-header', 'ca', 'Pots renunciar a rebre recompenses per la teva aportació, o seleccionar les que igualin o estiguin per sota de l''import que hagis introduït.'),
('invest-individual-header', 'en', 'You can decline to receive rewards for your contribution, or select those that match or are under the amount that you have entered.'),
('invest-next_step', 'ca', 'Pas següent '),
('invest-next_step', 'en', 'Next step'),
('invest-owner-error', 'ca', 'Ets l''autor del projecte, no pots aportar personalment al teu propi projecte'),
('invest-payment-email', 'ca', 'Introdueix el teu compte de PayPal'),
('invest-payment-email', 'en', 'Enter your PayPal user name'),
('invest-payment_method-header', 'ca', 'Escull el mètode de pagament'),
('invest-payment_method-header', 'en', 'Choose a method of payment'),
('invest-paypal-error_fatal', 'ca', 'Ha ocorregut un error fatal en connectar amb PayPal. S''ha reportat la incidència, disculpa les molèsties.'),
('invest-paypal-error_fatal', 'en', 'There has been a fatal error when connecting to PayPal. The incidence has been notified, sorry for the inconvenience.'),
('invest-resign', 'ca', 'Renuncio a una recompensa individual, només vull ajudar al projecte \r\n'),
('invest-resign', 'en', 'I don''t want any reward, I just want to help the project'),
('invest-reward-none', 'ca', 'Ja no es pot escollir'),
('invest-reward-none', 'en', 'These can no longer be chosen'),
('invest-social-header', 'ca', 'Amb els retorns col·lectius hi guanyem tots'),
('invest-social-header', 'en', 'With collective benefits, we all move forward'),
('invest-tpv-error_fatal', 'ca', 'Ha ocorregut un error fatal en connectar amb el TPV. S''ha reportat la incidència, disculpa les molèsties.'),
('invest-tpv-error_fatal', 'en', 'There has been a fatal error when checking out. The incidence has been notified, sorry for the inconvenience.'),
('leave-email-sended', 'ca', 'T''hem enviat un email per completar el procés de baixa. Verifica també la carpeta de correu no desitjat o /Spam.'),
('leave-email-sended', 'en', 'We have sent you an email to confirm the closure of your account. If you don''t find it right away, look in your junk or spam folder.'),
('leave-process-completed', 'ca', 'El compte s''ha donat de baixa correctament'),
('leave-process-completed', 'en', 'The account was closed correctly.'),
('leave-process-fail', 'ca', 'No hem pogut completar el procés per donar-te de baixa. Per favor, contacta''ns a hola@goteo.org'),
('leave-process-fail', 'en', 'We were not able to close the account. Please contact us at hola@goteo.org'),
('leave-request-fail', 'ca', 'No hem trobat cap compte amb aquest email a la nostra base de dades per donar-lo de baixa'),
('leave-request-fail', 'en', 'We didn''t find any account with that email in our database.'),
('leave-token-incorrect', 'ca', 'El codi per a completar el procés de baixa no és vàlid'),
('leave-token-incorrect', 'en', 'The code for completing the closure of the account is not valid.'),
('login-access-button', 'ca', 'Entrar'),
('login-access-button', 'en', 'Enter'),
('login-access-header', 'ca', 'Usuari registrat'),
('login-access-header', 'en', 'Registered user'),
('login-access-password-field', 'ca', 'Contrasenya'),
('login-access-password-field', 'en', 'Password'),
('login-access-username-field', 'ca', 'Nom d''accés '),
('login-access-username-field', 'en', 'User name'),
('login-banner-header', 'ca', 'Accedeix a la comunitat Goteo<br /><span class="greenblue">100% obert</span>'),
('login-banner-header', 'de', 'Mach mit bei der Goteo Community<br /><span class="greenblue">100% offen</span>'),
('login-banner-header', 'en', '    Get access to the <br /><span class="greenblue">100% open</span> Goteo community'),
('login-fail', 'ca', 'Error d''accés'),
('login-fail', 'en', 'Error'),
('login-leave-button', 'ca', 'Donar de baixa'),
('login-leave-button', 'en', 'Close the account'),
('login-leave-header', 'ca', 'Cancel·lar el compte'),
('login-leave-header', 'en', 'Close the account'),
('login-leave-message', 'ca', 'Deixa''ns un missatge'),
('login-leave-message', 'en', 'Leave a message'),
('login-oneclick-header', 'ca', 'Accedeix amb només un clic'),
('login-oneclick-header', 'en', 'Log in with a single click'),
('login-recover-button', 'ca', 'Recuperar'),
('login-recover-button', 'en', 'Recover'),
('login-recover-email-field', 'ca', 'Email del compte'),
('login-recover-email-field', 'en', 'Account email'),
('login-recover-header', 'ca', 'Recuperar contrasenya'),
('login-recover-header', 'en', 'Recover password'),
('login-recover-link', 'ca', 'Recuperar contrasenya '),
('login-recover-link', 'en', 'Recover password'),
('login-recover-username-field', 'ca', 'Nom d''accés '),
('login-recover-username-field', 'en', 'User name'),
('login-register-button', 'ca', 'Registrar'),
('login-register-button', 'en', 'Register');
INSERT INTO `text` (`id`, `lang`, `text`) VALUES
('login-register-conditions', 'ca', 'Accepto les condicions d''ús de la plataforma, i dono el meu consentiment per al tractament de les meves dades personals. Per a això, el responsable del portal ha establert una <a href="/legal/privacy" target="_blank">polí­tica de privadesa</a> on es pot conèixer la finalitat que se li donaran a les dades subministrades a través d''aquest formulari, així­ com els drets que assisteixen la persona que subministra aquestes dades.'),
('login-register-conditions', 'en', 'I accept the platforms terms of service, and give my permission for the treatment of my personal data. To that end, those responsible for the site have established a <a href="/legal/privacy" target="_blank">privacy policy</a> that states how the data will be submitted through the current form, as well as the rights that belong to the person who submits said data.'),
('login-register-confirm-field', 'ca', 'Confirmar email'),
('login-register-confirm-field', 'en', 'Confirm email address'),
('login-register-confirm_password-field', 'ca', 'Confirmar contrasenya  '),
('login-register-confirm_password-field', 'en', 'Confirm password'),
('login-register-email-field', 'ca', 'Email'),
('login-register-email-field', 'en', 'Email address'),
('login-register-header', 'ca', 'Nou usuari'),
('login-register-header', 'en', 'New user'),
('login-register-password-field', 'ca', 'Contrasenya'),
('login-register-password-field', 'en', 'Password'),
('login-register-password-minlength', 'ca', 'Mínim 6 caràcters '),
('login-register-password-minlength', 'en', 'At least 6 characters'),
('login-register-userid-field', 'ca', 'Nom d''accés '),
('login-register-userid-field', 'en', 'User name'),
('login-register-username-field', 'ca', 'Nom públic  '),
('login-register-username-field', 'en', 'Screen name'),
('login-signin-facebook', 'ca', 'Accedeix amb Facebook'),
('login-signin-facebook', 'en', 'Log in with Facebook'),
('login-signin-google', 'ca', 'Accedeix amb Google'),
('login-signin-google', 'en', 'Log in with Google'),
('login-signin-linkedin', 'ca', 'Accedeix amb LinkedIn'),
('login-signin-linkedin', 'en', 'Log in with LinkedIn'),
('login-signin-myopenid', 'ca', 'Accedeix amb myOpenID'),
('login-signin-myopenid', 'en', 'Log in with myOpenID'),
('login-signin-openid', 'ca', 'Un altre servidor Open ID'),
('login-signin-openid', 'en', 'Other Open ID server'),
('login-signin-openid-go', 'ca', 'Ok'),
('login-signin-openid-go', 'en', 'Go'),
('login-signin-twitter', 'ca', 'Accedeix amb Twitter'),
('login-signin-twitter', 'en', 'Log in with Twitter'),
('login-signin-view-more', 'ca', 'Mostrar més opcions d''accés'),
('login-signin-view-more', 'en', 'More login options'),
('login-signin-yahoo', 'ca', 'Accedeix amb Yahoo'),
('login-signin-yahoo', 'en', 'Log in with Yahoo'),
('mailer-baja', 'ca', 'No vols rebre més comunicacions de Goteo? Pots donar el teu email de baixa mitjançant aquest <a href="%s">link</a>'),
('mailer-baja', 'en', 'If you don''t want to receive more updates form Goteo.org, you can unsubscribe your email address with <a href="%s">link</a>'),
('mailer-disclaimer', 'ca', 'Goteo és una plataforma digital per al finançament col·lectiu, col·laboració i distribució de recursos per al desenvolupament de projectes socials, culturals, educatius, tecnològics... que contribueixin a l''enfortiment del béns comuns, el codi obert i/o el coneixement lliure.'),
('mailer-disclaimer', 'en', 'Goteo this is a translation test'),
('mailer-sinoves', 'ca', 'Si no pots veure aquest missatge utilitza aquest <a href="%s">link</a>'),
('mailer-sinoves', 'en', 'If you can''t see this message use this <a href="%s">link</a>'),
('main-banner-header', 'ca', '<h2 class="message">Xarxa social per <span class="greenblue">cofinançar i col·laborar amb</span><br /> projectes creatius que fomentin els béns comuns<br /> Tens un projecte amb <span class="greenblue">ADN obert</span>?</h2><a href="/contact" class="button banner-button">Contacta''ns</a>'),
('main-banner-header', 'de', '<h2 class="message">Das soziale Netzwerk<span class="greenblue"> zur Ko-Finanzierung und Mitarbeit </span><br />bei Projekten, die das Gemeinwohl fördern.<br /> ¿Hast du ein Projekt mit <span class="greenblue">offener DNA</span>?</h2><a href="/contact" class="button banner-button">Kontaktiere uns</a>'),
('main-banner-header', 'en', '    <h2 class="message">Social network for <span class="greenblue">co-financing and collaborating with </span><br /> creative projects that further the common good<br /> Do you have a project with <span class="greenblue">open DNA</span>?</h2><a href="/contact" class="button banner-button">Contact us!</a>'),
('mandatory-cost-field-amount', 'ca', 'És obligatori assignar un import als costos'),
('mandatory-cost-field-amount', 'en', 'You must assign an amount to the expenses'),
('mandatory-cost-field-description', 'ca', 'És obligatori posar alguna descripció als costos'),
('mandatory-cost-field-description', 'en', 'You must add a description for the expenses'),
('mandatory-cost-field-name', 'ca', 'És obligatori posar-li un nom al cost'),
('mandatory-cost-field-name', 'en', 'You must label the expenses'),
('mandatory-cost-field-task_dates', 'ca', 'És obligatori especificar les dates aproximades de la tasca'),
('mandatory-cost-field-task_dates', 'en', 'You must specify the approximate dates for the task'),
('mandatory-cost-field-type', 'ca', 'És obligatori seleccionar el tipus de cost'),
('mandatory-cost-field-type', 'en', 'You have to select the type of cost'),
('mandatory-individual_reward-field-amount', 'ca', 'És obligatori indicar l''import que permet obtenir la recompensa'),
('mandatory-individual_reward-field-amount', 'en', 'You have to specify the amount that qualifies for the reward'),
('mandatory-individual_reward-field-description', 'ca', 'És obligatori posar alguna descripció'),
('mandatory-individual_reward-field-description', 'en', 'You must add a description'),
('mandatory-individual_reward-field-icon', 'ca', 'És obligatori seleccionar el tipus de recompensa'),
('mandatory-individual_reward-field-icon', 'en', 'You must choose the type of reward'),
('mandatory-individual_reward-field-name', 'ca', 'És obligatori posar la recompensa'),
('mandatory-individual_reward-field-name', 'en', 'You must enter a reward'),
('mandatory-project-costs', 'ca', 'Ha de desglossar-se com a mínim en dos costos.'),
('mandatory-project-costs', 'en', 'These should be broken down into at least two groups.'),
('mandatory-project-field-about', 'ca', 'És obligatori explicar les característiques bàsiques del projecte'),
('mandatory-project-field-about', 'en', 'You have to explain the project''s basic characteristics'),
('mandatory-project-field-address', 'ca', 'L''adreça del/la responsable del projecte és obligatòria'),
('mandatory-project-field-address', 'en', 'The project leaders'' address is required'),
('mandatory-project-field-category', 'ca', 'És obligatori triar almenys una categoria pel projecte.'),
('mandatory-project-field-category', 'en', 'You must choose at least one category for the project'),
('mandatory-project-field-contract_birthdate', 'ca', 'És obligatori posar la data de naixement del responsable del projecte'),
('mandatory-project-field-contract_birthdate', 'en', 'You must enter the project leader''s date of birth'),
('mandatory-project-field-contract_email', 'ca', 'És obligatori posar l''email del/la responsable del projecte'),
('mandatory-project-field-contract_email', 'en', 'You must enter the project leader''s email'),
('mandatory-project-field-contract_name', 'ca', 'És obligatori posar el nom del/la responsable del projecte'),
('mandatory-project-field-contract_name', 'en', 'You must enter the name of the project leader'),
('mandatory-project-field-contract_nif', 'ca', 'És obligatori posar el document d''identificació del/la responsable del projecte'),
('mandatory-project-field-contract_nif', 'en', 'You must enter the ID number for the project leader'),
('mandatory-project-field-country', 'ca', 'El país del/la responsable del projecte és obligatori'),
('mandatory-project-field-country', 'en', 'You must enter a country for the project leader'),
('mandatory-project-field-description', 'ca', 'És obligatori resumir el projecte'),
('mandatory-project-field-description', 'en', 'You have to enter a summary for the project'),
('mandatory-project-field-entity_cif', 'ca', 'És obligatori posar el CIF de l''entitat jurídica'),
('mandatory-project-field-entity_cif', 'en', 'You must enter the organization''s Business Number (CIF)'),
('mandatory-project-field-entity_name', 'ca', 'És obligatori posar el nom de l''organització'),
('mandatory-project-field-entity_name', 'en', 'You must enter the name of the organization'),
('mandatory-project-field-entity_office', 'ca', 'És obligatori posar el càrrec que tens dins l''organització que representes'),
('mandatory-project-field-entity_office', 'en', 'You must enter the position that you have in the organization that you represent'),
('mandatory-project-field-goal', 'ca', 'És obligatori explicar els objectius en la descripció del projecte'),
('mandatory-project-field-goal', 'en', 'You have to explain your goals in the project description'),
('mandatory-project-field-image', 'ca', 'És obligatori vincular una imatge com a mínim al projecte'),
('mandatory-project-field-image', 'en', 'You have to link at least one image to your project'),
('mandatory-project-field-lang', 'ca', 'Has d''indicar l''idioma del projecte'),
('mandatory-project-field-lang', 'en', 'You have to indicate a language for the project'),
('mandatory-project-field-location', 'ca', 'És obligatori posar l''abast potencial del projecte'),
('mandatory-project-field-location', 'en', 'You have to enter the potential reach for your project'),
('mandatory-project-field-media', 'ca', 'Recomanem posar un vídeo per millorar la valoració del projecte a l''hora de decidir si publicar-ho o no a Goteo.'),
('mandatory-project-field-media', 'en', 'We recommend uploading a video to facilitate the evaluation of your project by the Goteo team.'),
('mandatory-project-field-motivation', 'ca', 'És obligatori explicar la motivació en la descripció del projecte'),
('mandatory-project-field-motivation', 'en', 'You have to explain your motivation in the project description'),
('mandatory-project-field-name', 'ca', 'És obligatori posar un nom al projecte'),
('mandatory-project-field-name', 'en', 'You have to enter a name for the project'),
('mandatory-project-field-phone', 'ca', 'El telèfon del/la responsable del projecte és obligatori'),
('mandatory-project-field-phone', 'en', 'You must enter a phone number for the project leader'),
('mandatory-project-field-related', 'ca', 'És obligatori explicar en la descripció del projecte l''experiència relacionada i/o l''equip amb que es compta  '),
('mandatory-project-field-related', 'en', 'In the project description, you must describe your project-related experience and the team that you''re planning on working with.'),
('mandatory-project-field-residence', 'ca', 'És obligatori posar el lloc de residència del/la responsable del projecte'),
('mandatory-project-field-residence', 'en', 'You must enter the project leader''s place of residence'),
('mandatory-project-field-resource', 'ca', 'És obligatori especificar si comptes amb altres recursos o no'),
('mandatory-project-field-resource', 'en', 'You must specify whether or not you have other resources to draw from'),
('mandatory-project-field-zipcode', 'ca', 'El codi postal del/la responsable del projecte és obligatori.'),
('mandatory-project-field-zipcode', 'en', 'A postal code for the project leader is required'),
('mandatory-project-resource', 'ca', 'És obligatori especificar si comptes amb altres recursos'),
('mandatory-project-resource', 'en', 'You must specify whether or not you have other resources to draw from'),
('mandatory-project-total-costs', 'ca', 'És obligatori especificar algun cost'),
('mandatory-project-total-costs', 'en', 'You must specify an expense'),
('mandatory-register-field-email', 'ca', 'Has d''indicar un email'),
('mandatory-register-field-email', 'en', 'You have to enter an email address'),
('mandatory-social_reward-field-description', 'ca', 'És obligatori posar alguna descripció al retorn'),
('mandatory-social_reward-field-description', 'en', 'You must enter a description for the benefit'),
('mandatory-social_reward-field-icon', 'ca', 'És obligatori seleccionar el tipus de retorn'),
('mandatory-social_reward-field-icon', 'en', 'You must choose the type of benefit'),
('mandatory-social_reward-field-name', 'ca', 'És obligatori especificar el retorn'),
('mandatory-social_reward-field-name', 'en', 'You must specify the benefit'),
('mandatory-support-field-description', 'ca', 'És obligatori posar alguna descripció'),
('mandatory-support-field-description', 'en', 'A description is required.'),
('mandatory-support-field-name', 'ca', 'És obligatori posar-li un nom a la col·laboració'),
('mandatory-support-field-name', 'en', 'You have to enter a name for the collaboration'),
('oauth-confirm-user', 'ca', 'Vincular usuari existent'),
('oauth-confirm-user', 'en', 'Connect with existing user'),
('oauth-facebook-access-denied', 'ca', 'Accés des de Facebook denegat'),
('oauth-facebook-access-denied', 'en', 'Facebook access denied'),
('oauth-goteo-openid-sync-password', 'ca', 'Estàs intentant vincular un compte ja existent a Goteo amb un proveïdor extern. Això et permetrà entrar a Goteo amb un sol clic en el futur.<br>Aquesta primera vegada hauràs de proporcionar la contrasenya del teu compte de Goteo per confirmar la teva identitat.'),
('oauth-goteo-openid-sync-password', 'en', 'You''re trying to connect an existing Goteo account with an external provider. That will allow you to access Goteo with a single click.<br>This time you must provide your Goteo account password in order to confirm your identity.'),
('oauth-goteo-user-not-exists', 'ca', 'Aquest usuari no existeix a Goteo'),
('oauth-goteo-user-not-exists', 'en', 'That user does not exist in Goteo'),
('oauth-goteo-user-password-exists', 'ca', 'Aquest usuari ja existeix a Goteo'),
('oauth-goteo-user-password-exists', 'en', 'That user already exists in Goteo'),
('oauth-import-about', 'ca', 'Sobre tu'),
('oauth-import-about', 'en', 'About you'),
('oauth-import-facebook', 'ca', 'Link al teu compte de Facebook'),
('oauth-import-facebook', 'en', 'Link to your Facebook account'),
('oauth-import-location', 'ca', 'Lloc de residència'),
('oauth-import-location', 'en', 'Place of residence'),
('oauth-import-name', 'ca', 'Nom'),
('oauth-import-name', 'en', 'Name'),
('oauth-import-twitter', 'ca', 'Link al teu compte de Twitter'),
('oauth-import-twitter', 'en', 'Link to your Twitter account'),
('oauth-import-website', 'ca', 'Els teus llocs web'),
('oauth-import-website', 'en', 'Your websites'),
('oauth-linkedin-access-denied', 'ca', 'Accés des de LinkedIn denegat'),
('oauth-linkedin-access-denied', 'en', 'Linkedin access denied'),
('oauth-login-imported-data', 'ca', 'També s''importaran aquestes dades, pots canviar-les un cop autenticat:'),
('oauth-login-imported-data', 'en', 'This data is also being imported, you can change it once authenticated:'),
('oauth-login-welcome-from', 'ca', 'Benvingut/da a Goteo! Comprova el teu nom d''usuari i email per finalitzar el procés. En cas que no s''hagi pogut importar l''email o ho canviïs per un altre, rebràs un correu electrònic amb un link d''activació per comprovar la seva validesa.'),
('oauth-login-welcome-from', 'en', 'Welcome to Goteo. Please check your username and email to finish the process. In case we could not import the email address (or if you change it for another) an email will be sent with an activation link for validation.'),
('oauth-openid-access-denied', 'ca', 'Accés des de Open ID denegat'),
('oauth-openid-access-denied', 'en', 'Open ID access denied'),
('oauth-openid-not-logged', 'ca', 'Usuari desconnectat des d''Open ID'),
('oauth-openid-not-logged', 'en', 'User disconnected from Open ID'),
('oauth-token-request-error', 'ca', 'Ha ocorregut un error en obtenir les credencials amb el proveïdor'),
('oauth-token-request-error', 'en', 'There has been an error when getting data from provider'),
('oauth-twitter-access-denied', 'ca', 'Accés des de Twitter denegat'),
('oauth-twitter-access-denied', 'en', 'Twitter access denied'),
('oauth-unknown-provider', 'ca', 'No es pot iniciar sessió amb aquest proveïdor'),
('oauth-unknown-provider', 'en', 'Session can''t be started with this provider'),
('open-banner-header', 'ca', '<div class="modpo-open">OPEN</div><div class="modpo-percent">100&#37; OBERT</div><div class="modpo-whyopen">%s</div>'),
('open-banner-header', 'de', '    <div class="modpo-open">OPEN</div><div class="modpo-percent">100% OFFEN</div><div class="modpo-whyopen">%s</div>'),
('open-banner-header', 'en', '<div class="modpo-open">OPEN</div><div class="modpo-percent">100&#37; OPEN</div><div class="modpo-whyopen">%s</div>'),
('overview-field-about', 'ca', 'Característiques bàsiques'),
('overview-field-about', 'en', 'About'),
('overview-field-categories', 'ca', 'Categories'),
('overview-field-categories', 'en', 'Categories'),
('overview-field-currently', 'ca', 'Estat actual'),
('overview-field-currently', 'en', 'Current status'),
('overview-field-description', 'ca', 'Breu descripció'),
('overview-field-description', 'en', 'Brief description'),
('overview-field-goal', 'ca', 'Objectius'),
('overview-field-goal', 'en', 'Goals of the Crowdfunding Campaign'),
('overview-field-image_gallery', 'ca', 'Imatges actuals'),
('overview-field-image_gallery', 'en', 'Current images'),
('overview-field-image_upload', 'ca', 'Pujar una imatge'),
('overview-field-image_upload', 'en', 'Upload an image'),
('overview-field-keywords', 'ca', 'Paraules clau del projecte'),
('overview-field-keywords', 'en', 'Key words for the project'),
('overview-field-lang', 'ca', 'Idioma original'),
('overview-field-lang', 'en', 'Original language'),
('overview-field-media', 'ca', 'Vídeo de presentació'),
('overview-field-media', 'en', 'Video introduction'),
('overview-field-media_preview', 'ca', 'Vista prèvia'),
('overview-field-media_preview', 'en', 'Preview'),
('overview-field-motivation', 'ca', 'Motivació i a qui va dirigit el projecte '),
('overview-field-motivation', 'en', 'Why this is important for you'),
('overview-field-name', 'ca', 'Títol del projecte'),
('overview-field-name', 'en', 'Project title'),
('overview-field-options-currently_avanzado', 'ca', 'Avançat'),
('overview-field-options-currently_avanzado', 'en', 'Advanced'),
('overview-field-options-currently_finalizado', 'ca', 'Finalitzat '),
('overview-field-options-currently_finalizado', 'en', 'Finished'),
('overview-field-options-currently_inicial', 'ca', 'Inicial'),
('overview-field-options-currently_inicial', 'en', 'Starting'),
('overview-field-options-currently_medio', 'ca', 'Mitjà'),
('overview-field-options-currently_medio', 'en', 'Midway'),
('overview-field-options-scope_global', 'ca', 'Global '),
('overview-field-options-scope_global', 'en', 'Global'),
('overview-field-options-scope_local', 'ca', 'Local'),
('overview-field-options-scope_local', 'en', 'Local'),
('overview-field-options-scope_nacional', 'ca', 'Nacional'),
('overview-field-options-scope_nacional', 'en', 'National'),
('overview-field-options-scope_regional', 'ca', 'Regional'),
('overview-field-options-scope_regional', 'en', 'Regional'),
('overview-field-project_location', 'ca', 'Ubicació'),
('overview-field-project_location', 'en', 'Location'),
('overview-field-related', 'ca', 'Experiència prèvia i equip '),
('overview-field-related', 'en', 'Team and Experience'),
('overview-field-scope', 'ca', 'Abast del projecte'),
('overview-field-scope', 'en', 'Project reach'),
('overview-field-subtitle', 'ca', 'Frase de resum'),
('overview-field-subtitle', 'en', 'Summary'),
('overview-field-usubs', 'ca', 'Carregar amb Universal Subtitles'),
('overview-field-usubs', 'en', 'Publish with Universal Subtitles'),
('overview-field-video', 'ca', 'Vídeo addicional sobre motivació'),
('overview-field-video', 'en', 'Additional video about motivation'),
('overview-fields-images-title', 'ca', 'Imatges del projecte'),
('overview-fields-images-title', 'en', 'Images from the project'),
('overview-main-header', 'ca', 'Descripció del projecte'),
('overview-main-header', 'en', 'Project description'),
('personal-field-address', 'ca', 'Adreça'),
('personal-field-address', 'en', 'Address'),
('personal-field-contract_birthdate', 'ca', 'Data de naixement '),
('personal-field-contract_birthdate', 'en', 'Date of birth'),
('personal-field-contract_data', 'ca', 'Dades del/la responsable del projecte'),
('personal-field-contract_data', 'en', 'Information about the project leader'),
('personal-field-contract_email', 'ca', 'Email vinculat al projecte'),
('personal-field-contract_email', 'en', 'Email linked to the project'),
('personal-field-contract_entity', 'ca', 'Promotor/a del projecte'),
('personal-field-contract_entity', 'en', 'Project promoter'),
('personal-field-contract_entity-entity', 'ca', 'Persona jurídica (associacions, fundacions, empreses)'),
('personal-field-contract_entity-entity', 'en', 'Legal entity (associations, foundations, businesses, etc.)'),
('personal-field-contract_entity-person', 'ca', 'Persona física'),
('personal-field-contract_entity-person', 'en', 'Person'),
('personal-field-contract_name', 'ca', 'Nom i cognoms'),
('personal-field-contract_name', 'en', 'First and last names'),
('personal-field-contract_nif', 'ca', 'Número de NIF / NIE / VAT'),
('personal-field-contract_nif', 'en', 'NIF / NIE / VAT number'),
('personal-field-country', 'ca', 'País'),
('personal-field-country', 'en', 'Country'),
('personal-field-entity_cif', 'ca', 'CIF de l''entitat'),
('personal-field-entity_cif', 'en', 'Organization''s Business ID Number (CIF)'),
('personal-field-entity_name', 'ca', 'Denominació social (nom) de l''entitat'),
('personal-field-entity_name', 'en', 'Official name of the organization'),
('personal-field-entity_office', 'ca', 'Càrrec a l''organització'),
('personal-field-entity_office', 'en', 'Position in the organization'),
('personal-field-location', 'ca', 'Localitat'),
('personal-field-location', 'en', 'City'),
('personal-field-main_address', 'ca', 'Domicili fiscal'),
('personal-field-main_address', 'en', 'Legal address'),
('personal-field-phone', 'ca', 'Telèfon'),
('personal-field-phone', 'en', 'Telephone'),
('personal-field-post_address', 'ca', 'Domicili postal'),
('personal-field-post_address', 'en', 'Postal address'),
('personal-field-post_address-different', 'ca', 'Diferent'),
('personal-field-post_address-different', 'en', 'Different'),
('personal-field-post_address-same', 'ca', 'Igual'),
('personal-field-post_address-same', 'en', 'Same'),
('personal-field-zipcode', 'ca', 'Codi postal'),
('personal-field-zipcode', 'en', 'Postal code'),
('personal-main-header', 'ca', 'Dades personals'),
('personal-main-header', 'en', 'Information about the project leader'),
('preview-main-header', 'ca', 'Previsualització de dades:'),
('preview-main-header', 'en', 'Information preview'),
('preview-send-comment', 'ca', 'Notes addicionals per a l''administrador'),
('preview-send-comment', 'en', 'Additional notes for the administrator'),
('profile-about-header', 'ca', 'Sobre mi'),
('profile-about-header', 'en', 'About me'),
('profile-field-about', 'ca', 'Explica''ns alguna cosa sobre tu'),
('profile-field-about', 'en', 'Tell us something about yourself'),
('profile-field-avatar_current', 'ca', 'La teva imatge actual'),
('profile-field-avatar_current', 'en', 'Your current image'),
('profile-field-avatar_upload', 'ca', 'Pujar una imatge'),
('profile-field-avatar_upload', 'en', 'Upload an image'),
('profile-field-contribution', 'ca', 'Què pots aportar a Goteo'),
('profile-field-contribution', 'en', 'What can you offer Goteo?'),
('profile-field-interests', 'ca', 'Quin tipus de projecte et motiva més'),
('profile-field-interests', 'en', 'What kind of project motivates you most?'),
('profile-field-keywords', 'ca', 'Temes que t''interessen'),
('profile-field-keywords', 'en', 'Topics that interest you'),
('profile-field-location', 'ca', 'Lloc de residència habitual'),
('profile-field-location', 'en', 'Place of residence'),
('profile-field-name', 'ca', 'Nom d''usuari/a'),
('profile-field-name', 'en', 'User name'),
('profile-field-url', 'ca', 'URL'),
('profile-field-url', 'en', 'URL'),
('profile-field-websites', 'ca', 'Les meves pàgines web '),
('profile-field-websites', 'en', 'My web pages'),
('profile-fields-image-title', 'ca', 'Imatge de perfil'),
('profile-fields-image-title', 'en', 'Profile image'),
('profile-fields-social-title', 'ca', 'Perfils socials'),
('profile-fields-social-title', 'en', 'Social profiles'),
('profile-interests-header', 'ca', 'M''interessen projectes amb finalitat de tipus...'),
('profile-interests-header', 'en', 'I am interested in projects that are...'),
('profile-invest_on-header', 'ca', 'Projectes que recolzo'),
('profile-invest_on-header', 'en', 'Projects that I support'),
('profile-invest_on-title', 'ca', 'Cofinança'),
('profile-invest_on-title', 'en', 'Co-finances'),
('profile-keywords-header', 'ca', 'Les meves paraules clau'),
('profile-keywords-header', 'en', 'My key words'),
('profile-last_worth-title', 'ca', 'Data'),
('profile-last_worth-title', 'en', 'Date'),
('profile-location-header', 'ca', 'La meva ubicació'),
('profile-location-header', 'en', 'My location'),
('profile-main-header', 'ca', 'Dades de perfil'),
('profile-main-header', 'en', 'Profile data'),
('profile-my_investors-header', 'ca', 'Els meus cofinançadors'),
('profile-my_investors-header', 'en', 'My co-financiers'),
('profile-my_projects-header', 'ca', 'Els meus projectes'),
('profile-my_projects-header', 'en', 'My projects'),
('profile-my_worth-header', 'ca', 'El meu cabal a Goteo'),
('profile-my_worth-header', 'en', 'My flow on Goteo'),
('profile-name-header', 'ca', 'Perfil de '),
('profile-name-header', 'en', 'Profile of'),
('profile-sharing_interests-header', 'ca', 'Compartint interessos'),
('profile-sharing_interests-header', 'en', 'Sharing interests'),
('profile-social-header', 'ca', 'Social'),
('profile-social-header', 'en', 'Social'),
('profile-webs-header', 'ca', 'Les meves webs'),
('profile-webs-header', 'en', 'My websites'),
('profile-widget-button', 'ca', 'Veure perfil'),
('profile-widget-button', 'en', 'Show profile'),
('profile-widget-user-header', 'ca', 'Usuari'),
('profile-widget-user-header', 'en', 'User'),
('profile-worth-title', 'ca', 'Aporta aquí:'),
('profile-worth-title', 'en', 'Contribute here:'),
('profile-worthcracy-title', 'ca', 'Posició'),
('profile-worthcracy-title', 'en', 'Position'),
('project-collaborations-supertitle', 'ca', 'Necessitats no monetàries'),
('project-collaborations-supertitle', 'en', 'Non-economic needs'),
('project-collaborations-title', 'ca', 'Cercant'),
('project-collaborations-title', 'en', 'Looking for'),
('project-form-header', 'ca', 'Formulari'),
('project-form-header', 'en', 'Form'),
('project-invest-closed', 'ca', 'El projecte ja no està en campanya'),
('project-invest-closed', 'en', 'The project page has expired'),
('project-invest-continue', 'ca', 'Tria el mode de pagament'),
('project-invest-continue', 'en', 'Choose a method of payment'),
('project-invest-fail', 'ca', 'Quelcom ha fallat, si us plau prova-ho de nou '),
('project-invest-fail', 'en', 'Something went wrong, please try again.'),
('project-invest-guest', 'ca', 'Convidat (no oblidis registrar-te)'),
('project-invest-guest', 'en', 'Guest (Don''t forget to register)'),
('project-invest-ok', 'ca', 'S''ha tramitat la teva aportació per cofinançar aquest projecte :) '),
('project-invest-ok', 'en', 'Your contribution to co-finance this project has been processed :)'),
('project-invest-start', 'ca', 'Estàs a un pas de ser cofinançador/a d''aquest projecte'),
('project-invest-start', 'en', 'You''re one step away from becoming a co-financer of this project'),
('project-invest-thanks_mail-fail', 'ca', 'Hi ha hagut algun error en enviar el missatge d''agraïment'),
('project-invest-thanks_mail-fail', 'en', 'There has been an error when sending the gratitude message'),
('project-invest-thanks_mail-success', 'ca', 'Missatge d''agraïment enviat correctament'),
('project-invest-thanks_mail-success', 'en', 'Gratitude message correctly sent'),
('project-invest-total', 'ca', 'Total d''aportacions'),
('project-invest-total', 'en', 'Total contributions'),
('project-menu-home', 'ca', 'Projecte'),
('project-menu-home', 'en', 'Project'),
('project-menu-messages', 'ca', 'Missatges'),
('project-menu-messages', 'en', 'Messages'),
('project-menu-needs', 'ca', 'Necessitats'),
('project-menu-needs', 'en', 'Needs'),
('project-menu-supporters', 'ca', 'Cofinançadors '),
('project-menu-supporters', 'en', 'Co-financiers'),
('project-menu-updates', 'ca', 'Novetats'),
('project-menu-updates', 'en', 'News'),
('project-messages-answer_it', 'ca', 'Respondre '),
('project-messages-answer_it', 'en', 'Respond'),
('project-messages-send_direct-header', 'ca', 'Envia un missatge a l''impulsor/a del projecte'),
('project-messages-send_direct-header', 'en', 'Send a message to this project''s promoter'),
('project-messages-send_message-button', 'ca', 'Enviar'),
('project-messages-send_message-button', 'en', 'Send'),
('project-messages-send_message-header', 'ca', 'Escriu el teu missatge'),
('project-messages-send_message-header', 'en', 'Write your message'),
('project-messages-send_message-your_answer', 'ca', 'Escriu aquí la teva resposta'),
('project-messages-send_message-your_answer', 'en', 'Write your answer here'),
('project-review-confirm_mail-fail', 'ca', 'Hi ha hagut algun error en enviar el missatge de confirmació de recepció'),
('project-review-confirm_mail-fail', 'en', 'There has been an error when sending the confirmation message'),
('project-review-confirm_mail-success', 'ca', 'Missatge de confirmació de recepció per a revisió enviat correctament'),
('project-review-confirm_mail-success', 'en', 'Reviewing confirmation message correctly sent'),
('project-review-request_mail-fail', 'ca', 'Hi ha hagut algun error en enviar la sol·licitud de revisió'),
('project-review-request_mail-fail', 'en', 'There has been an error when sending the reviewing invitation'),
('project-review-request_mail-success', 'ca', 'Missatge de sol·licitud de revisió enviat correctament'),
('project-review-request_mail-success', 'en', 'Reviewing invitation message correctly sent'),
('project-rewards-header', 'ca', 'Retorn'),
('project-rewards-header', 'en', 'Benefits'),
('project-rewards-individual_reward-limited', 'ca', 'Recompensa limitada'),
('project-rewards-individual_reward-limited', 'en', 'Limited reward'),
('project-rewards-individual_reward-title', 'ca', 'Recompenses individuals'),
('project-rewards-individual_reward-title', 'en', 'Individual rewards'),
('project-rewards-individual_reward-units_left', 'ca', 'Queden <span class="left">%s</span> unitats'),
('project-rewards-individual_reward-units_left', 'en', ' <span class="left">%s</span> units left'),
('project-rewards-social_reward-title', 'ca', 'Retorn col·lectiu '),
('project-rewards-social_reward-title', 'en', 'Collective benefits'),
('project-rewards-supertitle', 'ca', 'Què ofereix a canvi'),
('project-rewards-supertitle', 'en', 'What is offered in exchange'),
('project-share-header', 'ca', 'Comparteix aquest projecte'),
('project-share-header', 'en', 'Share this project'),
('project-share-pre_header', 'ca', 'Fes saber a la teva xarxa que'),
('project-share-pre_header', 'en', 'Let your network know that'),
('project-side-investors-header', 'ca', 'Ja han aportat'),
('project-side-investors-header', 'en', 'Already contributed'),
('project-spread-embed_code', 'ca', 'Codi Embed'),
('project-spread-embed_code', 'en', 'Embedding Code'),
('project-spread-header', 'ca', 'Difon aquest projecte'),
('project-spread-header', 'en', 'Spread the word'),
('project-spread-pre_widget', 'ca', 'Difon aquest projecte'),
('project-spread-pre_widget', 'en', 'Spread the word'),
('project-spread-widget', 'ca', 'Widget del projecte'),
('project-spread-widget', 'en', 'Project widget'),
('project-spread-widget_legend', 'ca', 'Còpia i enganxa el codi a la teva web o blog i ajuda a difondre aquest projecte'),
('project-spread-widget_legend', 'en', 'Copy and paste the code in your website or blog to help spread the word about this project'),
('project-spread-widget_title', 'ca', 'publica el widget del projecte'),
('project-spread-widget_title', 'en', 'publish the project widget'),
('project-support-supertitle', 'ca', 'Necessitats econòmiques'),
('project-support-supertitle', 'en', 'Economic needs'),
('project-view-categories-title', 'ca', 'Categories'),
('project-view-categories-title', 'en', 'Categories'),
('project-view-metter-days', 'ca', 'Queden'),
('project-view-metter-days', 'en', 'Remaining'),
('project-view-metter-got', 'ca', 'Obtingut'),
('project-view-metter-got', 'en', 'Received'),
('project-view-metter-investment', 'ca', 'Cofinançament '),
('project-view-metter-investment', 'en', 'Co-financing'),
('project-view-metter-investors', 'ca', 'Cofinançadors '),
('project-view-metter-investors', 'en', 'Co-financiers'),
('project-view-metter-minimum', 'ca', 'Mínim'),
('project-view-metter-minimum', 'en', 'Minimum'),
('project-view-metter-optimum', 'ca', 'Òptim  '),
('project-view-metter-optimum', 'en', 'Optimum'),
('recover-email-sended', 'ca', 'T''hem enviat un email per restablir la contrasenya del teu compte. Verifica també la carpeta de correu no desitjat o /Spam.'),
('recover-email-sended', 'en', 'We have sent you an email with instructions for recovering your password. If you don''t get it right away, be sure to check your junk or spam folders.'),
('recover-request-fail', 'ca', 'No es pot recuperar la contrasenya de cap compte amb aquestes dades'),
('recover-request-fail', 'en', 'We could not recover the password from any account with that data'),
('recover-token-incorrect', 'ca', 'El codi de recuperació de contrasenya no és vàlid'),
('recover-token-incorrect', 'en', 'The code for recovering your password is not valid'),
('register-confirm_mail-fail', 'ca', 'Hi ha hagut algun error en enviar l''email d''activació de compte. Per favor, contacta''ns a %'),
('register-confirm_mail-fail', 'en', 'There has been an error when sending the account activation email. Please contact us at %s'),
('register-confirm_mail-success', 'ca', 'Missatge d''activació de compte enviat. Si no està en la teva bústia de correu, revisa la carpeta de /Spam'),
('register-confirm_mail-success', 'en', 'Account activation message sent. If it you don''t find it on your Inbox, check your /Spam folder.'),
('regular-admin_board', 'ca', 'Panell admin'),
('regular-admin_board', 'en', 'Admin panel'),
('regular-allsome', 'ca', 'tots/alguns de'),
('regular-allsome', 'en', 'all/some of'),
('regular-anonymous', 'ca', 'Anònim'),
('regular-anonymous', 'en', 'Anonymous'),
('regular-ask', 'ca', 'Preguntar'),
('regular-ask', 'en', 'Ask'),
('regular-banner-metter', 'ca', 'Obtingut-de-queden'),
('regular-banner-metter', 'en', 'Obtained-of-lasting'),
('regular-by', 'ca', 'Per:'),
('regular-by', 'en', 'By:'),
('regular-collaborate', 'ca', 'Col·labora '),
('regular-collaborate', 'en', 'Collaborate'),
('regular-community', 'ca', 'Comunitat'),
('regular-create', 'ca', 'Crea un projecte'),
('regular-create', 'en', 'Create a project'),
('regular-days', 'ca', 'dies'),
('regular-days', 'en', 'days'),
('regular-delete', 'ca', 'Esborrar'),
('regular-delete', 'en', 'Erase'),
('regular-discover', 'ca', 'Descobreix projectes'),
('regular-discover', 'en', 'Discover projects'),
('regular-edit', 'ca', 'Editar'),
('regular-edit', 'en', 'Edit'),
('regular-facebook', 'ca', 'Facebook'),
('regular-facebook', 'en', 'Facebook'),
('regular-facebook-url', 'ca', 'http://www.facebook.com/'),
('regular-facebook-url', 'en', 'http://www.facebook.com/'),
('regular-fail_mark', 'ca', 'Arxivat... '),
('regular-fail_mark', 'en', 'Closed'),
('regular-faq', 'ca', 'Preguntes freqüents '),
('regular-faq', 'en', 'Frequently asked questions'),
('regular-first', 'ca', 'Primera'),
('regular-first', 'en', 'First'),
('regular-footer-contact', 'ca', 'Contacte'),
('regular-footer-contact', 'de', 'Kontakt'),
('regular-footer-contact', 'en', 'Contact'),
('regular-footer-legal', 'ca', 'Termes legals'),
('regular-footer-legal', 'de', 'Rechtliche Bestimmungen'),
('regular-footer-legal', 'en', 'Legal terms'),
('regular-footer-privacy', 'ca', 'Política de privacitat'),
('regular-footer-privacy', 'de', 'Datenschutz'),
('regular-footer-privacy', 'en', 'Privacy policy'),
('regular-footer-terms', 'ca', 'Condicions d´us'),
('regular-footer-terms', 'de', 'Nutzungsbedingungen'),
('regular-footer-terms', 'en', 'Terms of service'),
('regular-google', 'ca', 'Google+'),
('regular-google', 'en', 'Google+'),
('regular-google-url', 'ca', 'https://plus.google.com/'),
('regular-google-url', 'en', 'https://plus.google.com/'),
('regular-gotit_mark', 'ca', 'Finançat!'),
('regular-gotit_mark', 'en', 'Funded!'),
('regular-go_up', 'ca', 'Pujar'),
('regular-go_up', 'en', 'Upload'),
('regular-header-about', 'ca', 'Sobre Goteo'),
('regular-header-about', 'en', 'About Goteo'),
('regular-header-blog', 'ca', 'Blog'),
('regular-header-blog', 'en', 'Blog'),
('regular-header-faq', 'ca', 'FAQ'),
('regular-header-faq', 'en', 'FAQ'),
('regular-header-glossary', 'ca', 'Principis per a una economia oberta'),
('regular-header-glossary', 'en', 'Glossary of terms used in Goteo'),
('regular-hello', 'ca', 'Hola'),
('regular-hello', 'en', 'Hello'),
('regular-home', 'ca', 'Inici'),
('regular-home', 'en', 'Start'),
('regular-identica', 'ca', 'Identi.ca'),
('regular-identica', 'en', 'Identi.ca'),
('regular-identica-url', 'ca', 'http://identi.ca/'),
('regular-identica-url', 'en', 'http://identi.ca/'),
('regular-im', 'ca', 'Sóc'),
('regular-im', 'en', 'I am'),
('regular-invest', 'ca', 'Aportar'),
('regular-invest', 'en', 'Contribute'),
('regular-investing', 'ca', 'Aportant'),
('regular-investing', 'en', 'Contributing'),
('regular-invest_it', 'ca', 'Cofinança el projecte'),
('regular-invest_it', 'en', 'Co-finance this project'),
('regular-keepiton', 'ca', 'Encara pots seguir aportant'),
('regular-keepiton_mark', 'ca', 'Mínim assolit'),
('regular-keepiton_mark', 'en', 'Minimum achieved'),
('regular-last', 'ca', 'Darrera'),
('regular-last', 'en', 'Last'),
('regular-license', 'ca', 'Llicència'),
('regular-license', 'en', 'License'),
('regular-linkedin', 'ca', 'LinkedIn'),
('regular-linkedin', 'en', 'LinkedIn'),
('regular-linkedin-url', 'ca', 'http://es.linkedin.com/in/'),
('regular-linkedin-url', 'en', 'http://es.linkedin.com/in/'),
('regular-login', 'ca', 'Accedeix'),
('regular-login', 'en', 'Log in'),
('regular-logout', 'ca', 'Tancar sessió'),
('regular-logout', 'en', 'Log out'),
('regular-looks_for', 'ca', 'cerca:'),
('regular-looks_for', 'en', 'looking for:'),
('regular-main-header', 'ca', 'Goteo.org'),
('regular-main-header', 'en', 'Goteo.org'),
('regular-mandatory', 'ca', 'Camp obligatori!'),
('regular-mandatory', 'en', 'Required field!'),
('regular-media_legend', 'ca', 'Llegenda'),
('regular-media_legend', 'en', 'Key'),
('regular-menu', 'ca', 'Menú'),
('regular-menu', 'en', 'Menu'),
('regular-message_fail', 'ca', 'Hi ha hagut algun error en enviar el missatge'),
('regular-message_fail', 'en', 'There was an error sending the message'),
('regular-message_success', 'ca', 'Missatge enviat correctament'),
('regular-message_success', 'en', 'Message sent correctly'),
('regular-months', 'ca', 'mesos '),
('regular-months', 'en', 'months'),
('regular-more_info', 'ca', '+ info'),
('regular-more_info', 'en', 'More info'),
('regular-news', 'ca', 'Notícies: '),
('regular-news', 'en', 'News'),
('regular-new_project', 'ca', 'Projecte nou'),
('regular-new_project', 'en', 'New project'),
('regular-no', 'ca', 'No'),
('regular-no', 'en', 'No'),
('regular-onrun_mark', 'ca', 'En marxa!'),
('regular-onrun_mark', 'en', 'In progress!'),
('regular-preview', 'ca', 'Previsualitzar '),
('regular-preview', 'en', 'Preview'),
('regular-projects', 'ca', 'projectes'),
('regular-projects', 'en', 'projects'),
('regular-published_no', 'ca', 'Esborrany'),
('regular-published_no', 'en', 'Draft'),
('regular-published_yes', 'ca', 'Publicat'),
('regular-published_yes', 'en', 'Published'),
('regular-read_more', 'ca', 'Llegir més'),
('regular-read_more', 'en', 'Read more'),
('regular-review_board', 'ca', 'Panell revisor'),
('regular-review_board', 'en', 'Review panel'),
('regular-round', 'ca', 'ª ronda'),
('regular-round', 'en', 'Round'),
('regular-save', 'ca', 'Desar'),
('regular-save', 'en', 'Save'),
('regular-search', 'ca', 'Cercar'),
('regular-search', 'en', 'Search'),
('regular-see_all', 'ca', 'Veure tots'),
('regular-see_all', 'en', 'See all'),
('regular-see_blog', 'ca', 'Blog'),
('regular-see_blog', 'en', 'Blog'),
('regular-see_details', 'ca', 'Veure detalls'),
('regular-see_details', 'en', 'See details'),
('regular-see_more', 'ca', 'Veure més'),
('regular-see_more', 'en', 'See more'),
('regular-send_message', 'ca', 'Enviar missatge'),
('regular-send_message', 'en', 'Send message'),
('regular-share-facebook', 'ca', 'Goteo al Facebook'),
('regular-share-facebook', 'en', 'Goteo on Facebook'),
('regular-share-rss', 'ca', 'RSS/BLOG'),
('regular-share-rss', 'en', 'RSS/Blog'),
('regular-share-twitter', 'ca', 'Segueix-nos a Twitter'),
('regular-share-twitter', 'en', 'Follow us on Twitter'),
('regular-share_this', 'ca', 'Compartir a:'),
('regular-share_this', 'en', 'Share on:'),
('regular-sorry', 'ca', 'Ho sentim'),
('regular-sorry', 'en', 'We are sorry'),
('regular-success_mark', 'ca', 'Reeixit!'),
('regular-success_mark', 'en', 'Successful!'),
('regular-thanks', 'ca', 'Gràcies'),
('regular-thanks', 'en', 'Thank you'),
('regular-total', 'ca', 'Total'),
('regular-total', 'en', 'Total'),
('regular-translate_board', 'ca', 'Panell traductor'),
('regular-translate_board', 'en', 'Translation panel'),
('regular-twitter', 'ca', 'Twitter'),
('regular-twitter', 'en', 'Twitter'),
('regular-twitter-url', 'ca', 'http://twitter.com/#!/'),
('regular-twitter-url', 'en', 'http://twitter.com/#!/'),
('regular-view_project', 'ca', 'Projecte'),
('regular-view_project', 'en', 'See project'),
('regular-weeks', 'ca', 'setmanes'),
('regular-weeks', 'en', 'weeks'),
('regular-yes', 'ca', 'Sí'),
('regular-yes', 'en', 'Yes'),
('review-ajax-alert', 'ca', 'Els criteris i els camps d''avaluació / millores es desen automàticament en modificar-se'),
('review-ajax-alert', 'en', 'Evaluation / feedback fields will be automatically updated when changed'),
('review-closed-alert', 'ca', 'Has donat per acabada aquesta revisió, no pots fer més canvis'),
('review-closed-alert', 'en', 'You marked the review as finished, no more changes can be done.'),
('rewards-field-individual_reward-amount', 'ca', 'Import finançat'),
('rewards-field-individual_reward-amount', 'en', 'Amount financed'),
('rewards-field-individual_reward-description', 'ca', 'Descripció'),
('rewards-field-individual_reward-description', 'en', 'Description'),
('rewards-field-individual_reward-other', 'ca', 'Especifica el tipus de recompensa'),
('rewards-field-individual_reward-other', 'en', 'Specify the type of reward'),
('rewards-field-individual_reward-reward', 'ca', 'Recompensa'),
('rewards-field-individual_reward-reward', 'en', 'Reward'),
('rewards-field-individual_reward-type', 'ca', 'Tipus de recompensa'),
('rewards-field-individual_reward-type', 'en', 'Type of reward'),
('rewards-field-individual_reward-units', 'ca', 'Unitats'),
('rewards-field-individual_reward-units', 'en', 'Units'),
('rewards-field-social_reward-description', 'ca', 'Descripció'),
('rewards-field-social_reward-description', 'en', 'Description'),
('rewards-field-social_reward-license', 'ca', 'Opcions de llicència'),
('rewards-field-social_reward-license', 'en', 'Licensing options'),
('rewards-field-social_reward-other', 'ca', 'Especifica el tipus de retorn'),
('rewards-field-social_reward-other', 'en', 'Specify the type of benefit'),
('rewards-field-social_reward-reward', 'ca', 'Retorn'),
('rewards-field-social_reward-reward', 'en', 'Benefits'),
('rewards-field-social_reward-type', 'ca', 'Tipus de retorn'),
('rewards-field-social_reward-type', 'en', 'Type of benefit'),
('rewards-fields-individual_reward-title', 'ca', 'Recompenses individuals'),
('rewards-fields-individual_reward-title', 'en', 'Individual rewards'),
('rewards-fields-social_reward-title', 'ca', 'Retorns col·lectius'),
('rewards-fields-social_reward-title', 'en', 'Collective benefits'),
('rewards-main-header', 'ca', 'Retorns i recompenses'),
('rewards-main-header', 'en', 'Benefits and rewards'),
('social-account-facebook', 'ca', 'http://www.facebook.com/pages/Goteo/268491113192109'),
('social-account-facebook', 'en', 'http://www.facebook.com/pages/Goteo/268491113192109'),
('social-account-google', 'ca', 'https://plus.google.com/b/116559557256583965659/'),
('social-account-google', 'en', 'https://plus.google.com/b/116559557256583965659/'),
('social-account-identica', 'ca', 'http://identi.ca/goteofunding'),
('social-account-identica', 'en', 'http://identi.ca/goteofunding'),
('social-account-linkedin', 'en', 'Goteo page at Linkedin'),
('social-account-twitter', 'ca', 'http://twitter.com/goteofunding'),
('social-account-twitter', 'en', 'http://twitter.com/goteofunding'),
('step-1', 'ca', 'Perfil'),
('step-1', 'en', 'Profile'),
('step-2', 'ca', 'Promotor/a'),
('step-2', 'en', 'Promoter'),
('step-3', 'ca', 'Descripció'),
('step-3', 'en', 'Description'),
('step-4', 'ca', 'Costos'),
('step-4', 'en', 'Expenses'),
('step-5', 'ca', 'Retorn'),
('step-5', 'en', 'Benefits'),
('step-6', 'ca', 'Col·laboracions'),
('step-6', 'en', 'Collaborations'),
('step-7', 'ca', 'Previsualització'),
('step-7', 'en', 'Preview'),
('step-costs', 'ca', 'Pas 4: Projecte / Costos'),
('step-costs', 'en', 'Step 4: Project/Expenses'),
('step-overview', 'ca', 'Pas 3: Descripció del projecte'),
('step-overview', 'en', 'Step 3: Project description'),
('step-preview', 'ca', 'Projecte / Previsualització'),
('step-preview', 'en', 'Project / Preview'),
('step-rewards', 'ca', 'Pas 5: Projecte / Retorns'),
('step-rewards', 'en', 'Step 5: Project / Benefits'),
('step-supports', 'ca', 'Pas 6: Projecte / Col·laboracions'),
('step-supports', 'en', 'Step 6: Project / Collaborations'),
('step-userPersonal', 'ca', 'Pas 2: Dades personals'),
('step-userPersonal', 'en', 'Step 2: Personal information'),
('step-userProfile', 'ca', 'Pas 1: Usuari / Perfil'),
('step-userProfile', 'en', 'Step 1: User / Profile'),
('supports-field-description', 'ca', 'Descripció'),
('supports-field-description', 'en', 'Description'),
('supports-field-support', 'ca', 'Resum'),
('supports-field-support', 'en', 'Summary'),
('supports-field-type', 'ca', 'Tipus d''ajut'),
('supports-field-type', 'en', 'Type of help'),
('supports-fields-support-title', 'ca', 'Col·laboracions'),
('supports-fields-support-title', 'en', 'Collaborations'),
('supports-main-header', 'ca', 'Sol·licitud de col·laboracions'),
('supports-main-header', 'en', 'Request for collaborations'),
('tooltip-dashboard-user-access_data', 'ca', 'Aquestes són les teves dades actuals d''accés. L''única cosa que no es pot canviar és el login o nom d''usuari.'),
('tooltip-dashboard-user-access_data', 'en', 'This is your current log in data. The only thing you cannot change is your username.'),
('tooltip-dashboard-user-change_email', 'ca', 'Des d''aquí pots canviar l''adreça de correu electrònic on reps els missatges de Goteo.'),
('tooltip-dashboard-user-change_email', 'en', 'Change the email address at which you receive messages from Goteo.'),
('tooltip-dashboard-user-change_password', 'ca', 'Des d''aquí pots canviar la contrasenya amb que accedeixes a Goteo.'),
('tooltip-dashboard-user-change_password', 'en', 'Change your password that you use to log in to Goteo.'),
('tooltip-dashboard-user-confirm_email', 'ca', 'Confirma la nova adreça de correu electrònic on vols rebre els missatges de Goteo.'),
('tooltip-dashboard-user-confirm_email', 'en', 'Confirm the new email address where you wish to receive messages from Goteo.'),
('tooltip-dashboard-user-confirm_password', 'ca', 'Confirma la nova contrasenya amb que vols accedir a Goteo.'),
('tooltip-dashboard-user-confirm_password', 'en', 'Confirm the new password with which you want to log in to Goteo.'),
('tooltip-dashboard-user-new_email', 'ca', 'Indica la nova adreça de correu electrònic on vols rebre els missatges de Goteo.'),
('tooltip-dashboard-user-new_email', 'en', 'Specify the new email address at which you wish to receive messages from Goteo.'),
('tooltip-dashboard-user-new_password', 'ca', 'Escriu la nova contrasenya amb que vols accedir a Goteo.'),
('tooltip-dashboard-user-new_password', 'en', 'Write the new password that you want to use to log in to Goteo'),
('tooltip-dashboard-user-user_password', 'ca', 'Escriu la contrasenya actual amb que accedeixes a Goteo.'),
('tooltip-dashboard-user-user_password', 'en', 'Write the current password that you use to log in to Goteo'),
('tooltip-project-about', 'ca', 'Descriu breument el projecte de manera conceptual, tècnica o pràctica. Per exemple detallant les seves característiques de funcionament, o en quines parts consistirà. Pensa com serà una vegada acabat i tot el que la gent podrà fer amb ell.'),
('tooltip-project-about', 'en', 'Briefly describe the project in conceptual, technical, or practical terms. For example, by detailing how it works or what it is made up of. Think about what it will be like when it''s done, and what people will be able to do with it.'),
('tooltip-project-category', 'ca', 'Selecciona tantes categories com creguis necessari per descriure el projecte, basant-te en tot el que has descrit amunt. Mitjançant aquestes paraules clau ho podrem fer arribar a diferents usuaris de Goteo.'),
('tooltip-project-category', 'en', 'Choose as many categories as you deem necessary in order to describe the project, based on everything you''ve written above. Your choices will help us get your project out to interested Goteo users.'),
('tooltip-project-comment', 'ca', 'Tens dubtes o comentaris per a que els llegeixi l''administrador de Goteo? Aquest és el lloc on explicar alguna part del que has escrit de la qual no estiguis segur, per proposar millores, etc.'),
('tooltip-project-comment', 'en', 'Do you have any doubts or comments for the Goteo administrator? This is the place to mention some part of what you have written that you''re not sure about, to suggest improvements, etc.'),
('tooltip-project-contract_birthdate', 'ca', 'Indica la data del teu naixement. No es farà pública en cap cas, ens interessa per temes estadístics.'),
('tooltip-project-contract_birthdate', 'en', 'Enter your date of birth. It will never be published, but rather only used for statistical purposes.');
INSERT INTO `text` (`id`, `lang`, `text`) VALUES
('tooltip-project-contract_data', 'ca', 'Ja sigui com a persona física o bé jurídica, és necessari que algú figuri com a promotor/a de el projecte, i també per a la interlocució amb l''equip de Goteo. No ha de coincidir necessàriament amb el perfil d''usuari de l''apartat anterior.'),
('tooltip-project-contract_data', 'en', 'Whether it''s a person or legal entity, someone has to be named as the project promoter, as well as the liaison with the Goteo team. It doesn''t have to be the same as the user profile from the previous field.'),
('tooltip-project-contract_email', 'ca', 'Adreça de correu electrònic principal associada al projecte. Aquí rebràs les notificacions i missatges de l''equip de Goteo en relació al projecte proposat.'),
('tooltip-project-contract_email', 'en', 'Main email address associated with the project.You will receive all the notifications and messages from the Goteo team relating to your project proposal at this address.'),
('tooltip-project-contract_entity', 'ca', 'Selecciona "Persona física" en cas que tu siguis el/la promotor/a del projecte i et representis a tu mateix/a. Si el promotor és un grup és necessari per triar la segona opció que tingui un CIF propi, en aquest cas tria "Persona jurídica". '),
('tooltip-project-contract_entity', 'en', 'Choose “Person” if you are the project promoter and are representing yourself. If the promoter is a group you have to choose the second option, “Legal Entity”, in which case, you''ll also have to enter a CIF.'),
('tooltip-project-contract_name', 'ca', 'Han de ser el teu nom i cognoms reals. Tingues en compte que figuraràs com a responsable del projecte.'),
('tooltip-project-contract_name', 'en', 'Please use your real first name and surname. Note that you will be listed as the project leader.'),
('tooltip-project-contract_nif', 'ca', 'El teu número de NIF o NIE amb xifres i lletres.'),
('tooltip-project-contract_nif', 'en', 'Your NIF, NIE or VAT number with digits and the letter'),
('tooltip-project-cost-amount', 'ca', 'Especifica l''import en euros del que consideres que implica aquest cost. No facis servir punts per a les xifres de milers ok?'),
('tooltip-project-cost-amount', 'en', 'Specify the amount in euros for each expense. Don''t use points or commas to mark the thousands, OK?'),
('tooltip-project-cost-cost', 'ca', 'Introdueix un títol el més descriptiu possible d''aquest cost.'),
('tooltip-project-cost-cost', 'en', 'Enter the most descriptive title possible for this expense'),
('tooltip-project-cost-dates', 'ca', 'Indica entre quines dates calcules que es durà a terme aquesta tasca o cobrir aquest cost. Planifica-ho començant no abans de dos mesos a partir d''ara, doncs cal considerar el termini per revisar la proposta, publicar-la si és seleccionada i els 40 dies del primer finançament.'),
('tooltip-project-cost-dates', 'en', 'Give a time frame for when the task will be completed or the expense will be covered. Plan it by starting at least two months from today, since you have to take into account the time needed for revising the proposal, publicizing it if it is chosen, and the 40 days from the first financing. Don''t include pieces that were developed previously even though these are good to explain in your project''s description. We only want things on the schedule that still need to be done and for which you''re requesting co-financing.'),
('tooltip-project-cost-description', 'ca', 'Explica breument en què consisteix aquest cost.'),
('tooltip-project-cost-description', 'en', 'Briefly explain what this expense consists of.'),
('tooltip-project-cost-required', 'ca', 'Aquest punt és molt important: en cada cost que introdueixis has de marcar si és imprescindible o bé addicional. Tots els costos marcats com a imprescindibles es sumaran donant el valor de l''import de finançament mínim per al projecte. La suma dels costos addicionals, en canvi, es podrà obtenir durant la segona ronda de finançament, després d''haver obtingut els fons imprescindibles.'),
('tooltip-project-cost-required', 'en', 'This section is very important: for each expense that you enter, you have to indicate if it is absolutely necessary or just supplemental. All of the expenses that are marked as necessary will be added to get the full amount of minimum financing required for the project. The sum of the supplemental expenses, in contrast, can be requested during the second round of financing, after having gotten the “necessary” funds.'),
('tooltip-project-cost-type', 'ca', 'Aquí has d''especificar el tipus de cost: vinculat a una tasca (quelcom que requereix l''habilitat o coneixements d''algú), l''obtenció de material (consumibles, matèries primeres) o bé infraestructura (espais, equips, mobiliari).'),
('tooltip-project-cost-type', 'en', 'Here you should specify the type of expense: related to a task (something that requires someone''s skill or knowledge), obtaining material (consumables, raw materials) or infrastructure (spaces, equipment, furniture) '),
('tooltip-project-cost-type-material', 'ca', 'Materials necessaris per al projecte com ara eines, papereria, equips informàtics, etc.'),
('tooltip-project-cost-type-material', 'en', 'Necessary materials for the project, like tools, office material, computer equipment, etc.'),
('tooltip-project-cost-type-structure', 'ca', 'Inversió en costos vinculats a un local, mitjà de transport o altres infraestructures bàsiques per dur a terme el projecte. '),
('tooltip-project-cost-type-structure', 'en', 'Investment in costs that are linked to an office space or store front, mode of transport, or other basic infrastructure needed to bring the project to fruition.'),
('tooltip-project-cost-type-task', 'ca', 'Tasques on invertir coneixements i/o habilitats per desenvolupar alguna part del projecte.'),
('tooltip-project-cost-type-task', 'en', 'Tasks in which knowledge and skills can be invested in order to develop a part of the project.'),
('tooltip-project-costs', 'ca', 'Com més precisió en el desglossament millor valorarà Goteo la informació general del projecte. '),
('tooltip-project-costs', 'en', 'The more precisely you break down the expenses, the better Goteo will be able to evaluate the general information about your project.'),
('tooltip-project-currently', 'ca', 'Indica a quina fase es troba el projecte actualment respecte al seu procés de creació o execució.'),
('tooltip-project-currently', 'en', 'Which phase is the project currently in with respect to the process of creation or execution?'),
('tooltip-project-description', 'ca', 'Descriu el projecte amb un mínim de 80 paraules (amb menys marcarà error). Explica-ho de manera que sigui fàcil d''entendre per a qualsevol persona. Intenta donar-li un enfocament atractiu i social, resumint els seus punts forts, com ara què ho fa únic, innovador o especial.'),
('tooltip-project-description', 'en', 'Describe the project in at least 80 words (any less will generate an error). Explain it so that it''s easy to understand for a lay person. Try to give it an attractive, social focus, summarizing its strong points that make it unique, innovative or special. '),
('tooltip-project-entity_cif', 'ca', 'Escriu el CIF (lletra + número) de l''organització.'),
('tooltip-project-entity_cif', 'en', 'Enter the organization''s business number (CIF, letter plus the number)'),
('tooltip-project-entity_name', 'ca', 'Escriu el nom de l''organització tal com apareix al seu CIF.'),
('tooltip-project-entity_name', 'en', 'Write the name of the organization exactly as it appears in its CIF.'),
('tooltip-project-entity_office', 'ca', 'Escriu el càrrec amb que representes l''organització (secretari/a, president/a, vocal...)'),
('tooltip-project-entity_office', 'en', 'Enter the position with which you represent the organization (secretary, president, ...)'),
('tooltip-project-goal', 'ca', 'Enumera les metes principals del projecte, a curt i llarg termini, en tots els aspectes que consideris important destacar. Es tracta d''una altra oportunitat per contactar i aconseguir el suport de gent que simpatitzi amb aquests objectius.'),
('tooltip-project-goal', 'en', 'List the project''s principal goals, in the long and short term, in all aspects that you consider important. This is another opportunity to contact with and get support from the people who sympathize with those objectives.'),
('tooltip-project-image', 'ca', 'Poden ser esquemes, captures de pantalla, fotografies, il·lustracions, storyboards, etc. (la seva llicència d''autoria ha de ser compatible amb la que seleccions a l''apartat 5). Et recomanem que siguin diverses i de bona resolució. Pots pujar tantes com vulguis!'),
('tooltip-project-image', 'en', 'These might be outlines, screenshots, photographs, illustrations, storyboards, etc. (their authoring license should be compatible with what you choose in section 5). Use a variety, and at a decent resolution. You can upload as many as you like.'),
('tooltip-project-image_upload', 'ca', 'ESBORRAR'),
('tooltip-project-image_upload', 'en', 'ERASE'),
('tooltip-project-individual_reward-amount', 'ca', 'Import a canvi del que es pot obtenir aquest tipus de recompensa. '),
('tooltip-project-individual_reward-amount', 'en', 'Amount for which one can receive this type of reward.'),
('tooltip-project-individual_reward-description', 'ca', 'Explica breument en què consistirà la recompensa pels qui cofinancin amb aquest import el projecte.'),
('tooltip-project-individual_reward-description', 'en', 'Briefly explain what the reward will consist of for those who co-finance the project at this level.'),
('tooltip-project-individual_reward-icon-other', 'ca', 'Especifica breument en què consistirà aquest altre tipus de recompensa individual.'),
('tooltip-project-individual_reward-icon-other', 'en', 'Briefly describe this other type of individual reward'),
('tooltip-project-individual_reward-reward', 'ca', 'Intenta que el títol sigui el més descriptiu possible. Recorda que pots afegir més recompenses a continuació.'),
('tooltip-project-individual_reward-reward', 'en', 'Try to make the title as descriptive as possible. Remember that you can add more rewards later.'),
('tooltip-project-individual_reward-type', 'ca', 'Selecciona el tipus de recompensa que el projecte pot oferir a la gent que aporta aquesta quantitat.'),
('tooltip-project-individual_reward-type', 'en', 'Select the type of reward that the project can offer to people who contribute this amount.'),
('tooltip-project-individual_reward-units', 'ca', 'Quantitat limitada d''ítems que es poden oferir individualitzadament a canvi d''aquest import. Calcula que la suma total de totes les recompenses individuals del projecte s''apropin al pressupost mínim de finançament que has establert. També la possibilitat d''incorporar les recompenses prèvies a mesura que augmenti l''import, pots començar dient "Tot lo anterior més..." '),
('tooltip-project-individual_reward-units', 'en', 'Limited quantity of items that can be offered individually in exchange for this amount. Adjust the amounts so that the total sum of all of the individual rewards for the project is close to the minimum financing budget that you have created. Don''t forget that you can also incorporate the previous rewards as the amount increases, by starting with “All of the preceding, plus...”'),
('tooltip-project-individual_rewards', 'ca', 'Aquí cal especificar la recompensa per qui recolzi el projecte, vinculada a una quantitat de diners concreta. Tria bé el que ofereixes, intenta que siguin productes/serveis atractius o enginyosos però que no generin despeses extra de producció. Si no hi ha més remei que tenir aquestes despeses extra, calcula el que costa produir aquesta recompensa (temps, materials, enviaments, etc) i ofereix un nombre limitat. Pensa que hauràs de complir amb tots aquests compromisos al final de la producció del projecte. '),
('tooltip-project-individual_rewards', 'en', 'Specify the reward that a supporter will receive, linked to a particular amount of money. Carefully choose what you''re offering. Try to offer attractive or ingenious products or services that don''t generate extra production expenses. If you must incur extra expenses, calculate the amount that it will cost to produce this reward (including time, materials, shipping, etc.) and offer a limited quantity. Remember that you will have to follow through with these obligations when the project is produced.'),
('tooltip-project-keywords', 'ca', 'A mesura que introdueixis text el sistema et suggerirà paraules clau que ja han escrit altres usuaris. Aquestes categories ajuden a vincular el teu projecte amb persones afins.'),
('tooltip-project-keywords', 'en', 'As you enter text, the system will suggest key words that other users have written. These categories help to link your project with other similar ones.'),
('tooltip-project-lang', 'ca', 'Indica en quina llengua omples el formulari del projecte.'),
('tooltip-project-lang', 'en', 'Indicate the language in which you''re filling out the project form.'),
('tooltip-project-main_address', 'ca', 'Adreça fiscal de la persona o organització (segons pertoqui).'),
('tooltip-project-main_address', 'en', 'Legal address of the person or organization (whichever applies)'),
('tooltip-project-media', 'ca', 'Còpia i enganxa l''adreça URL d''un vídeo de presentació del projecte, publicat prèviament a Youtube o Vimeo. Aquesta part és fonamental per atreure l''atenció de potencials cofinançadors i col·laboradors, i com més original sigui millor. Et recomanem que tingui una durada d''entre 2 i 4 minuts. '),
('tooltip-project-media', 'en', 'Copy and paste the URL address of the project''s presentation video, previously published on YouTube or Vimeo. This is an essential step in attracting the attention of potential co-financiers and collaborators, and the more original it is, the better. Videos should last between 2 and 4 minutes.'),
('tooltip-project-motivation', 'ca', 'Explica quins motius o circumstàncies t''han portat a idear el projecte, així com les comunitats o usuaris a qui va destinat. T''ajudarà a connectar amb persones mogudes per aquest mateix tipus d''interessos, problemàtiques o gustos.'),
('tooltip-project-motivation', 'en', 'Explain the reasons or circumstances that led you do think of this project, as well as the communities or users to whom it is geared. It will help you connect with people who are moving in this same circle of interests, problems, and tastes.'),
('tooltip-project-name', 'ca', 'Escull un nom per al projecte (ni massa curt, ni massa llarg :) que permeti fer-se una idea mínima de per a què serveix o en què consisteix. Pensa que apareixerà a molts llocs de la web!'),
('tooltip-project-name', 'en', 'Enter a title for your project. The shorter the better, you can add description in the following field.'),
('tooltip-project-nsupport', 'en', 'Advice on filling out a new collaboration proposal'),
('tooltip-project-phone', 'ca', 'Número de telèfon mòbil o fix, amb el seu prefix de marcat.'),
('tooltip-project-phone', 'en', 'Telephone number (mobile or landline) with prefix'),
('tooltip-project-post_address', 'ca', 'Indica en cas necessari una adreça postal detallada.'),
('tooltip-project-post_address', 'en', 'Indicate, if need be, a detailed postal address'),
('tooltip-project-project_location', 'ca', 'Indica el lloc on es desenvoluparà el projecte, en quina població o poblacions es troba el seu impulsor o impulsors principals.'),
('tooltip-project-project_location', 'en', 'Indicate where the project will be developed; in which towns or cities the principal promoters are located.'),
('tooltip-project-related', 'ca', 'Resumeix la teva trajectòria o la del grup impulsor del projecte. Quina experiència tens relacionada amb la proposta? Amb quin equip de persones, recursos i/o infraestructures compta? '),
('tooltip-project-related', 'en', 'Summarize how you or the promoting group got to this point. What experience do you have that relates to the proposal? Tell us about your team, resources, and infrastructure. '),
('tooltip-project-resource', 'ca', 'Indica aquí si comptes amb recursos addicionals, a part dels quals sol·licites, per dur a terme el projecte: fonts de finançament, recursos propis o bé ja comptes amb materials. Pot suposar un al·licient per als potencials cofinançadors del projecte.'),
('tooltip-project-resource', 'en', 'Note here if you are counting on additional resources, apart from those that you''re asking for, in order to carry out this project: sources of financing, your own resources, or perhaps you''ve already gathered some materials. This might be attractive to potential co-financiers of your project.'),
('tooltip-project-schedule', 'ca', 'Visualització de com queda l''agenda de producció del teu projecte. Recorda que només has d''assenyalar les noves tasques a realitzar, no les que ja s''hagin dut a terme.'),
('tooltip-project-schedule', 'en', 'Production calendar for your project. Remember that you should only indicate new tasks, not those that have already been completed.'),
('tooltip-project-scope', 'ca', 'Indica l''impacte geogràfic que aspira a tenir el projecte (cada categoria inclou l''anterior). '),
('tooltip-project-scope', 'en', 'Specify the geographic impact that you hope this project will have (each category includes the previous one)'),
('tooltip-project-social_reward-description', 'ca', 'Explica breument el tipus de retorn col·lectiu que oferirà o permetrà el projecte.'),
('tooltip-project-social_reward-description', 'en', 'Briefly explain the type of collective benefit that this project will offer or allow.'),
('tooltip-project-social_reward-icon-other', 'ca', 'Especifica breument en què consistirà aquest altre tipus de retorn col·lectiu.'),
('tooltip-project-social_reward-icon-other', 'en', 'Briefly describe what this other collective benefit consists of'),
('tooltip-project-social_reward-license', 'ca', 'Aquí has de seleccionar una llicència d''entre cadascuna del grup que es mostren. Et recomanem llegir-les amb calma abans de decidir, però pensa que un aspecte important Goteo és que els projectes disposin de llicències el més obertes possible.'),
('tooltip-project-social_reward-license', 'en', 'Choose a license from the group displayed. We recommend that you read through them carefully before deciding, and keep in mind that an important factor for Goteo is that projects have the most open licences possible.'),
('tooltip-project-social_reward-reward', 'ca', 'Intenta que el títol sigui el més descriptiu possible. Recorda que pots afegir més recompenses a continuació.'),
('tooltip-project-social_reward-reward', 'en', 'Try to make the title as descriptive as possible. Remember that you can add more benefits later.'),
('tooltip-project-social_reward-type', 'ca', 'Especifica el tipus de retorn: ARXIUS DIGITALS com a música, vídeo, documents de text, etc. CODI FONT de programari informàtic. DISSENYS de plànols o patrons. MANUALS en forma de kits, bussiness plans, "how tos" o receptes. SERVEIS com a tallers, cursos, assessories, accés a planes webs, bases de dades online. '),
('tooltip-project-social_reward-type', 'en', 'Specify the type of benefit: DIGITAL FILES like music, video, text documents, etc. SOURCE CODE of a software program, DESIGNS of layouts or patterns, MANUALS in the form of kits, business plans, how-to''s, or receipts, SERVICES like workshops, courses, consulting, website access, online databases.'),
('tooltip-project-social_rewards', 'ca', 'Defineix el tipus de retorn o retorns del projecte als quals es podrà accedir obertament, i la llicència que els ha de regular. '),
('tooltip-project-social_rewards', 'en', 'Define the type of benefits from the project that can be accessed openly, and the license that should regulate them. If you have any doubts about which option to choose, or which is best in your case, <a href="http://www.goteo.org/contact" target="new">contact us</a> and we will advise you on this point.'),
('tooltip-project-subtitle', 'ca', 'Defineix amb una frase un subtítol que acabi d''explicar en què consistirà la iniciativa, que permeti fer-se una idea mínima de per a què serveix o en què consisteix. Apareixerà al costat del títol del projecte.'),
('tooltip-project-subtitle', 'en', 'Create a single phrase for the subtitle that explains just what your initiative is about, that gives a taste of what it''s for and what it consists of. It will appear together with the project title.'),
('tooltip-project-support', 'en', 'Advice on editing existing collaborations'),
('tooltip-project-support-description', 'ca', 'Explica breument en què consisteix l''ajuda que necessita el projecte, per facilitar que la gent la reconegui i s''animi a col·laborar. '),
('tooltip-project-support-description', 'en', 'Briefly explain the kind of help that your project needs, to help people see what is needed and encourage them to collaborate.'),
('tooltip-project-support-support', 'ca', 'Títol descriptiu sobre la col·laboració necessària.'),
('tooltip-project-support-support', 'en', 'Descriptive title about the needed collaboration'),
('tooltip-project-support-type', 'ca', 'Selecciona si el projecte necessita ajuda en tasques concretes o bé préstecs (de material, infraestructura, etc). '),
('tooltip-project-support-type', 'en', 'Choose if the project needs help with concrete tasks or rather loans of material, infrastructure, etc.'),
('tooltip-project-support-type-lend', 'ca', 'Préstec temporal de material necessari per al projecte, o bé de cessió d''infraestructures o espais per un període determinat. També pot implicar préstecs permanents, és a dir regals :)'),
('tooltip-project-support-type-lend', 'en', 'Temporary loan of material needed for the project, or the loan of infrastructure or space during a given period of time. It might also imply permanent loans, that is, gifts :)'),
('tooltip-project-support-type-task', 'ca', 'Col·laboració que requereixi una habilitat per a una tasca específica, ja sigui a distància mitjançant ordinador o bé presencialment.'),
('tooltip-project-support-type-task', 'en', 'This collaboration requires a skill in a specific task, either via computer or in person.'),
('tooltip-project-supports', 'ca', 'A Goteo els projectes poden rebre un altre tipus d''ajudes a més d''aportacions monetàries. Hi ha gent que potser no pugui ajudar econòmicament però sí amb el seu talent, temps, energia, etc.'),
('tooltip-project-supports', 'en', 'In Goteo, projects can be supported in other ways besides just monetary. There are people who can''t help economically but have plenty to offer in terms of their talent, time, energy, and more.'),
('tooltip-project-totals', 'ca', 'Aquest gràfic mostra la suma de costos imprescindibles (mínims per realitzar el projecte) i la suma de costos secundaris (import òptim) per a les dues rondes de finançament. La primera ronda és de 40 dies, per aconseguir l''import mínim imprescindible. Només si s''aconsegueix aquest volum de finançament es pot optar a la segona ronda, de 40 dies més, per arribar al pressupost òptim. A diferència de la primera, a la segona ronda s''obté tot el que s''ha recaptat (encara que no s''hagi arribat al mínim).'),
('tooltip-project-totals', 'en', 'This graph shows the sum of essential expenses (the minimum necessary to complete the project) and the sum of secondary expenses (optimal amount) for the two rounds of financing. The first round lasts 40 days, in order to obtain the minimum essential amount. Only those that achieve this level of financing can opt to continue with the second round, for an additional 40 days, in order to achieve the optimal amount of funds. In the second round (in contrast with the first), you get everything you have raised even if you don''t reach the full goal.  '),
('tooltip-project-usubs', 'ca', 'Marca la casella en cas que hagis subtitulat a altres idiomes el vídeo mitjançant Universal Subtitles: http://www.universalsubtitles.org/'),
('tooltip-project-usubs', 'en', 'Check if you subtitled the video to other languages with Universal Subtitles: http://www.universalsubtitles.org/'),
('tooltip-project-video', 'ca', 'Considera aquí la possibilitat de publicar i enllaçar un vídeo (a Youtube o Vimeo) on expliquis breument a la càmera el perquè del teu projecte. Es tracta de quelcom que pugui complementar el vídeo principal, amb una persona que transmeti la seva necessitat o originalitat, de la manera més directa possible. Si et dóna tall parlar a càmera, també pot ser alguna persona que coneixes i segueix el projecte o la idea i pugui fer aquesta aportació com a "fan". L''empatia i necessitat de veure algú a l''altre costat del projecte és molt important para determinat tipus de cofinançadors.  '),
('tooltip-project-video', 'en', 'Consider publishing and linking a video (YouTube or Vimeo) where you briefly explain to the camera your vision for your project. This is something that might compliment the principal video, by letting you transmit your need or originality in the most direct way possible. If you find it hard speaking to the camera, maybe there''s someone else you know and who is following the project that might complete this step as a "fan". Feeling empathy for and seeing the person on the other side of the project is a key component for certain kinds of co-financiers.'),
('tooltip-user-about', 'ca', 'Com a xarxa social, Goteo pretén ajudar a difondre i finançar projectes interessants entre el màxim de gent possible. Per això és important la informació que puguis compartir sobre les teves habilitats o experiència (professional, acadèmica, aficions, etc). '),
('tooltip-user-about', 'en', 'As a social network, Goteo attempts to help spread the word about and finance interesting projects among the largest amount of people possible. To that end, it''s important to share information about your skills and experience (professional, academic, hobbies, etc.)'),
('tooltip-user-contribution', 'ca', 'Explica breument les teves habilitats o els àmbits on podries ajudar un projecte (traduint, difonent, testejant, programant, ensenyant, etc).'),
('tooltip-user-contribution', 'en', 'Briefly explain your skills and the areas in which you could help (translating, marketing, testing, programming, teaching, etc.)'),
('tooltip-user-facebook', 'ca', 'Aquesta xarxa social pot ajudar que difonguis projectes de Goteo que t''interessen entre amics i familiars.'),
('tooltip-user-facebook', 'en', 'This social network can help you spread the word about Goteo projects that interest you with your friends and family.'),
('tooltip-user-google', 'ca', 'La xarxa social de Google+ és molt nova però també pots indicar el teu usuari si ja la fas servir :)'),
('tooltip-user-google', 'en', 'The Google+ social network is pretty new, but you can specify your user id if you use it already.'),
('tooltip-user-identica', 'ca', 'Aquest canal pot ajudar que difonguis projectes de Goteo entre la comunitat propera al programari lliure.'),
('tooltip-user-identica', 'en', 'This channel can help you spread the word about Goteo projects in the open source community.'),
('tooltip-user-image', 'ca', 'No és obligatori que posis una fotografia en el teu perfil, però ajuda que els altres usuaris t''identifiquin.'),
('tooltip-user-image', 'en', 'You don''t have to add a profile picture, but it does help other users to identify you.'),
('tooltip-user-interests', 'ca', 'Indica el tipus de projectes que poden connectar amb els teus interessos per cofinançar-los i/o aportar amb altres recursos, coneixements o habilitats. Aquestes categories són transversals, pots seleccionar-ne més d''una.'),
('tooltip-user-interests', 'en', 'Indicate the kind of projects you might be interested in co-financing or in supporting with other resources, knowledge or skills. These categories cut across boundaries; you can select more than one.'),
('tooltip-user-keywords', 'ca', 'A mesura que introdueixis text el sistema et suggerirà paraules clau que ja han escrit altres usuaris. Aquestes categories ajuden a vincular el teu perfil amb altres persones i amb projectes concrets.'),
('tooltip-user-keywords', 'en', 'As you enter text, the system will suggest key words that have already been created by other users. These categories help link your profile with specific other people and projects.'),
('tooltip-user-linkedin', 'ca', 'Aquesta xarxa social pot ajudar que difonguis projectes de Goteo que t''interessen entre contactes professionals.'),
('tooltip-user-linkedin', 'en', 'This social network can help you spread the word about interesting Goteo projects with your professional contacts.'),
('tooltip-user-location', 'ca', 'Aquesta dada és important per poder-te vincular amb un grup local de Goteo.'),
('tooltip-user-location', 'en', 'This information is important so that we can connect you with a local Goteo group.'),
('tooltip-user-name', 'ca', 'El teu nom o nom d''usuari a Goteo. Ho pots canviar sempre que vulguis (atenció: no és el mateix que el login d''accés, que ja no es pot modificar).'),
('tooltip-user-name', 'en', 'Your screen name or nickname on Goteo. You can change it whenever you like. (Note: it''s not the same as your user name, which cannot be changed.)'),
('tooltip-user-twitter', 'ca', 'Aquesta xarxa social pot ajudar que difonguis projectes de Goteo de manera àgil i viral.'),
('tooltip-user-twitter', 'en', 'This social network can help spread the word about Goteo projects quickly and virally.'),
('tooltip-user-webs', 'ca', 'Indica les adreces URL de pàgines personals o d''altre tipus vinculades a tu.'),
('tooltip-user-webs', 'en', 'Indicate the URL addresses of personal or other websites that you are associated with.'),
('translate-home-guide', 'ca', 'Message pour le traducteur'),
('translate-home-guide', 'en', 'Note to the translator'),
('translate-home-guide', 'fr', 'Message pour le traducteur'),
('user-account-inactive', 'ca', 'El compte està desactivat. Has de recuperar la contrasenya per activar-lo de nou'),
('user-account-inactive', 'en', 'The account is deactivated.'),
('user-activate-already-active', 'ca', 'El compte d''usuari ja es troba actiu'),
('user-activate-already-active', 'en', 'The account is already active.'),
('user-activate-fail', 'ca', 'Error en activar el compte d''usuari'),
('user-activate-fail', 'en', 'Error upon activating the user account'),
('user-activate-success', 'ca', 'El compte d''usuari s''ha activat correctament'),
('user-activate-success', 'en', 'The account has been activated correctly.'),
('user-changeemail-fail', 'ca', 'Error en canviar l''email'),
('user-changeemail-fail', 'en', 'Error while changing the email'),
('user-changeemail-success', 'ca', 'L''email s''ha canviat correctament ;)'),
('user-changeemail-success', 'en', 'The email address has been successfully changed.'),
('user-changeemail-title', 'ca', 'Canviar email'),
('user-changeemail-title', 'en', 'Change email'),
('user-changepass-confirm', 'ca', 'Confirmar nova contrasenya'),
('user-changepass-confirm', 'en', 'Confirm new password'),
('user-changepass-new', 'ca', 'Nova contrasenya'),
('user-changepass-new', 'en', 'New password'),
('user-changepass-old', 'ca', 'Contrasenya actual'),
('user-changepass-old', 'en', 'Current password'),
('user-changepass-title', 'ca', 'Canviar contrasenya'),
('user-changepass-title', 'en', 'Change password'),
('user-email-change-sended', 'ca', 'T''hem enviat un email per confirmar el teu canvi d''adreça electrònica'),
('user-email-change-sended', 'en', 'We have sent you an email so that you can confirm the change of address'),
('user-login-required', 'ca', 'Has d''iniciar sessió per poder interactuar amb la comunitat de Goteo'),
('user-login-required', 'en', 'You have to sign in to interact with the Goteo community'),
('user-login-required-access', 'ca', 'Has d''iniciar sessió o sol·licitar permisos per accedir aquesta secció'),
('user-login-required-access', 'en', 'You have to sign in or ask for permission to get access to this section'),
('user-login-required-to_create', 'ca', 'Has d''iniciar sessió per crear un projecte'),
('user-login-required-to_create', 'en', 'You have to sign in to create a project'),
('user-login-required-to_invest', 'ca', 'Has d''iniciar sessió per cofinançar un projecte'),
('user-login-required-to_invest', 'en', 'You have to sign in to co-finance a project'),
('user-login-required-to_message', 'ca', 'Has d''iniciar sessió per a enviar missatges'),
('user-login-required-to_message', 'en', 'You have to sign in to send messages'),
('user-login-required-to_see', 'ca', 'Has d''iniciar sessió per veure aquesta pàgina'),
('user-login-required-to_see', 'en', 'You have to sign in to see this page'),
('user-login-required-to_see-supporters', 'ca', 'Has d''iniciar sessió per veure els cofinançadors'),
('user-login-required-to_see-supporters', 'en', 'You have to sign in to see the other co-financiers'),
('user-message-send_personal-header', 'ca', 'Envia un missatge a un usuari'),
('user-message-send_personal-header', 'en', 'Send a message to the user'),
('user-password-changed', 'ca', 'Has canviat la teva contrasenya'),
('user-password-changed', 'en', 'You have changed your password'),
('user-personal-saved', 'ca', 'Dades personals actualitzades '),
('user-personal-saved', 'en', 'Updated personal information'),
('user-prefer-saved', 'ca', 'Les teves preferències de notificació s''han desat correctament'),
('user-prefer-saved', 'en', 'Your notification preferences were saved correctly'),
('user-preferences-mailing', 'ca', 'Bloquejar l''enviament del newsletter'),
('user-preferences-mailing', 'en', 'Disable newsletter subscription'),
('user-preferences-rounds', 'ca', 'Bloquejar notificacions de progrés dels projectes que recolzo'),
('user-preferences-rounds', 'en', 'Disable progress notifications from the projects I''m backing'),
('user-preferences-threads', 'ca', 'Bloquejar notificacions de respostes als missatges que jo inicio '),
('user-preferences-threads', 'en', 'Disable answer notifications to the messages I start'),
('user-preferences-updates', 'ca', 'Bloquejar notificacions sobre novetats dels projectes que recolzo'),
('user-preferences-updates', 'en', 'Disable news notifications from the projects I''m backing'),
('user-profile-saved', 'ca', 'Informació de perfil actualitzada'),
('user-profile-saved', 'en', 'Profile updated'),
('user-register-success', 'ca', 'L''usuari s''ha registrat correctament. A continuació rebràs un missatge de correu per activar-lo.'),
('user-register-success', 'en', 'The user was registered correctly. We are sending you an activation email now.'),
('user-save-fail', 'ca', 'Hi ha hagut algun problema en desar les dades'),
('user-save-fail', 'en', 'There was a problem saving the data'),
('validate-cost-field-dates', 'ca', 'Has d''indicar les dates d''inici i final d''aquest cost per poder valorar millor el projecte.'),
('validate-cost-field-dates', 'en', 'Specify the beginning and ending dates for the expense in order to better evaluate the project.'),
('validate-project-costs-any_error', 'ca', 'Manca alguna informació en el desglossament de costos'),
('validate-project-costs-any_error', 'en', 'Some information is missing from the breakdown of the expense'),
('validate-project-field-about', 'ca', 'L''explicació del projecte és massa curta'),
('validate-project-field-about', 'en', 'The project description is too short'),
('validate-project-field-costs', 'ca', 'Recomanem desglossar fins a 5 costos diferents per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-project-field-costs', 'en', 'We recommend that you break it down into least 5 distinct expenses to make it easier to evaluate your project to see whether it should be published on Goteo.'),
('validate-project-field-currently', 'ca', 'Indica l''estat del projecte per millorar-ne la seva valoració, de cara a determinar si publicar-ho a Goteo.'),
('validate-project-field-currently', 'en', 'Indicate the current status of the project in order to facilitate the evaluation of the project and to determine whether it should be published on Goteo.'),
('validate-project-field-description', 'ca', 'La descripció del projecte és massa curta'),
('validate-project-field-description', 'en', 'The project description is too short'),
('validate-project-individual_rewards', 'ca', 'Indica fins a 5 recompenses individuals per millorar-ne la puntuació.'),
('validate-project-individual_rewards', 'en', 'Indicate up to 5 individual rewards in order to improve the score'),
('validate-project-individual_rewards-any_error', 'ca', 'Manca alguna informació sobre recompenses individuals'),
('validate-project-individual_rewards-any_error', 'en', 'Some information about individual rewards is missing.'),
('validate-project-social_rewards', 'ca', 'És obligatori indicar com a mínim un retorn col·lectiu'),
('validate-project-social_rewards', 'en', 'You have to specify at least one collective benefit'),
('validate-project-social_rewards-any_error', 'ca', 'Manca alguna informació sobre retorns col·lectius'),
('validate-project-social_rewards-any_error', 'en', 'Some information is missing about collective benefits.'),
('validate-project-total-costs', 'ca', 'El cost òptim no pot superar en més d''un 40% el cost mínim. Has de revisar el desglossament de costos.'),
('validate-project-total-costs', 'en', 'The optimal cost cannot exceed the minimum cost by more than 50%. You have to either raise the essential costs or lower the supplemental costs. '),
('validate-project-userProfile-any_error', 'ca', 'Hi ha algun error en l''adreça URL introduïda'),
('validate-project-userProfile-any_error', 'en', 'There''s an error in the URL address'),
('validate-project-userProfile-web', 'ca', 'És recomanable indicar alguna web'),
('validate-project-userProfile-web', 'en', 'We recommend you list some websites'),
('validate-project-value-contract_email', 'ca', 'L''adreça d''email no és correcta'),
('validate-project-value-contract_email', 'en', 'The email address is incorrect.'),
('validate-project-value-contract_nif', 'ca', 'El NIF no és correcte'),
('validate-project-value-contract_nif', 'en', 'The NIF is incorrect'),
('validate-project-value-description', 'ca', 'La descripció del projecte és massa curta '),
('validate-project-value-description', 'en', 'The project description is too short'),
('validate-project-value-entity_cif', 'ca', 'El CIF no és vàlid'),
('validate-project-value-entity_cif', 'en', 'The Business number (CIF) is not valid.'),
('validate-project-value-keywords', 'ca', 'Indica un mínim de 5 paraules clau del projecte per millorar-ne la seva valoració, de cara a determinar si publicar-ho a Goteo.'),
('validate-project-value-keywords', 'en', 'Write down at least five key words about the project that will help facilitate its evaulation by Goteo.'),
('validate-project-value-phone', 'ca', 'El format de número de telèfon no és correcte.'),
('validate-project-value-phone', 'en', 'The format of the telephone number is incorrect'),
('validate-register-value-email', 'ca', 'L''email introduït no és vàlid'),
('validate-register-value-email', 'en', 'The email address you entered is not valid'),
('validate-social_reward-license', 'ca', 'Indicar una llicència per millorar la puntuació'),
('validate-social_reward-license', 'en', 'Indicate a license in order to improve the score'),
('validate-user-field-about', 'ca', 'Explica alguna cosa sobre tu, per així millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-about', 'en', 'Tell us about yourself so that we can better evaluate your project and determine its suitability for publishing on Goteo.'),
('validate-user-field-avatar', 'ca', 'Posa una imatge de perfil per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-avatar', 'en', 'Add a profile image to help us evaluate your project and determine whether it is suitable for publication on Goteo.'),
('validate-user-field-contribution', 'ca', 'Explica què podries aportar a Goteo, per millorar la valoració del projecte de cara a determinar si publicar-ho en la plataforma.'),
('validate-user-field-contribution', 'en', 'Explain what you could bring to Goteo to improve the evaluation of the project to determine whether it should be published on the platform.'),
('validate-user-field-facebook', 'ca', 'Posa el teu compte de Facebook per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-facebook', 'en', 'Add your Facebook user name to help us evaluate your project and whether it is suitable for publication on Goteo.'),
('validate-user-field-interests', 'ca', 'Selecciona algun interès per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-interests', 'en', 'Select an interest to help us evaluate your project and determine if it is suitable for publication on Goteo.'),
('validate-user-field-keywords', 'ca', 'Indica fins a 5 paraules clau que et defineixin, per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-keywords', 'en', 'Indicate up to 5 key words that define you, to help evaluate your project and decide if it is suitable for publication on Goteo.'),
('validate-user-field-linkedin', 'ca', 'El camp de Linkedin no es vàlid '),
('validate-user-field-linkedin', 'en', 'The LinkedIn field is not valid'),
('validate-user-field-location', 'ca', 'El lloc de residència de l''usuari no és vàlid'),
('validate-user-field-location', 'en', 'The place of residence of the user is not valid'),
('validate-user-field-name', 'ca', 'Posa el teu nom complert per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-name', 'en', 'Enter your complete name to help us evaluate your project and see whether it is suitable for publishing on Goteo.'),
('validate-user-field-twitter', 'ca', 'L''usuari de Twitter no és vàlid'),
('validate-user-field-twitter', 'en', 'The Twitter user name is not valid'),
('validate-user-field-web', 'ca', 'Has de posar l''adreça (URL) de la web'),
('validate-user-field-web', 'en', 'Please enter the address (URL) of the website'),
('validate-user-field-webs', 'ca', 'Posa la teva pàgina web per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.'),
('validate-user-field-webs', 'en', 'Enter the address of your website to help us evaluate your project and determine if it is suitable for publishing on Goteo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `about` text,
  `keywords` tinytext,
  `active` tinyint(1) NOT NULL,
  `avatar` int(11) DEFAULT NULL,
  `contribution` text,
  `twitter` tinytext,
  `facebook` tinytext,
  `google` tinytext,
  `identica` tinytext,
  `linkedin` tinytext,
  `worth` int(7) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` tinytext NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'No se ve publicamente',
  `confirmed` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `location`, `email`, `password`, `about`, `keywords`, `active`, `avatar`, `contribution`, `twitter`, `facebook`, `google`, `identica`, `linkedin`, `worth`, `created`, `modified`, `token`, `hide`, `confirmed`) VALUES
('carles', 'carles', '', 'carlesvelasco@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 1, NULL, '', '', '', '', '', '', NULL, '2012-11-28 11:55:20', '2012-11-28 11:56:28', '677c9c0c517c643b4563db1dfc160957', 0, 1),
('carlos', 'carlos', NULL, 'carlosvelasco69@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2012-11-11 12:41:51', '2012-11-11 12:49:46', '2a2e06b92f7caf481a5d1dcf5257013e', 0, 1),
('nurbigay', 'nurbigay', NULL, 'nurbigay@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-01 22:38:44', '2012-12-01 22:38:44', '606396889d766567270d9f6430a9d438', 0, 1),
('root', 'Super administrador', '', 'root_goteo@doukeshi.org', 'f64dd0d8c9276d87c6d0ae24c5d12571c62ecf16', '', '', 1, 91, '', '', '', '', '', '', 0, '2011-08-31 17:54:11', '2011-12-21 21:45:39', '61aa85ea9169c68babfa5b8bdb44097broot_goteo@doukeshi.org', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_image`
--

DROP TABLE IF EXISTS `user_image`;
CREATE TABLE IF NOT EXISTS `user_image` (
  `user` varchar(50) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_interest`
--

DROP TABLE IF EXISTS `user_interest`;
CREATE TABLE IF NOT EXISTS `user_interest` (
  `user` varchar(50) NOT NULL,
  `interest` int(12) NOT NULL,
  UNIQUE KEY `user_interest` (`user`,`interest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Intereses de los usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_lang`
--

DROP TABLE IF EXISTS `user_lang`;
CREATE TABLE IF NOT EXISTS `user_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `about` text,
  `keywords` tinytext,
  `contribution` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_login`
--

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE IF NOT EXISTS `user_login` (
  `user` varchar(50) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `oauth_token` text NOT NULL,
  `oauth_token_secret` text NOT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`oauth_token`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_personal`
--

DROP TABLE IF EXISTS `user_personal`;
CREATE TABLE IF NOT EXISTS `user_personal` (
  `user` varchar(50) NOT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `contract_surname` varchar(255) DEFAULT NULL,
  `contract_nif` varchar(15) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `contract_email` varchar(256) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL COMMENT 'guardar sin espacios ni puntos',
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos personales de usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_prefer`
--

DROP TABLE IF EXISTS `user_prefer`;
CREATE TABLE IF NOT EXISTS `user_prefer` (
  `user` varchar(50) NOT NULL,
  `updates` int(1) NOT NULL DEFAULT '0',
  `threads` int(1) NOT NULL DEFAULT '0',
  `rounds` int(1) NOT NULL DEFAULT '0',
  `mailing` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preferencias de notificacion de usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_review`
--

DROP TABLE IF EXISTS `user_review`;
CREATE TABLE IF NOT EXISTS `user_review` (
  `user` varchar(50) NOT NULL,
  `review` bigint(20) unsigned NOT NULL,
  `ready` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ha terminado con la revision',
  PRIMARY KEY (`user`,`review`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Asignacion de revision a usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` varchar(50) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  `node_id` varchar(50) NOT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_FK` (`user_id`),
  KEY `role_FK` (`role_id`),
  KEY `node_FK` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`, `node_id`, `datetime`) VALUES
('carles', 'user', '*', '2012-11-28 11:55:20'),
('carlos', 'admin', '*', '2012-11-11 12:44:02'),
('carlos', 'checker', '*', '2012-11-11 12:45:22'),
('carlos', 'root', '*', '2012-11-11 12:45:06'),
('carlos', 'superadmin', '*', '2012-11-11 12:44:22'),
('carlos', 'user', '*', '2012-11-11 12:41:51'),
('nurbigay', 'user', '*', '2012-12-01 22:38:44'),
('root', 'admin', '*', NULL),
('root', 'checker', '*', NULL),
('root', 'root', '*', NULL),
('root', 'superadmin', '*', NULL),
('root', 'translator', '*', NULL),
('root', 'user', '*', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_translate`
--

DROP TABLE IF EXISTS `user_translate`;
CREATE TABLE IF NOT EXISTS `user_translate` (
  `user` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `ready` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ha terminado con la traduccion',
  PRIMARY KEY (`user`,`project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Asignacion de traduccion a usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_web`
--

DROP TABLE IF EXISTS `user_web`;
CREATE TABLE IF NOT EXISTS `user_web` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `url` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Webs de los usuarios' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `temporada` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL,
  `numero` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id`, `temporada`, `url`, `numero`) VALUES
(4, '1', '<iframe  src="http://www.youtube.com/embed/erZqsV5UJpM" frameborder="0" allowfullscreen></iframe>', 1),
(5, '1', '<iframe  src="http://www.youtube.com/embed/Y5MyxpYtVLg" frameborder="0" allowfullscreen></iframe>', 2),
(6, '1', '<iframe  src="http://www.youtube.com/embed/V8WekanqL7c" frameborder="0" allowfullscreen></iframe>', 3),
(7, '1', '<iframe  src="http://www.youtube.com/embed/EpxRc0Kzkmo" frameborder="0" allowfullscreen></iframe>', 4),
(8, '2', '<iframe  src="http://www.youtube.com/embed/7K2ywM4YyVo" frameborder="0" allowfullscreen></iframe>', 1),
(9, '2', '<iframe  src="http://www.youtube.com/embed/VxME8GYZXcA" frameborder="0" allowfullscreen></iframe>', 2),
(10, '2', '<iframe  src="http://www.youtube.com/embed/alFsfEUtDmQ" frameborder="0" allowfullscreen></iframe>', 3),
(11, '2', '<iframe  src="http://www.youtube.com/embed/QBeeJK0OTrQ" frameborder="0" allowfullscreen></iframe>', 4),
(12, '3', '<iframe  src="http://www.youtube.com/embed/bMzqiGG5Udg" frameborder="0" allowfullscreen></iframe>', 1),
(13, '3', '<iframe  src="http://www.youtube.com/embed/YWKY_3J-1tU" frameborder="0" allowfullscreen></iframe>', 2),
(14, '3', '<iframe  src="http://www.youtube.com/embed/84znak2CGos" frameborder="0" allowfullscreen></iframe>', 3),
(15, '3', '<iframe  src="http://www.youtube.com/embed/MYdqpw2NBJw" frameborder="0" allowfullscreen></iframe>', 4),
(16, '4', '<iframe  src="http://www.youtube.com/embed/Y7AvqD2loX4" frameborder="0" allowfullscreen></iframe>', 1),
(17, '4', '<iframe  src="http://www.youtube.com/embed/6lQkhpSFvxU" frameborder="0" allowfullscreen></iframe>', 2),
(18, '4', '<iframe  src="http://www.youtube.com/embed/6IJNOVLkaTg" frameborder="0" allowfullscreen></iframe>', 3),
(19, '4', '<iframe  src="http://www.youtube.com/embed/DAdA7CCepKA" frameborder="0" allowfullscreen></iframe>', 4),
(20, '5', '<iframe  src="http://www.youtube.com/embed/VlvsE8fMHP4" frameborder="0" allowfullscreen></iframe>', 1),
(21, '5', '<iframe  src="http://www.youtube.com/embed/OjFtBAd3lUk" frameborder="0" allowfullscreen></iframe>', 2),
(22, '5', '<iframe  src="http://www.youtube.com/embed/P-ZjG5jG5bg" frameborder="0" allowfullscreen></iframe>', 3),
(23, '5', '<iframe  src="http://www.youtube.com/embed/aJvFib5iOxE" frameborder="0" allowfullscreen></iframe>', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `worthcracy`
--

DROP TABLE IF EXISTS `worthcracy`;
CREATE TABLE IF NOT EXISTS `worthcracy` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `amount` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Niveles de meritocracia' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `worthcracy`
--

INSERT INTO `worthcracy` (`id`, `name`, `amount`) VALUES
(1, 'Fan', 25),
(2, 'Patrocinador/a', 100),
(3, 'Apostador/a', 500),
(4, 'Abonad@', 1000),
(5, 'Visionari@', 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `worthcracy_lang`
--

DROP TABLE IF EXISTS `worthcracy_lang`;
CREATE TABLE IF NOT EXISTS `worthcracy_lang` (
  `id` int(2) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext NOT NULL,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
