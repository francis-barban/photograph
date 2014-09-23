-- phpMyAdmin SQL Dump
-- version 4.1.14.3
-- http://www.phpmyadmin.net
--
-- Client :  db2088.1and1.fr
-- Généré le :  Mar 23 Septembre 2014 à 17:49
-- Version du serveur :  5.1.73-log
-- Version de PHP :  5.4.4-14+deb7u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db297985791`
--

-- --------------------------------------------------------

--
-- Structure de la table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('1de2187e4f69c4f6b168e0395357226d', '107.178.200.193', 'AppEngine-Google; (+http://code.google.com/appengi', 1411481607, 'a:1:{s:6:"retour";s:0:"";}'),
('18935bcc89847ca3d257a21cba990704', '83.203.4.219', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; r', 1411480164, 'a:1:{s:6:"retour";s:28:"/galerie/selection/galerie 5";}'),
('1f4204137307114c433fd6b68d18ecb5', '66.249.78.87', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1411479740, 'a:1:{s:6:"retour";s:0:"";}'),
('1b94ff69b2c33e4a9efc98db29833cb9', '83.157.197.83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:32', 1411486314, 'a:1:{s:6:"retour";s:26:"/galerie/parcours/galerie3";}'),
('164fe26e931d01151877cc4f60661b64', '146.148.68.91', 'Mozilla', 1411487269, 'a:1:{s:6:"retour";s:0:"";}'),
('cc87fb30f73faf8dd01149d38ce88379', '82.124.240.20', 'Mozilla/5.0 (Windows NT 5.1; rv:32.0) Gecko/201001', 1411486381, 'a:1:{s:6:"retour";s:0:"";}'),
('04f51f59ec25909314ace14c8fd62f45', '83.157.197.83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:32', 1411486192, 'a:1:{s:6:"retour";s:0:"";}');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `body` text COLLATE utf8_unicode_ci,
  `auteur` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ladate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `entry_id`, `body`, `auteur`, `ladate`) VALUES
(1, 1, 'un commentaire de francis pour bidule', 'francis', '0000-00-00 00:00:00'),
(2, 1, 'un commentaire pour francis', 'eleonor', '0000-00-00 00:00:00'),
(3, 0, 'greak grec grek greque graik graique greik', 'anatolpoulos', '0000-00-00 00:00:00'),
(4, 0, 'grec grek greik', 'anatopoulos', '0000-00-00 00:00:00'),
(5, 0, 'essai', 'test', '0000-00-00 00:00:00'),
(10, 1, 'dit le Grec', 'eleanopoulos', '0000-00-00 00:00:00'),
(14, 2, 'le commentaire', 'il en faut 1', '0000-00-00 00:00:00'),
(16, 1, 'et un autre', 'un comment', '0000-00-00 00:00:00'),
(21, 10, 'dipité', 'c naze', '2009-01-24 19:44:17'),
(18, 19, 'essai', 'essai', '2009-01-22 12:54:34'),
(19, 17, 'un', 'un', '2009-01-22 17:13:24'),
(20, 17, 'deux', 'deux', '2009-01-22 17:13:34'),
(22, 16, 'dipité', 'c naze 1', '2009-01-24 19:44:56'),
(23, 22, 'vive la musique', 'commentaire deezer', '2009-02-17 07:45:18');

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

CREATE TABLE IF NOT EXISTS `comptes` (
  `id-compte` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(40) NOT NULL DEFAULT '',
  `pass` varchar(10) NOT NULL DEFAULT '',
  `niveau` int(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`id-compte`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `comptes`
--

INSERT INTO `comptes` (`id-compte`, `login`, `pass`, `niveau`) VALUES
(1, 'francis', 'barban', 1),
(2, 'thierry', 'juliette', 1),
(3, 'bond', '007', 4);

-- --------------------------------------------------------

--
-- Structure de la table `entries`
--

CREATE TABLE IF NOT EXISTS `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `ladate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Contenu de la table `entries`
--

INSERT INTO `entries` (`id`, `title`, `body`, `ladate`) VALUES
(17, 'nouveau avec date', 'la date 22', '2009-01-22 23:00:00'),
(19, 'nouvelle date', 'essai', '2009-01-22 10:17:00'),
(2, 'La deuxième page du blog', 'et voici le texte de la deuxième page\r\net ici c''est la fin', '2009-01-15 23:00:00'),
(10, 'nouvelle entrée dans le blog', 'et ici le contenu qui est à déterminer\r\nimage\r\ntexte\r\nliens\r\npartager\r\n....\r\n\r\n', '2009-01-16 23:00:00'),
(11, 'nouvelle page créée dans les commentaires', 'et le contenu içi', '2009-01-17 23:00:00'),
(20, 'un commentaire', 'un commentaire\nun commentaire\nun commentaire', '2009-01-22 00:53:00'),
(16, 'new date', 'essai', '2009-01-22 10:14:50'),
(21, '', '', '2009-01-25 03:15:00'),
(22, 'nouveau titre', '<img src=''http://static.deezer.com/images/deezer.jpg'' alt=''test''/><br/>\nune image dans le post', '2009-02-17 07:43:00');

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

CREATE TABLE IF NOT EXISTS `galeries` (
  `idgal` int(11) NOT NULL AUTO_INCREMENT,
  `titregal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chemingal` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `textegal` longtext COLLATE utf8_unicode_ci NOT NULL,
  `haut` int(3) NOT NULL,
  `larg` int(3) NOT NULL,
  `hautmin` int(3) NOT NULL,
  `largmin` int(3) NOT NULL,
  `hmargin` int(3) DEFAULT '0',
  `vmargin` int(3) DEFAULT '0',
  `hmargin_min` int(3) DEFAULT '0',
  `vmargin_min` int(3) DEFAULT '0',
  `ordregal` int(3) NOT NULL,
  `publier` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idgal`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=133 ;

--
-- Contenu de la table `galeries`
--

INSERT INTO `galeries` (`idgal`, `titregal`, `chemingal`, `textegal`, `haut`, `larg`, `hautmin`, `largmin`, `hmargin`, `vmargin`, `hmargin_min`, `vmargin_min`, `ordregal`, `publier`) VALUES
(123, 'Avant la nuit', 'galerie5', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Morceaux oxydés choisis de\nce qui\nrefait un monde, microcosme en\nregard du nôtre.\n<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 8, 70, 11, 8, 80, 1),
(99, 'Esprits de l&#39;arbre', 'galerie1', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Il y a un registre où le\ntemps s''inscrit. Il y a le passage du temps et\npuis il y a l''extraordinaire potentialité du\nvivant de se transformer, de se régénérer, de se\nreconstruire.\n\n<br/><br/>\n\n</div>', 580, 480, 100, 100, 10, 20, 10, 10, 120, 1),
(113, 'L&#39;intouchable', 'galerie3', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Rencontrer un\nêtre qui n''est pas un\nobjet sensible dansle lieu\nou s''assemblent nos sens .<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 220, 8, 18, 170, 100, 1),
(118, 'Le peuple invisible', 'galerie2', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Fondus dans la matière, ils\nn’ont plus besoin de leurs yeux, ils en ont perdu\nl’usage et ont pourrait penser qu’ils sont\naveugles. Un regard intérieur pénétrant les\néclaire intimement avec plus de justesse et de\nfermeté. Ils semblent avoir dépassés le cap de la\nmort et s’ils ont leur épreuves comme les peuples\nde la surface, c’est à un niveau plus élevé.\n<br/><br/>\nHenry Bauchau.\n\n</div>', 500, 450, 80, 98, 8, 70, 11, 8, 110, 1),
(125, 'le passage', 'galerie4', '<div\nstyle=''position:relative;width:70%;margin:200px\nauto;line-height:20px''>Dans la lumière bleue de\nla chambre aquarium, observer l''éloignement\nirréversible de chaque fibre d''un être des\nfibres vivantes du monde .<br/><br/>\n\n\n</div>', 500, 450, 80, 98, 220, 8, 18, 170, 90, 1),
(127, 'Equation du 1er degré à une inconnue', 'equation', '', 0, 0, 0, 0, 0, 0, 0, 0, 100, 0);

-- --------------------------------------------------------

--
-- Structure de la table `lespages`
--

CREATE TABLE IF NOT EXISTS `lespages` (
  `idpages` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idpages`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `lespages`
--

INSERT INTO `lespages` (`idpages`, `contenu`) VALUES
(1, '<br /><span style="font-family: Lucida;">&nbsp;<span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;"> <br style="font-size: large;" /></span></span> \n  <div align="justify"><span style="font-size: large;"> \n      <div align="center">&nbsp;&nbsp;\n      \n      \n      \n      \n      \n      \n      \n      \n      \n      </div></span><span style="font-size: x-large;"><span style="font-size: large;"> \n        <div align="center">&nbsp;\n        \n        \n        \n        \n        \n        \n        </div></span></span><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: x-large;">&nbsp;</span></span></span>&nbsp;\n                  <span style="font-size: large;"><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;</span><span style="font-size: x-large;">&nbsp;</span><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;</span></span></span></span></span></span></span><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: x-large;"><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: large;"> \n                    <div align="center">&nbsp;\n                  \n                    \n                    \n                    \n                    \n                    \n                    \n                    \n                    </div></span></span></span></span></span></span></span><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: x-large;"><span style="font-size: xx-small;"><span style="font-size: x-large;"><span style="font-size: large;"> \n                      <div align="center">LES ESPRITS DE L''ARBRE<br /><br />Exposition de THIERRY DUBREUIL et MICHEL GAUTIER<br />Mise en odeurs de MICHAEL MOISSEEFF<br />Comissaire MANON REGIMBALD<br /><br />du 15 mai au 2 novembre 2014<br /><br />Maison de l''arbre du jardin botanique<br />4500, boulevard Rosemont. Angle 29eme avenue&nbsp;&nbsp;&nbsp; <br />&nbsp;Montréal&nbsp;\n    \n      \n        \n                \n                    \n                      \n                      \n                      \n                      \n                      \n                      \n                      \n                      </div></span></span></span></span></span></span></span></span></span><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: xx-small;"><span style="font-size: x-large;"><br /></span></span></span></span><br /><br /> \n  </div><span style="font-size: x-small; font-family: Verdana;">&nbsp;</span><br /></span> \n<div align="justify"> \n  <div align="justify"><span style="font-family: Lucida;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span><span style="font-family: Arial;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"> &nbsp; <i>&nbsp;</i></span></span></span></span><span style="font-family: helvetica;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><i>&nbsp; &nbsp;</i> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;</span></span></span></span><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp;</span></span></span></span></span></span><span style="font-size: medium;">&nbsp;</span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="font-size: x-large;">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></span></span></span></span></span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></span></span></span></span></span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;">&nbsp;</span></span></span></span></span></span></span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></span></span></span></span></span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: large;"><span style="font-size: x-large;"><span style="font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></span></span></span></span></span></span></span></span></span><br /> \n  </div><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;">&nbsp;</span></span></span></span></span>&nbsp;\n          <br /><br /> \n          <div align="justify"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp;&nbsp; </span></span><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp;</span></span><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp;</span></span><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></span></span></span></span></span><br /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"> \n                    <div align="justify" style="font-size: x-large;"><span style="font-size: large;">&nbsp;</span> \n                    </div></span></span></span></span><br /> \n          </div></span></span></span></span> \n</div> \n<div align="justify"><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"> \n          <div align="justify" style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;">&nbsp;</span></span></span></span><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;"><span style="font-family: Verdana; font-size: x-large;">&nbsp;</span></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large;"><span style="font-size: large;">&nbsp;</span></span></span></span></span> \n          </div></span></span></span></span> \n</div><br style="font-size: x-large;" /><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-family: helvetica;"><span style="font-size: x-large;"> \n        <div align="justify" style="font-size: x-large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;">&nbsp;</span></span></span><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: large;"><span style="font-size: x-small;">&nbsp;</span></span><span style="font-size: x-small;">&nbsp;</span></span></span><span style="font-size: large;"><span style="font-size: x-small;">&nbsp;</span></span><span style="font-size: x-small;">&nbsp;</span></span><span style="font-size: x-small;">&nbsp;</span> \n        </div></span></span></span></span><span style="font-family: Lucida;"><span style="font-family: Arial;"><span style="font-size: x-large;"> \n      <div align="justify" style="font-size: x-large;"><span style="font-size: x-small;">&nbsp;</span> \n      </div></span></span><span style="font-size: x-large;"> \n    <div align="justify" style="font-size: x-large;"><span style="font-size: x-small;">&nbsp;</span> \n    </div></span> \n  <div align="justify" style="font-size: x-large;"><span style="font-size: x-small;">&nbsp;</span> \n  </div></span>'),
(2, '<br /><br /><h2>Photographe</h2> \n<ul style="color: rgb(186, 9, 56);"> \n  <li><a target="_blank" title="site de katerine le Gallou" href="http://www.katrinelegallou.com/">Katrine Le Gallou</a></li> \n</ul><h2>Laboratoire</h2> \n<ul style="color: rgb(194, 33, 33);"> \n  <li><a title="site Franck Bordas" target="_blank" href="http://bordas.online.fr/">Studio Franck Bordas</a><br /></li> \n</ul> <h2>Lieu de Création</h2> \n<ul style="color: rgb(186, 7, 37);"> \n  <li><a target="_blank" title="site du Local" href="http://www.le-local.net/">Le Local</a></li> \n</ul> <h2>Réalisateur de films musicaux</h2> \n<ul style="color: rgb(186, 7, 37);"> \n  <li><a target="_blank" title="claude Santiago" href="http://www.claude-santiago.com/">Claude Santiago</a></li> \n</ul> <h2>Créateur de sites web</h2> \n<ul style="color: rgb(186, 7, 37);"> \n  <li><a target="_blank" title="Francis Barban" href="mailto:fbarban@gmail.com">Francis Barban</a></li> \n</ul>'),
(3, '<br /><br />* <em style="font-size: small;">J''ai suivi une formation de photographie chez Claude Nori à la galerie-maison d''édition Contrejour. Par la suite j''ai travaillé dans les domaines du cinéma et de la vidéo. Je pratique aujourd''hui une activité essentiellement tournée  vers la photographie de création. </em><br /><br /><br /> <h5>Expositions photographiques  (2007-2014)</h5> \n<ul> \n  <li>Les esprits de l''arbre, installation, Maison de l''arbre du Jardin botanique, Montréal, mai à novembre 2014.\n  </li> \n  <li>Borders, exposition privée chez Sarah Neiger, Paris, mars 2013.</li> \n  <li>Le peuple invisible, galerie L''oeil Ecoute, Limoges, novembre 2012.</li> \n  <li>Portes  Ouvertes Ateliers d’Artistes Art Canal X, Paris, 2006 ... 2011.</li> \n  <li>Rencontres  Photographiques de Solignac 2009.</li> \n  <li>Shot spot, Geoffrey Young gallery, Great Barrington, USA, octobre 2008.</li> \n  <li><em>Esprits de l’Arbre </em>installation, théâtre le  Local, Paris, mai 2007.</li> \n</ul> \n<p><br /></p> \n<p><br /></p> <h5>Collections <br /></h5> \n<ul> \n  <li>Bibliothèque nationale de France&nbsp;\n  </li> \n</ul> ');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `idphoto` int(11) NOT NULL AUTO_INCREMENT,
  `nomphoto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `titrephoto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordrephoto` int(2) DEFAULT '0',
  `refgal` int(11) NOT NULL,
  PRIMARY KEY (`idphoto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1123 ;

--
-- Contenu de la table `photos`
--

INSERT INTO `photos` (`idphoto`, `nomphoto`, `titrephoto`, `ordrephoto`, `refgal`) VALUES
(955, 'tdu_5655a.jpg', '', 24, 123),
(968, 'tdu_0059b.jpg', '', 11, 123),
(969, 'tdu_0435a.jpg', '', 10, 123),
(954, 'tdu_3618a.jpg', '', 9, 123),
(971, 'tdu_3909a.jpg', '', 8, 123),
(972, 'tdu_4271a.jpg', '', 6, 123),
(974, 'tdu_4483ajpg.jpg', '', 5, 123),
(980, 'tdu_4866a.jpg', '', 7, 123),
(902, 'tdu_5015b.jpg', '', 3, 123),
(982, 'tdu_5054a.jpg', '', 0, 123),
(967, 'tdu_5243b.jpg', '', 12, 123),
(932, 'tdu_0013a.jpg', '', 13, 123),
(956, 'tdu_7423a.jpg', '', 23, 123),
(957, 'tdu_5823a.jpg', '', 22, 123),
(958, 'tdu_9146a.jpg', '', 21, 123),
(911, 'tdu_5946.jpg', '', 20, 123),
(959, 'tdu_6653a.jpg', '', 19, 123),
(960, 'tdu_9245b.jpg', '', 18, 123),
(962, 'tdu_9089b.jpg', '', 17, 123),
(963, 'tdu_6194b.jpg', '', 16, 123),
(965, 'tdu_5704b.jpg', '', 15, 123),
(966, 'tdu_8530a.jpg', '', 14, 123),
(935, 'tdu_9081.jpg', '', 2, 123),
(984, 'tdu_5384a.jpg', '', 1, 123),
(400, 'dscf6257.jpg', '', 50, 99),
(1072, 'dscf0340.jpg', '', 260, 99),
(346, '_dscf2417.jpg', '', 220, 99),
(347, 'dscf0036.jpg', '', 280, 99),
(1114, 'tdu_6747w.jpg', '', 0, 118),
(378, 'dscf6192.jpg', '', 140, 99),
(377, 'dscf5465.jpg', '', 110, 99),
(376, 'dscf5351.jpg', '', 130, 99),
(1064, 'dscf0600.jpg', '', 190, 99),
(374, 'dscf5035.jpg', '', 120, 99),
(373, 'dscf2430.jpg', '', 90, 99),
(371, 'dscf2214.jpg', '', 70, 99),
(370, 'dscf1979.jpg', '', 230, 99),
(1065, 'dscf9611.jpg', '', 100, 99),
(368, 'dscf1871.jpg', '', 60, 99),
(366, 'dscf1745.jpg', '', 340, 99),
(364, 'dscf1668.jpg', '', 80, 99),
(363, 'dscf1306.jpg', '', 180, 99),
(1070, 'dscf1916.jpg', '', 30, 99),
(361, 'dscf1023.jpg', '', 170, 99),
(360, 'dscf0803.jpg', '', 160, 99),
(359, 'dscf0776.jpg', '', 150, 99),
(358, 'dscf0629.jpg', '', 240, 99),
(1068, 'dscf5062.jpg', '', 40, 99),
(356, 'dscf0367.jpg', '', 210, 99),
(1067, 'dscf2410.jpg', '', 45, 99),
(353, 'dscf0313.jpg', '', 200, 99),
(352, 'dscf0305.jpg', '', 300, 99),
(714, 'dscf0056.jpg', '', 290, 99),
(350, 'dscf0161.jpg', '', 270, 99),
(1066, 'dscf0328.jpg', '', 20, 99),
(715, 'dscf0301.jpg', '', 350, 99),
(1036, 'tdu_7431a.jpg', '', 45, 118),
(1037, 'tdu_9258a.jpg', '', 38, 118),
(1052, 'tdu_49961.jpg', '', 30, 118),
(706, 'tdu_8885.jpg', '', 25, 118),
(705, 'tdu_0118.jpg', '', 20, 118),
(1042, 'tdu_50891.jpg', '', 35, 118),
(1039, 'tdu_8435w.jpg', '', 14, 118),
(1040, 'tdu_7746a.jpg', '', 12, 118),
(1062, 'tdu_72421.jpg', '', 8, 118),
(1035, 'tdu_5554a.jpg', '', 40, 118),
(694, 'tdu_4637.jpg', '', 50, 118),
(1025, 'tdu_0343a.jpg', '', 95, 118),
(692, 'tdu_8930.jpg', '', 96, 118),
(1028, 'tdu_9587a.jpg', '', 90, 118),
(1029, 'tdu_6864w.jpg', '', 85, 118),
(1030, 'tdu_4932w.jpg', '', 80, 118),
(1031, 'tdu_5852a.jpg', '', 75, 118),
(1032, 'tdu_8577w.jpg', '', 70, 118),
(688, 'tdu_5964.jpg', '', 65, 118),
(1043, 'tdu_3908w.jpg', '', 100, 113),
(1046, 'tdu_4229b.jpg', '', 70, 113),
(1045, 'tdu_4096w.jpg', '', 80, 113),
(1044, 'tdu_4206w.jpg', '', 90, 113),
(1033, 'tdu_7631w.jpg', '', 60, 118),
(1034, 'tdu_5164.jpg', '', 55, 118),
(1116, 'tdu_8691a.jpg', '', 110, 118),
(1071, 'dscf0621.jpg', '', 10, 99),
(1108, 'tdu_2289w.jpg', '', 100, 125),
(1048, 'tdu_0841w.jpg', '', 90, 125),
(1049, 'tdu_7281w.jpg', '', 80, 125),
(1050, 'tdu_8941w.jpg', '', 70, 125),
(1115, 'tdu_3655w.jpg', '', 5, 118);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
