-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Serveur: db2088.1and1.fr
-- Généré le : Mardi 18 Septembre 2012 à 15:53
-- Version du serveur: 5.0.95
-- Version de PHP: 5.3.3-7+squeeze14
-- 
-- Base de données: `db297985791`
-- 
DROP DATABASE `db297985791`;
CREATE DATABASE `db297985791` DEFAULT CHARACTER SET latin1 COLLATE latin1_german2_ci;
USE db297985791;

-- --------------------------------------------------------

-- 
-- Structure de la table `ci_sessions`
-- 

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

INSERT INTO `ci_sessions` VALUES ('58ed1dbb3a4dcf172ccfbc6147c8e44f', '83.157.197.83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:15', 1347976132, 'a:1:{s:6:"retour";s:28:"/galerie/selection/galerie 2";}');
INSERT INTO `ci_sessions` VALUES ('639375fca4058d24a5492affe9fb553e', '83.157.197.83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:15', 1347976130, 'a:1:{s:6:"retour";s:0:"";}');
INSERT INTO `ci_sessions` VALUES ('10722b97e32f77c2a3d72ac40338f94f', '66.249.71.42', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1347974249, 'a:1:{s:6:"retour";s:28:"/galerie/selection/galerie 5";}');
INSERT INTO `ci_sessions` VALUES ('7d8d15399cf2dda15e5c125a0e2c1057', '66.249.71.42', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1347972806, 'a:1:{s:6:"retour";s:0:"";}');
INSERT INTO `ci_sessions` VALUES ('f0313ceb9408734f4ea67df392ef6fcc', '217.128.45.53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) App', 1347970522, 'a:1:{s:6:"retour";s:27:"/galerie/parcours/galerie 1";}');

-- --------------------------------------------------------

-- 
-- Structure de la table `comments`
-- 

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
INSERT INTO `comptes` VALUES (2, 'thierry', 'juliette', 1);
INSERT INTO `comptes` VALUES (3, 'bond', '007', 4);

-- --------------------------------------------------------

-- 
-- Structure de la table `entries`
-- 

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
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=126 ;

-- 
-- Contenu de la table `galeries`
-- 

INSERT INTO `galeries` VALUES (123, 'Avant la nuit', 'galerie 5', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Morceaux oxydés choisis de\nce qui\nrefait un petit monde, microcosme en\nregard du nôtre.\n<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 8, 70, 11, 8, 80, 1);
INSERT INTO `galeries` VALUES (99, 'Esprits du temps', 'galerie 1', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Il y a un registre où le\ntemps s''inscrit. Il y a le passage du temps et\npuis il y a l''extraordinaire potentialité du\nvivant de se transformer, de se régénérer, de se\nreconstruire.\n\n<br/><br/>\n\n</div>', 580, 480, 100, 100, 10, 20, 11, 10, 120, 1);
INSERT INTO `galeries` VALUES (113, 'L&#39;intouchable', 'galerie 3', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Dans le lieu où s''assemble\nnos sens, un être qui n''est pas un\nobjet sensible mais que l''on rencontre.<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 220, 8, 20, 170, 100, 1);
INSERT INTO `galeries` VALUES (118, 'Les absents', 'galerie 2', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>La mort désintègre la vie,\nmais la vie intègre la mort. Ce qui nous fait\nvieillir et disparaître est aussi ce qui nous\nrégénère et donne naissance à d''autres grains de\nlumière en suspension vers l''infini.\n<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 8, 70, 11, 8, 110, 1);
INSERT INTO `galeries` VALUES (125, 'Le passage', 'galerie 4', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Dans la lumière bleue de\nl''aquarium, j''ai observé l''éloignement\nirréversible de chaque fibre de son être des\nfibres vivantes du monde .<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 220, 8, 20, 170, 90, 1);

-- --------------------------------------------------------

-- 
-- Structure de la table `lespages`
-- 

CREATE TABLE `lespages` (
  `idpages` int(11) NOT NULL auto_increment,
  `contenu` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`idpages`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=4 ;

-- 
-- Contenu de la table `lespages`
-- 

INSERT INTO `lespages` VALUES (1, '&nbsp;<span style="font-size: x-small;"><span style="font-family: Verdana;">&nbsp;</span></span>');
INSERT INTO `lespages` VALUES (2, '<br /><br /><h2>Photographe</h2> \n<ul style="color: rgb(186, 9, 56);"> \n  <li><a target="_blank" title="site de katerine le Gallou" href="http://www.katrinelegallou.com/">Katrine Le Gallou</a></li> \n</ul><h2>Laboratoire</h2> \n<ul style="color: rgb(194, 33, 33);"> \n  <li><a title="site Franck Bordas" target="_blank" href="http://www.atelierbordas.com/">Studio Franck Bordas</a><br /></li> \n</ul> <h2>Lieu de Création</h2> \n<ul style="color: rgb(186, 7, 37);"> \n  <li><a target="_blank" title="site du Local" href="http://www.le-local.net/">Le Local</a></li> \n   <li><a target="_blank" title="claude Santiago" href="http://www.claude-santiago.com/">Claude Santiago</a></li> </h2réalisateur>\n</ul> <h2><br /></h2>');
INSERT INTO `lespages` VALUES (3, '<br /><br />* <em style="font-size: small;">J''ai reçu dans les années 80 une formation de photographie chez Claude Nori à la galerie Contrejour. Par la suite j''ai travaillé dans les domaines du cinéma et de la vidéo. Depuis 2004, j''ai repris une activité tournée vers la photographie et mène une recherche personnelle qui est la part principale de mon travail. </em><br /><br /><br /> <h5>Expositions photographiques  (2006-2010)</h5> \n<ul> \n  <li>Portes  Ouvertes Ateliers d’Artistes Art Canal X, Paris 2006 ... 2010.</li> \n  <li>Rencontres  Photographiques de Solignac 2009.</li> \n  <li>Shot spot, Geoffrey Young gallery, Great Barrington, USA, Octobre 2008.</li> \n  <li><em>Esprits de l’Arbre </em>installation, théâtre le  Local, Paris, Mai 2007.</li> \n</ul><br /> \n<div> <h5>Photographie/Iconographie  (2004-2010)</h5> \n  <ul> \n    <li style="text-align: left;">Reportages  photographiques pour le magazine Télérama.</li> \n    <li style="text-align: left;">Photographe  de plateau du magazine “Sofa“. Production Colby Co. Diffusion CanalSat.</li> \n    <li style="text-align: left;">Piges  au service photo du magazine Télérama.</li> \n    <li style="text-align: left;">Iconographie  pour la Salle Science Actualités, Cité des Sciences et de l’Industrie.</li> \n  </ul> \n</div>');

-- --------------------------------------------------------

-- 
-- Structure de la table `photos`
-- 

CREATE TABLE `photos` (
  `idphoto` int(11) NOT NULL auto_increment,
  `nomphoto` varchar(30) collate utf8_unicode_ci NOT NULL,
  `titrephoto` varchar(100) collate utf8_unicode_ci NOT NULL,
  `ordrephoto` int(2) default '0',
  `refgal` int(11) NOT NULL,
  PRIMARY KEY  (`idphoto`)
) ENGINE=MyISAM AUTO_INCREMENT=1051 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1051 ;

-- 
-- Contenu de la table `photos`
-- 

INSERT INTO `photos` VALUES (955, 'tdu_5655a.jpg', '', 24, 123);
INSERT INTO `photos` VALUES (968, 'tdu_0059b.jpg', '', 11, 123);
INSERT INTO `photos` VALUES (969, 'tdu_0435a.jpg', '', 10, 123);
INSERT INTO `photos` VALUES (954, 'tdu_3618a.jpg', '', 9, 123);
INSERT INTO `photos` VALUES (971, 'tdu_3909a.jpg', '', 8, 123);
INSERT INTO `photos` VALUES (972, 'tdu_4271a.jpg', '', 6, 123);
INSERT INTO `photos` VALUES (974, 'tdu_4483ajpg.jpg', '', 5, 123);
INSERT INTO `photos` VALUES (980, 'tdu_4866a.jpg', '', 7, 123);
INSERT INTO `photos` VALUES (902, 'tdu_5015b.jpg', '', 3, 123);
INSERT INTO `photos` VALUES (982, 'tdu_5054a.jpg', '', 0, 123);
INSERT INTO `photos` VALUES (967, 'tdu_5243b.jpg', '', 12, 123);
INSERT INTO `photos` VALUES (932, 'tdu_0013a.jpg', '', 13, 123);
INSERT INTO `photos` VALUES (956, 'tdu_7423a.jpg', '', 23, 123);
INSERT INTO `photos` VALUES (957, 'tdu_5823a.jpg', '', 22, 123);
INSERT INTO `photos` VALUES (958, 'tdu_9146a.jpg', '', 21, 123);
INSERT INTO `photos` VALUES (911, 'tdu_5946.jpg', '', 20, 123);
INSERT INTO `photos` VALUES (959, 'tdu_6653a.jpg', '', 19, 123);
INSERT INTO `photos` VALUES (960, 'tdu_9245b.jpg', '', 18, 123);
INSERT INTO `photos` VALUES (962, 'tdu_9089b.jpg', '', 17, 123);
INSERT INTO `photos` VALUES (963, 'tdu_6194b.jpg', '', 16, 123);
INSERT INTO `photos` VALUES (965, 'tdu_5704b.jpg', '', 15, 123);
INSERT INTO `photos` VALUES (966, 'tdu_8530a.jpg', '', 14, 123);
INSERT INTO `photos` VALUES (935, 'tdu_9081.jpg', '', 2, 123);
INSERT INTO `photos` VALUES (984, 'tdu_5384a.jpg', '', 1, 123);
INSERT INTO `photos` VALUES (400, 'dscf6257.jpg', '', 2, 99);
INSERT INTO `photos` VALUES (349, 'dscf0111.jpg', '', 14, 99);
INSERT INTO `photos` VALUES (346, '_dscf2417.jpg', '', 22, 99);
INSERT INTO `photos` VALUES (347, 'dscf0036.jpg', '', 26, 99);
INSERT INTO `photos` VALUES (1027, 'tdu_6747w.jpg', '', 8, 118);
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
INSERT INTO `photos` VALUES (1036, 'tdu_7431a.jpg', '', 45, 118);
INSERT INTO `photos` VALUES (1037, 'tdu_9258a.jpg', '', 35, 118);
INSERT INTO `photos` VALUES (707, 'tdu_6555.jpg', '', 30, 118);
INSERT INTO `photos` VALUES (706, 'tdu_8885.jpg', '', 25, 118);
INSERT INTO `photos` VALUES (705, 'tdu_0118.jpg', '', 20, 118);
INSERT INTO `photos` VALUES (704, 'tdu_7899.jpg', '', 18, 118);
INSERT INTO `photos` VALUES (1042, 'tdu_50891.jpg', '', 16, 118);
INSERT INTO `photos` VALUES (1039, 'tdu_8435w.jpg', '', 14, 118);
INSERT INTO `photos` VALUES (1040, 'tdu_7746a.jpg', '', 12, 118);
INSERT INTO `photos` VALUES (1041, 'tdu_8197w.jpg', '', 10, 118);
INSERT INTO `photos` VALUES (1035, 'tdu_5554a.jpg', '', 40, 118);
INSERT INTO `photos` VALUES (694, 'tdu_4637.jpg', '', 50, 118);
INSERT INTO `photos` VALUES (1025, 'tdu_0343a.jpg', '', 95, 118);
INSERT INTO `photos` VALUES (692, 'tdu_8930.jpg', '', 96, 118);
INSERT INTO `photos` VALUES (1028, 'tdu_9587a.jpg', '', 90, 118);
INSERT INTO `photos` VALUES (1029, 'tdu_6864w.jpg', '', 85, 118);
INSERT INTO `photos` VALUES (1030, 'tdu_4932w.jpg', '', 80, 118);
INSERT INTO `photos` VALUES (1031, 'tdu_5852a.jpg', '', 75, 118);
INSERT INTO `photos` VALUES (1032, 'tdu_8577w.jpg', '', 70, 118);
INSERT INTO `photos` VALUES (688, 'tdu_5964.jpg', '', 65, 118);
INSERT INTO `photos` VALUES (1043, 'tdu_3908w.jpg', '', 100, 113);
INSERT INTO `photos` VALUES (1046, 'tdu_4229b.jpg', '', 70, 113);
INSERT INTO `photos` VALUES (1045, 'tdu_4096w.jpg', '', 80, 113);
INSERT INTO `photos` VALUES (1044, 'tdu_4206w.jpg', '', 90, 113);
INSERT INTO `photos` VALUES (1033, 'tdu_7631w.jpg', '', 60, 118);
INSERT INTO `photos` VALUES (1034, 'tdu_5164.jpg', '', 55, 118);
INSERT INTO `photos` VALUES (1026, 'tdu_8691a.jpg', '', 100, 118);
INSERT INTO `photos` VALUES (717, 'dscf2410.jpg', '', 32, 99);
INSERT INTO `photos` VALUES (1047, 'tdu_8670w.jpg', '', 100, 125);
INSERT INTO `photos` VALUES (1048, 'tdu_0841w.jpg', '', 90, 125);
INSERT INTO `photos` VALUES (1049, 'tdu_7281w.jpg', '', 80, 125);
INSERT INTO `photos` VALUES (1050, 'tdu_8941w.jpg', '', 70, 125);
