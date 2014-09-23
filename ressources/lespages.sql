-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Serveur: db2088.1and1.fr
-- Généré le : Vendredi 23 Octobre 2009 à 16:38
-- Version du serveur: 5.0.81
-- Version de PHP: 4.3.10-200.schlund.1
-- 
-- Base de données: `db297985791`
-- 

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
