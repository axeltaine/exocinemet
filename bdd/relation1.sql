-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Jeu 09 Mai 2019 à 11:59
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `allo_cinemet`
--

-- --------------------------------------------------------

--
-- Structure de la table `relation1`
--

CREATE TABLE `relation1` (
  `Id_genre` int(11) NOT NULL,
  `Id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `relation1`
--

INSERT INTO `relation1` (`Id_genre`, `Id_movie`) VALUES
(1, 2),
(1, 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `relation1`
--
ALTER TABLE `relation1`
  ADD PRIMARY KEY (`Id_genre`,`Id_movie`),
  ADD KEY `relation1_movie0_FK` (`Id_movie`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `relation1`
--
ALTER TABLE `relation1`
  ADD CONSTRAINT `relation1_genre_FK` FOREIGN KEY (`Id_genre`) REFERENCES `genre` (`Id_genre`),
  ADD CONSTRAINT `relation1_movie0_FK` FOREIGN KEY (`Id_movie`) REFERENCES `movie` (`Id_movie`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
