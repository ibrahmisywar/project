-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 16 Novembre 2021 à 19:20
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_user` int(11) NOT NULL,
  `num_poste` int(11) DEFAULT NULL,
  `adresse` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `id_demande` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  PRIMARY KEY (`id_demande`),
  KEY `id_user` (`id_user`),
  KEY `id_membre` (`id_membre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `demande`
--

INSERT INTO `demande` (`id_demande`, `id_user`, `id_membre`) VALUES
(21, 12, 7),
(23, 12, 12),
(24, 12, 12),
(25, 12, 12),
(26, 12, 12),
(27, 12, 12),
(29, 12, 12),
(30, 12, 6),
(31, 12, 12),
(32, 12, 12),
(33, 6, 6),
(34, 6, 7);

-- --------------------------------------------------------

--
-- Structure de la table `listami`
--

CREATE TABLE IF NOT EXISTS `listami` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_ami` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_ami` (`id_ami`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `listami`
--

INSERT INTO `listami` (`id`, `id_user`, `id_ami`) VALUES
(4, 12, 6),
(5, 12, 12),
(6, 12, 7),
(8, 12, 12),
(9, 12, 12);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `id_user` int(11) NOT NULL,
  `Profession` enum('doctore','ingenieur','etudiant','autre') DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id_message` int(11) NOT NULL AUTO_INCREMENT,
  `id_userSender` int(11) NOT NULL,
  `id_userRecever` int(11) NOT NULL,
  `date_envoi` varchar(20) NOT NULL,
  `contenuMessage` varchar(255) NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=44 ;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`id_message`, `id_userSender`, `id_userRecever`, `date_envoi`, `contenuMessage`) VALUES
(4, 2, 3, '23-23-2012', 'Test2'),
(5, 2, 3, '23-23-2012', 'Test2'),
(6, 2, 3, '23-23-2012', 'Test2'),
(8, 2, 3, '23-23-2012', 'Test2'),
(9, 2, 3, '23-23-2012', 'test update'),
(10, 2, 3, '23-23-2012', 'Test2'),
(11, 2, 3, '23-23-2012', 'Test2'),
(12, 2, 3, '23-23-2012', 'Test2'),
(13, 2, 3, '23-23-2012', 'Test2'),
(14, 2, 3, '23-23-2012', 'Test2'),
(15, 2, 3, '23-23-2012', 'Test2'),
(16, 2, 3, '23-23-2012', 'Test2'),
(17, 2, 3, '23-23-2012', 'Test2'),
(18, 2, 3, '23-23-2012', 'Test2'),
(19, 2, 3, '23-23-2012', 'Test2'),
(20, 2, 3, '23-23-2012', 'Test2'),
(21, 2, 3, '23-23-2012', 'Test2'),
(22, 2, 3, '23-23-2012', 'Test2'),
(23, 2, 3, '23-23-2012', 'Test2'),
(24, 2, 3, '23-23-2012', 'Test2'),
(25, 2, 3, '23-23-2012', 'Test2'),
(26, 2, 3, '23-23-2012', 'Test2'),
(27, 2, 3, '23-23-2012', 'Test2'),
(28, 2, 3, '23-23-2012', 'Test2'),
(29, 2, 3, '23-23-2012', 'Test2'),
(30, 2, 3, '23-23-2012', 'Test2'),
(31, 2, 3, '23-23-2012', 'Test2'),
(32, 2, 3, '23-23-2012', 'Test2'),
(33, 2, 3, '23-23-2012', 'Test2'),
(34, 2, 3, '23-23-2012', 'Test2'),
(35, 2, 3, '23-23-2012', 'Test2'),
(36, 2, 3, '23-23-2012', 'Test2'),
(37, 2, 3, '23-23-2012', 'Test2'),
(38, 2, 3, '23-23-2012', 'Test2'),
(39, 2, 3, '23-23-2012', 'Test2'),
(40, 2, 3, '23-23-2012', 'Test2'),
(41, 2, 3, '23-23-2012', 'Test2'),
(42, 2, 3, '23-23-2012', 'Test2'),
(43, 2, 3, '23-23-2012', 'Test2');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `bio` text NOT NULL,
  `nbr_publication` int(11) NOT NULL,
  `photo_profil_path` varchar(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_profil`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `profil`
--

INSERT INTO `profil` (`id_profil`, `bio`, `nbr_publication`, `photo_profil_path`, `id_user`) VALUES
(5, 'hello', 0, '2.PNG', 6),
(11, 'nnn', 10121, '3.PNG', 7),
(12, 'jhjgyhyugylk', 0, '5.PNG', 12);

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `id_publication` int(11) NOT NULL AUTO_INCREMENT,
  `date_publication` date NOT NULL,
  `pub_path` varchar(100) NOT NULL,
  PRIMARY KEY (`id_publication`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `signal`
--

CREATE TABLE IF NOT EXISTS `signal` (
  `id_signal` int(11) NOT NULL AUTO_INCREMENT,
  `id_membre_signal_maker` int(11) NOT NULL,
  `id_membre_signal_recever` int(11) DEFAULT NULL,
  `id_pub_signal` int(11) DEFAULT NULL,
  `id_profil_signal` int(11) DEFAULT NULL,
  `id_theme_signal` int(11) DEFAULT NULL,
  `rapport` text NOT NULL,
  PRIMARY KEY (`id_signal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `nom_theme` varchar(100) NOT NULL,
  `visibilite` tinyint(1) NOT NULL,
  `capacite` int(11) NOT NULL,
  `nbr_participant` int(11) NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `theme_membre`
--

CREATE TABLE IF NOT EXISTS `theme_membre` (
  `id_membre` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` enum('female','male') NOT NULL,
  `Role` enum('Admin','membre') NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `gmail` (`gmail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `Nom`, `Prenom`, `date_naissance`, `gmail`, `password`, `gender`, `Role`) VALUES
(6, 'rzouga', 'sywar', '2021-10-06', 'rzouga20003@gmail.com', '123456', 'female', 'membre'),
(7, 'sywar2', 'sywar2', '2021-10-27', 'sywar2@gmail.com', '12345', 'male', 'membre'),
(8, 'rzougga', 'rzouga', '2021-10-06', 'rzouga@gmail.com', '12345', 'male', 'membre'),
(10, 'mohamed', 'siwar', '2000-10-06', 'siwarrrr@gmail.com', '1212', 'female', 'membre'),
(11, 'toumi', 'siwaar', '2021-11-16', 'siwartoumi@gmail.com', '123456', 'female', 'membre'),
(12, 'Ben sywar', 'sywar', '2021-10-19', 'sywar@gmail.com', '123465', 'female', 'membre');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `demande_ibfk_2` FOREIGN KEY (`id_membre`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `listami`
--
ALTER TABLE `listami`
  ADD CONSTRAINT `listami_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listami_ibfk_2` FOREIGN KEY (`id_ami`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
