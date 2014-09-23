-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Serveur: db2088.1and1.fr
-- Généré le : Vendredi 23 Octobre 2009 à 17:56
-- Version du serveur: 5.0.81
-- Version de PHP: 4.3.10-200.schlund.1
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

INSERT INTO `ci_sessions` VALUES ('ce870810362bb64ab4fd9649364cd6d0', '83.158.2.32', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; fr', 1256312931, 'a:1:{s:6:"retour";s:28:"/galerie/selection/galerie 1";}');
INSERT INTO `ci_sessions` VALUES ('19462b009d5a7ffbd404063f02c09376', '83.158.2.32', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; fr', 1256312930, 'a:1:{s:6:"retour";s:0:"";}');
INSERT INTO `ci_sessions` VALUES ('922b8f0f2305916d3ac50ab2be2a788c', '194.250.175.42', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1256309420, 'a:1:{s:6:"retour";s:28:"/galerie/selection/galerie 1";}');
INSERT INTO `ci_sessions` VALUES ('492f814e9b3b8fca9b4aa42528275529', '216.104.15.142', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', 1256309226, NULL);
INSERT INTO `ci_sessions` VALUES ('4e27b24b2a0e63de2885363b74c2fc64', '82.123.254.76', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.', 1256313317, 'a:1:{s:6:"retour";s:28:"/galerie/selection/galerie 1";}');

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
INSERT INTO `comptes` VALUES (2, 'james', 'bond', 4);
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
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=100 ;

-- 
-- Contenu de la table `galeries`
-- 

INSERT INTO `galeries` VALUES (99, 'Esprit de l&#39;arbre', 'galerie 1', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Thierry Dubreuil plonge du\ncôté de l’arbre pour y cueillir des racines de ciel. \nDélaissant les repères de la gravitation, il\ndéploie la chorégraphie des figures \ncachées de notre mémoire intérieure, le bestiaire\nd’un imaginaire universel.<br/><br/>Katrine Le Gallou\n\n</div>', 600, 550, 100, 100, 10, 20, 11, 10, 0, 1);

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

INSERT INTO `lespages` VALUES (1, '<h3 style="text-align: center; margin-top: 30px;"><a title="Le site des rencontres de Solignac" target="_blank" href="http://www.photosapiens.com/Rencontres-Photographiques-de-Solignac-2009-22eme-edition-Documenter-sensiblement-le-territoire_4909.html">Les Rencontres Photographiques de Solignac 2009</a></h3> \n<div style="text-align: center;"><br /><img border="0" alt="" style="width: 369px; height: 491px;" src="/images/images/DSCF0305.jpg" /><br /> \n</div><br />');
INSERT INTO `lespages` VALUES (2, '<br /><br />');
INSERT INTO `lespages` VALUES (3, '<br />');

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
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=231 ;

-- 
-- Contenu de la table `photos`
-- 

INSERT INTO `photos` VALUES (199, 'dscf0919.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (200, '1745.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (201, 'dscf0111.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (202, 'dscf0340.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (203, 'dscf0776.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (204, 'dscf6192.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (205, 'dscf5351.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (206, 'dscf5035.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (207, 'dscf5465.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (208, 'dscf5062.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (209, 'dscf2430.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (210, 'dscf2410.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (211, 'dscf2214.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (212, 'dscf1871.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (213, 'dscf1668.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (214, 'dscf1306.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (215, 'dscf1206.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (216, 'dscf0803.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (217, 'dscf1023.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (218, 'dscf0056.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (219, 'dscf6257.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (220, 'dscf0301.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (221, 'dscf0305.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (222, 'dscf0036.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (223, 'dscf0161.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (224, 'dscf0629.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (225, 'dscf1979.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (226, 'dscf2417.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (227, 'dscf0393.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (228, 'dscf1916.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (229, 'dscf0367.jpg', '', 0, 99);
INSERT INTO `photos` VALUES (230, 'dscf0313.jpg', '', 0, 99);
