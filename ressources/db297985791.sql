-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Serveur: db2088.1and1.fr
-- Généré le : Dimanche 06 Février 2011 à 06:24
-- Version du serveur: 5.0.91
-- Version de PHP: 5.2.6-1+lenny9
-- 
-- Base de données: `db297985791`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `ci_sessions`
-- 

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) collate utf8_unicode_ci NOT NULL default '0',
  `ip_address` varchar(16) collate utf8_unicode_ci NOT NULL default '0',
  `user_agent` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text collate utf8_unicode_ci,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Contenu de la table `ci_sessions`
-- 

INSERT INTO `ci_sessions` VALUES ('6cc3bf7156b9c16e4648b5983cdb8194', '123.125.71.89', 'Baiduspider+(+http://www.baidu.com/search/spider.h', 1296962551, 'a:1:{s:6:"retour";s:0:"";}');
INSERT INTO `ci_sessions` VALUES ('2301b1cb01a81d1008a0a28e358495fb', '90.62.18.22', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.', 1296969812, 'a:5:{s:6:"retour";s:28:"/galerie/selection/galerie 1";s:9:"connected";s:2:"ok";s:5:"login";s:7:"francis";s:4:"pass";s:6:"barban";s:6:"niveau";s:1:"1";}');

-- --------------------------------------------------------

-- 
-- Structure de la table `comments`
-- 

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL auto_increment,
  `entry_id` int(11) NOT NULL default '0',
  `body` text collate utf8_unicode_ci,
  `auteur` varchar(128) collate utf8_unicode_ci default NULL,
  `ladate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

-- 
-- Contenu de la table `comments`
-- 

INSERT INTO `comments` VALUES (1, 1, 'un commentaire de francis pour bidule', 'francis', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (2, 1, 'un commentaire pour francis', 'eleonor', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (3, 0, 'greak grec grek greque graik graique greik', 'anatolpoulos', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (4, 0, 'grec grek greik', 'anatopoulos', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (5, 0, 'essai', 'test', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (10, 1, 'dit le Grec', 'eleanopoulos', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (14, 2, 'le commentaire', 'il en faut 1', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (16, 1, 'et un autre', 'un comment', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES (21, 10, 'dipité', 'c naze', '2009-01-24 20:44:17');
INSERT INTO `comments` VALUES (18, 19, 'essai', 'essai', '2009-01-22 13:54:34');
INSERT INTO `comments` VALUES (19, 17, 'un', 'un', '2009-01-22 18:13:24');
INSERT INTO `comments` VALUES (20, 17, 'deux', 'deux', '2009-01-22 18:13:34');
INSERT INTO `comments` VALUES (22, 16, 'dipité', 'c naze 1', '2009-01-24 20:44:56');
INSERT INTO `comments` VALUES (23, 22, 'vive la musique', 'commentaire deezer', '2009-02-17 08:45:18');

-- --------------------------------------------------------

-- 
-- Structure de la table `comptes`
-- 

DROP TABLE IF EXISTS `comptes`;
CREATE TABLE `comptes` (
  `id-compte` int(4) unsigned NOT NULL auto_increment,
  `login` varchar(40) NOT NULL default '',
  `pass` varchar(10) NOT NULL default '',
  `niveau` int(1) unsigned NOT NULL default '4',
  PRIMARY KEY  (`id-compte`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Contenu de la table `comptes`
-- 

INSERT INTO `comptes` VALUES (1, 'francis', 'barban', 1);
INSERT INTO `comptes` VALUES (2, 'thierry', 'dubreuil', 1);
INSERT INTO `comptes` VALUES (3, 'bond', '007', 4);

-- --------------------------------------------------------

-- 
-- Structure de la table `entries`
-- 

DROP TABLE IF EXISTS `entries`;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL default '',
  `body` text collate utf8_unicode_ci NOT NULL,
  `ladate` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

-- 
-- Contenu de la table `entries`
-- 

INSERT INTO `entries` VALUES (17, 'nouveau avec date', 'la date 22', '2009-01-23 00:00:00');
INSERT INTO `entries` VALUES (19, 'nouvelle date', 'essai', '2009-01-22 11:17:00');
INSERT INTO `entries` VALUES (2, 'La deuxième page du blog', 'et voici le texte de la deuxième page\r\net ici c''est la fin', '2009-01-16 00:00:00');
INSERT INTO `entries` VALUES (10, 'nouvelle entrée dans le blog', 'et ici le contenu qui est à déterminer\r\nimage\r\ntexte\r\nliens\r\npartager\r\n....\r\n\r\n', '2009-01-17 00:00:00');
INSERT INTO `entries` VALUES (11, 'nouvelle page créée dans les commentaires', 'et le contenu içi', '2009-01-18 00:00:00');
INSERT INTO `entries` VALUES (20, 'un commentaire', 'un commentaire\nun commentaire\nun commentaire', '2009-01-22 01:53:00');
INSERT INTO `entries` VALUES (16, 'new date', 'essai', '2009-01-22 11:14:50');
INSERT INTO `entries` VALUES (21, '', '', '2009-01-25 04:15:00');
INSERT INTO `entries` VALUES (22, 'nouveau titre', '<img src=''http://static.deezer.com/images/deezer.jpg'' alt=''test''/><br/>\nune image dans le post', '2009-02-17 08:43:00');

-- --------------------------------------------------------

-- 
-- Structure de la table `galeries`
-- 

DROP TABLE IF EXISTS `galeries`;
CREATE TABLE `galeries` (
  `idgal` int(11) NOT NULL auto_increment,
  `titregal` varchar(30) collate utf8_unicode_ci default NULL,
  `chemingal` varchar(100) collate utf8_unicode_ci NOT NULL,
  `textegal` longtext collate utf8_unicode_ci NOT NULL,
  `haut` int(3) NOT NULL,
  `larg` int(3) NOT NULL,
  `hautmin` int(3) NOT NULL,
  `largmin` int(3) NOT NULL,
  `hmargin` int(3) default '0',
  `vmargin` int(3) default '0',
  `hmargin_min` int(3) default '0',
  `vmargin_min` int(3) default '0',
  `ordregal` int(3) NOT NULL,
  `publier` int(1) NOT NULL default '0',
  PRIMARY KEY  (`idgal`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=119 ;

-- 
-- Contenu de la table `galeries`
-- 

INSERT INTO `galeries` VALUES (99, 'Esprits de l&#39;arbre', 'galerie 1', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Thierry Dubreuil plonge du\ncôté de l’arbre pour y cueillir des racines de \nciel. \nDélaissant les repères de la gravitation, il\ndéploie la chorégraphie des figures \ncachées de notre mémoire intérieure, le bestiaire\nd’un imaginaire universel.<br/><br/>Katrine Le \nGallou\n\n</div>', 580, 480, 100, 100, 10, 20, 11, 10, 1, 1);
INSERT INTO `galeries` VALUES (113, 'Au - delà', 'galerie 3', '', 500, 450, 80, 98, 8, 8, 11, 8, 100, 0);
INSERT INTO `galeries` VALUES (118, 'Les absents', 'galerie 2', '', 500, 450, 80, 98, 8, 8, 11, 8, 2, 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `lespages`
-- 

DROP TABLE IF EXISTS `lespages`;
CREATE TABLE `lespages` (
  `idpages` int(11) NOT NULL auto_increment,
  `contenu` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`idpages`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=4 ;

-- 
-- Contenu de la table `lespages`
-- 

INSERT INTO `lespages` VALUES (1, '&nbsp;<span style="font-size: x-small;"><span style="font-family: Verdana;">&nbsp;</span></span>');
INSERT INTO `lespages` VALUES (2, '<br /><br /><h2>Photographe</h2> \n<ul style="color: rgb(186, 9, 56);"> \n  <li><a title="site de katerine le Gallou" target="_blank" href="http://www.katrinelegallou.com/">Katrine Le Gallou</a></li> \n</ul><h2>Laboratoire</h2> \n<ul style="color: rgb(194, 33, 33);"> \n  <li><a target="_blank" title="site Franck Bordas" href="http://www.atelierbordas.com/">Studio Franck Bordas</a><br /></li> \n</ul> <h2>Lieu de Création</h2> \n<ul style="color: rgb(186, 7, 37);"> \n  <li><a title="site du Local" target="_blank" href="http://www.le-local.net/">Le Local</a></li> \n</ul> <h2><br /></h2>');
INSERT INTO `lespages` VALUES (3, '<br /><br />* <em style="font-size: small;">J''ai reçu dans les années 80 une formation de photographie chez Claude Nori à la galerie Contrejour. Par la suite j''ai travaillé dans les domaines du cinéma et de la vidéo. Depuis 2004, j''ai repris une activité tournée vers la photographie et mène une recherche personnelle qui est la part principale de mon travail. </em><br /><br /><br /> <h5>Expositions photographiques  (2006-2010)</h5> \n<ul> \n  <li>Portes  Ouvertes Ateliers d’Artistes Art Canal X, Paris 2006 ... 2010.</li> \n  <li>Rencontres  Photographiques de Solignac 2009.</li> \n  <li>Shot spot, Geoffrey Young gallery, Great Barrington, USA, Octobre 2008.</li> \n  <li><em>Esprits de l’Arbre </em>installation, théâtre le  Local, Paris, Mai 2007.</li> \n</ul><br /> \n<div> <h5>Photographie/Iconographie  (2004-2010)</h5> \n  <ul> \n    <li style="text-align: left;">Reportages  photographiques pour le magazine Télérama.</li> \n    <li style="text-align: left;">Photographe  de plateau du magazine “Sofa“. Production Colby Co. Diffusion CanalSat.</li> \n    <li style="text-align: left;">Piges  au service photo du magazine Télérama.</li> \n    <li style="text-align: left;">Iconographie  pour la Salle Science Actualités, Cité des Sciences et de l’Industrie.</li> \n  </ul> \n</div>');

-- --------------------------------------------------------

-- 
-- Structure de la table `photos`
-- 

DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `idphoto` int(11) NOT NULL auto_increment,
  `nomphoto` varchar(30) collate utf8_unicode_ci NOT NULL,
  `titrephoto` varchar(100) collate utf8_unicode_ci NOT NULL,
  `ordrephoto` int(2) default '0',
  `refgal` int(11) NOT NULL,
  PRIMARY KEY  (`idphoto`)
) ENGINE=MyISAM AUTO_INCREMENT=718 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=718 ;

-- 
-- Contenu de la table `photos`
-- 

INSERT INTO `photos` VALUES (400, 'dscf6257.jpg', '', 2, 99);
INSERT INTO `photos` VALUES (349, 'dscf0111.jpg', '', 14, 99);
INSERT INTO `photos` VALUES (346, '_dscf2417.jpg', '', 22, 99);
INSERT INTO `photos` VALUES (347, 'dscf0036.jpg', '', 26, 99);
INSERT INTO `photos` VALUES (696, 'tdu_6747.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (378, 'dscf6192.jpg', '', 11, 99);
INSERT INTO `photos` VALUES (377, 'dscf5465.jpg', '', 8, 99);
INSERT INTO `photos` VALUES (376, 'dscf5351.jpg', '', 10, 99);
INSERT INTO `photos` VALUES (375, 'dscf5062.jpg', '', 7, 99);
INSERT INTO `photos` VALUES (374, 'dscf5035.jpg', '', 9, 99);
INSERT INTO `photos` VALUES (373, 'dscf2430.jpg', '', 6, 99);
INSERT INTO `photos` VALUES (371, 'dscf2214.jpg', '', 5, 99);
INSERT INTO `photos` VALUES (370, 'dscf1979.jpg', '', 23, 99);
INSERT INTO `photos` VALUES (369, 'dscf1916.jpg', '', 21, 99);
INSERT INTO `photos` VALUES (368, 'dscf1871.jpg', '', 4, 99);
INSERT INTO `photos` VALUES (366, 'dscf1745.jpg', '', 30, 99);
INSERT INTO `photos` VALUES (364, 'dscf1668.jpg', '', 3, 99);
INSERT INTO `photos` VALUES (363, 'dscf1306.jpg', '', 18, 99);
INSERT INTO `photos` VALUES (362, 'dscf1206.jpg', '', 15, 99);
INSERT INTO `photos` VALUES (361, 'dscf1023.jpg', '', 17, 99);
INSERT INTO `photos` VALUES (360, 'dscf0803.jpg', '', 16, 99);
INSERT INTO `photos` VALUES (359, 'dscf0776.jpg', '', 12, 99);
INSERT INTO `photos` VALUES (358, 'dscf0629.jpg', '', 24, 99);
INSERT INTO `photos` VALUES (398, 'dscf0621-.jpg', '', 1, 99);
INSERT INTO `photos` VALUES (356, 'dscf0367.jpg', '', 20, 99);
INSERT INTO `photos` VALUES (355, 'dscf0340.jpg', '', 13, 99);
INSERT INTO `photos` VALUES (353, 'dscf0313.jpg', '', 19, 99);
INSERT INTO `photos` VALUES (352, 'dscf0305.jpg', '', 27, 99);
INSERT INTO `photos` VALUES (714, 'dscf0056.jpg', '', 28, 99);
INSERT INTO `photos` VALUES (350, 'dscf0161.jpg', '', 25, 99);
INSERT INTO `photos` VALUES (716, 'dscf0328.jpg', '', 31, 99);
INSERT INTO `photos` VALUES (715, 'dscf0301.jpg', '', 29, 99);
INSERT INTO `photos` VALUES (711, 'tdu_7431.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (710, 'tdu_6012.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (709, 'tdu_0925.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (708, 'tdu_0289.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (707, 'tdu_6555.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (706, 'tdu_8885.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (705, 'tdu_0118.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (704, 'tdu_7899.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (703, 'tdu_9802.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (702, 'tdu_8435.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (701, 'tdu_5089.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (700, 'tdu_7746.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (699, 'tdu_8197.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (698, 'tdu_7242.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (697, 'tdu_5554.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (695, 'tdu_9646.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (694, 'tdu_4637.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (693, 'tdu_8478.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (692, 'tdu_8930.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (691, 'tdu_9587.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (680, 'tdu_6864.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (681, 'tdu_6031.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (682, 'tdu_4932.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (713, 'tdu_5852b.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (689, 'tdu_8577.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (688, 'tdu_5964.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (501, 'tdu_3950a.jpg', '', 350, 113);
INSERT INTO `photos` VALUES (613, 'tdu_3851a.jpg', '', 344, 113);
INSERT INTO `photos` VALUES (500, 'tdu_3908a.jpg', '', 360, 113);
INSERT INTO `photos` VALUES (607, 'tdu_4099a.jpg', '', 253, 113);
INSERT INTO `photos` VALUES (677, 'tdu_3852a.jpg', '', 345, 113);
INSERT INTO `photos` VALUES (665, 'tdu_3895a.jpg', '', 343, 113);
INSERT INTO `photos` VALUES (503, 'tdu_3963a.jpg', '', 340, 113);
INSERT INTO `photos` VALUES (530, 'tdu_3862a.jpg', '', 335, 113);
INSERT INTO `photos` VALUES (505, 'tdu_3983a.jpg', '', 330, 113);
INSERT INTO `photos` VALUES (528, 'tdu_4120a.jpg', '', 247, 113);
INSERT INTO `photos` VALUES (507, 'tdu_3995a.jpg', '', 320, 113);
INSERT INTO `photos` VALUES (508, 'tdu_4006a.jpg', '', 315, 113);
INSERT INTO `photos` VALUES (509, 'tdu_4015b.jpg', '', 310, 113);
INSERT INTO `photos` VALUES (555, 'tdu_4229a.jpg', '', 238, 113);
INSERT INTO `photos` VALUES (511, 'tdu_4021a.jpg', '', 300, 113);
INSERT INTO `photos` VALUES (512, 'tdu_4026a.jpg', '', 294, 113);
INSERT INTO `photos` VALUES (513, 'tdu_4028a.jpg', '', 290, 113);
INSERT INTO `photos` VALUES (514, 'tdu_4035a.jpg', '', 285, 113);
INSERT INTO `photos` VALUES (559, 'tdu_4046a.jpg', '', 280, 113);
INSERT INTO `photos` VALUES (516, 'tdu_4082a.jpg', '', 275, 113);
INSERT INTO `photos` VALUES (556, 'tdu_4084a.jpg', '', 270, 113);
INSERT INTO `photos` VALUES (518, 'tdu_4085a.jpg', '', 265, 113);
INSERT INTO `photos` VALUES (560, 'tdu_4096a.jpg', '', 260, 113);
INSERT INTO `photos` VALUES (520, 'tdu_4098a.jpg', '', 255, 113);
INSERT INTO `photos` VALUES (521, 'tdu_4102a.jpg', '', 250, 113);
INSERT INTO `photos` VALUES (635, 'tdu_4105a.jpg', '', 242, 113);
INSERT INTO `photos` VALUES (523, 'tdu_4206a.jpg', '', 240, 113);
INSERT INTO `photos` VALUES (524, 'tdu_4214a.jpg', '', 235, 113);
INSERT INTO `photos` VALUES (561, 'tdu_4220a.jpg', '', 230, 113);
INSERT INTO `photos` VALUES (526, 'tdu_4237a.jpg', '', 0, 113);
INSERT INTO `photos` VALUES (531, 'tdu_3888a.jpg', '', 333, 113);
INSERT INTO `photos` VALUES (687, 'tdu_6951.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (685, 'tdu_7631.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (712, 'tdu_5164b.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (612, 'tdu_4163a.jpg', '', 246, 113);
INSERT INTO `photos` VALUES (683, 'tdu_4996.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (679, 'tdu_8691.jpg', '', 0, 118);
INSERT INTO `photos` VALUES (717, 'dscf2410.jpg', '', 32, 99);
