-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Lun 20 Mai 2019 à 09:03
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
-- Structure de la table `actor`
--

CREATE TABLE `actor` (
  `Id_actor` int(11) NOT NULL,
  `Actor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `actor`
--

INSERT INTO `actor` (`Id_actor`, `Actor_name`) VALUES
(1, 'Ryan Reynolds'),
(2, 'Vincent Cassel'),
(3, 'Leonardo DiCaprio'),
(4, 'Emma Stone'),
(5, 'Nicole Kidman'),
(6, 'Scarlett Johansson'),
(7, 'Andrew Garfield');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `Id_admin` int(11) NOT NULL,
  `Admin_name` varchar(255) NOT NULL,
  `Admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`Id_admin`, `Admin_name`, `Admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `Id_genre` int(11) NOT NULL,
  `Genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`Id_genre`, `Genre_name`) VALUES
(1, 'Action'),
(2, 'Fantastique'),
(3, 'Animation');

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `Id_movie` int(11) NOT NULL,
  `Movie_name` varchar(255) NOT NULL,
  `Movie_poster` varchar(255) NOT NULL,
  `Movie_date` datetime NOT NULL,
  `Movie_synopsis` text NOT NULL,
  `Movie_trailer` text NOT NULL,
  `Movie_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `movie`
--

INSERT INTO `movie` (`Id_movie`, `Movie_name`, `Movie_poster`, `Movie_date`, `Movie_synopsis`, `Movie_trailer`, `Movie_time`) VALUES
(1, 'Aquaman', 'img/aquaman-box-office.jpg', '2019-04-17 00:00:00', 'Arthur Curry est né d\'un père humain et d\'un mère Atlante, la reine Atlanna qui a dû le laisser et retrouver les siens. Bien des années plus tard, Arthur parcourt le Sahara avec son amie Mera à la recherche de l\'Atlantide. Il parviennent à leurs fins et découvrent que la survie du royaume des Sept Mers dépend d\'Arthur...', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/150q5Qn4uNA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:10:00'),
(2, 'Venom', 'img/venon.jpg', '2019-04-11 00:00:00', 'A San Francisco, Eddie Brock, journaliste, signe une interview qui lui coûte sa carrière et son futur mariage avec sa fiancée. Menant désormais une vie misérable, il est contacté par une scientifique qui lui demande d\'enquêter sur les pratiques non éthiques de son patron, le richissime Carlton Drake...\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fSIyga_xMGM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:06:00'),
(3, 'Captain America : Civil War', 'img/captain.jpg', '2019-04-11 00:00:00', 'En Afrique, Captain America, Scarlet Witch et Black Widow affrontent Brock Rumlow. Mais, au cours du combat, les pouvoirs de Scarlet Witch causent la mort d\'innocents. Le secrétaire d\'Etat Thaddeus Ross signifie alors aux Avengers qu\'ils devront attendre le feu vert des politiques avant d\'intervenir...', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tdFmJ8LR2PQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:35:00'),
(4, 'Avengers : Infinity War', 'img/4.jpg', '2019-04-24 00:00:00', 'Le puissant Thanos débarque sur Terre dans le but de détruire l\'humanité toute entière. Il en aura le pouvoir s\'il s\'empare des six Pierres d\'Infinité. Les Avengers et leurs alliés - Docteur Strange, Black Panther, les Gardiens de la Galaxie - vont unir leurs forces pour le mettre hors d\'état de nuire', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eIWs2IUr3Vs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:28:00'),
(5, 'Mutafukaz', 'img/muta.jpg', '2017-10-11 00:00:00', 'A Dark Meat City, ville ravagée par le crime et la pollution, Angelino et Vinz, deux amis, vivotent entre combines et petits boulots. Angelino, victime d’un accident de scooter, est soudain pris d’hallucinations : il «voit» de dangereuses ombres sortir de certains passants qu’il croise dans la rue...', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YCXurVvaKGg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:27:00'),
(6, 'Deadpool', 'img/8.jpg', '2019-05-03 00:00:00', 'Wade Wilson, un ancien militaire des forces spéciales, est devenu mercenaire. Après avoir subi une expérimentation hors-norme qui va accélérer ses pouvoirs de guérison, il va devenir Deadpool. Armé de ses nouvelles capacités et d\'un humour noir survolté, il va traquer l\'homme qui a bien failli anéantir sa vie.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OH_Xf35mzLA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:03:00'),
(7, 'KIM', 'img/1.jpg', '2019-05-16 00:00:00', 'IN, a pulse-pounding crime thriller with a sci-fi twist, is the story of an unexpected hero destined for greatness. Chased by a vengeful criminal ...', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ac5wrM2uYbk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:52:00'),
(8, 'Empereur de paris', 'img/empereur-de-paris.jpg', '2019-05-09 00:00:00', 'Sous le règne de Napoléon, François Vidocq, le seul homme à s\'être échappé des plus grands bagnes du pays, est une légende des bas-fonds parisiens. Laissé pour mort après sa dernière évasion spectaculaire, l\'ex-bagnard essaye de se faire oublier sous les traits d\'un simple commerçant.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3MceLw-_16I\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:09:00'),
(9, 'Valérian', 'img/7.jpg', '2019-05-01 00:00:00', 'Au 28ème siècle, Valérian et Laureline forment une équipe d\'agents spatio-temporels chargés de maintenir l\'ordre dans les territoires humains. Mandaté par le Ministre de la Défense, le duo part en mission sur l\'extraordinaire cité intergalactique Alpha. Un mystère se cache au coeur d\'Alpha', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DYJFtq8kVy8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:09:00'),
(10, 'Le Loup de Wall Street', 'img/9.jpg', '2019-05-20 00:00:00', 'Sa licence de courtier en poche, et les narines déjà pleines de cocaïne, Jordan Belfort est prêt à conquérir Wall Street. Ce jour d\'octobre, un krach, le plus important depuis 1929, vient piétiner ses rêves de grandeur. C\'est finalement à Long Island qu\'il échoue et qu\'il monte sa propre affaire', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GT9UfSqBz9o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:57:00'),
(11, 'Les Gardiens de la Galaxie', 'img/2.jpg', '2019-05-19 00:00:00', 'Peter Quill est un aventurier traqué par tous les chasseurs de primes pour avoir volé un mystérieux globe convoité par le puissant Ronan, dont les agissements menacent l\'univers tout entier. Lorsqu\'il découvre le véritable pouvoir de ce globe et la menace qui pèse sur la galaxie, il conclut une alliance fragile avec quatre extraterrestres disparates.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ry19UYQoAro\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:59:00');

-- --------------------------------------------------------

--
-- Structure de la table `realisator`
--

CREATE TABLE `realisator` (
  `Id_realisator` int(11) NOT NULL,
  `Realisator_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realisator`
--

INSERT INTO `realisator` (`Id_realisator`, `Realisator_name`) VALUES
(1, 'Anthony Russo'),
(2, 'Tim Miller'),
(3, 'Luc Besson'),
(4, 'Martin Scorsese'),
(5, 'Marc Webb');

-- --------------------------------------------------------

--
-- Structure de la table `relation0`
--

CREATE TABLE `relation0` (
  `Id_user` int(11) NOT NULL,
  `Id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(3, 8),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `relation2`
--

CREATE TABLE `relation2` (
  `Id_actor` int(11) NOT NULL,
  `Id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `relation2`
--

INSERT INTO `relation2` (`Id_actor`, `Id_movie`) VALUES
(5, 1),
(1, 6),
(2, 8),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `relation3`
--

CREATE TABLE `relation3` (
  `Id_realisator` int(11) NOT NULL,
  `Id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `relation3`
--

INSERT INTO `relation3` (`Id_realisator`, `Id_movie`) VALUES
(1, 4),
(2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `password`, `mail`) VALUES
(1, 'axel', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'axel@live.fr'),
(2, 'test', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'test@live.fr');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`Id_actor`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_admin`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Id_genre`);

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Id_movie`);

--
-- Index pour la table `realisator`
--
ALTER TABLE `realisator`
  ADD PRIMARY KEY (`Id_realisator`);

--
-- Index pour la table `relation0`
--
ALTER TABLE `relation0`
  ADD PRIMARY KEY (`Id_user`,`Id_movie`),
  ADD KEY `relation0_movie0_FK` (`Id_movie`);

--
-- Index pour la table `relation1`
--
ALTER TABLE `relation1`
  ADD PRIMARY KEY (`Id_genre`,`Id_movie`),
  ADD KEY `relation1_movie0_FK` (`Id_movie`);

--
-- Index pour la table `relation2`
--
ALTER TABLE `relation2`
  ADD PRIMARY KEY (`Id_actor`,`Id_movie`),
  ADD KEY `relation2_movie0_FK` (`Id_movie`);

--
-- Index pour la table `relation3`
--
ALTER TABLE `relation3`
  ADD PRIMARY KEY (`Id_realisator`,`Id_movie`),
  ADD KEY `relation3_movie0_FK` (`Id_movie`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `actor`
--
ALTER TABLE `actor`
  MODIFY `Id_actor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `Id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `Id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `realisator`
--
ALTER TABLE `realisator`
  MODIFY `Id_realisator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `relation0`
--
ALTER TABLE `relation0`
  ADD CONSTRAINT `relation0_movie0_FK` FOREIGN KEY (`Id_movie`) REFERENCES `movie` (`Id_movie`),
  ADD CONSTRAINT `relation0_user_FK` FOREIGN KEY (`Id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `relation1`
--
ALTER TABLE `relation1`
  ADD CONSTRAINT `relation1_genre_FK` FOREIGN KEY (`Id_genre`) REFERENCES `genre` (`Id_genre`),
  ADD CONSTRAINT `relation1_movie0_FK` FOREIGN KEY (`Id_movie`) REFERENCES `movie` (`Id_movie`);

--
-- Contraintes pour la table `relation2`
--
ALTER TABLE `relation2`
  ADD CONSTRAINT `relation2_actor_FK` FOREIGN KEY (`Id_actor`) REFERENCES `actor` (`Id_actor`),
  ADD CONSTRAINT `relation2_movie0_FK` FOREIGN KEY (`Id_movie`) REFERENCES `movie` (`Id_movie`);

--
-- Contraintes pour la table `relation3`
--
ALTER TABLE `relation3`
  ADD CONSTRAINT `relation3_movie0_FK` FOREIGN KEY (`Id_movie`) REFERENCES `movie` (`Id_movie`),
  ADD CONSTRAINT `relation3_realisator_FK` FOREIGN KEY (`Id_realisator`) REFERENCES `realisator` (`Id_realisator`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
