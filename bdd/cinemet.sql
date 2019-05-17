-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Lun 13 Mai 2019 à 11:17
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cinemet`
--

-- --------------------------------------------------------

--
-- Structure de la table `FILM`
--

CREATE TABLE `FILM` (
  `ID` int(11) NOT NULL,
  `TITRE` varchar(255) NOT NULL,
  `DATE_SORTIE` datetime NOT NULL,
  `AFFICHE` text NOT NULL,
  `RESUME` text NOT NULL,
  `REALISATEUR` text NOT NULL,
  `ACTEUR` text NOT NULL,
  `VIDEO` text NOT NULL,
  `DUREE` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `FILM`
--

INSERT INTO `FILM` (`ID`, `TITRE`, `DATE_SORTIE`, `AFFICHE`, `RESUME`, `REALISATEUR`, `ACTEUR`, `VIDEO`, `DUREE`) VALUES
(1, 'Aquaman', '2019-04-17 00:00:00', 'img/aquaman-box-office.jpg', 'Arthur Curry est né d\'un père humain et d\'un mère Atlante, la reine Atlanna qui a dû le laisser et retrouver les siens. Bien des années plus tard, Arthur parcourt le Sahara avec son amie Mera à la recherche de l\'Atlantide. Il parviennent à leurs fins et découvrent que la survie du royaume des Sept Mers dépend d\'Arthur...', 'James Wan', 'Jason Momoa, Amber Heard, Nicole Kidman, Willem Dafoe, Patrick Wilson, Dolph Lundgren, Temuera Morrison, Ludi Lin, Patrick Cox, Otis Dhanji', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/150q5Qn4uNA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:10:00'),
(2, 'Venom', '2019-04-11 00:00:00', 'img/venon.jpg', 'A San Francisco, Eddie Brock, journaliste, signe une interview qui lui coûte sa carrière et son futur mariage avec sa fiancée. Menant désormais une vie misérable, il est contacté par une scientifique qui lui demande d\'enquêter sur les pratiques non éthiques de son patron, le richissime Carlton Drake...\r\n\r\n', 'Ruben Fleischer', 'Tom Hardy, Michelle Williams, Riz Ahmed, Jenny Slate, Scott Haze, Reid Scott, Michelle Lee, Woody Harrelson...', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/fSIyga_xMGM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:06:00'),
(3, 'Captain America : Civil War', '2019-04-11 00:00:00', 'img/captain.jpg', 'En Afrique, Captain America, Scarlet Witch et Black Widow affrontent Brock Rumlow. Mais, au cours du combat, les pouvoirs de Scarlet Witch causent la mort d\'innocents. Le secrétaire d\'Etat Thaddeus Ross signifie alors aux Avengers qu\'ils devront attendre le feu vert des politiques avant d\'intervenir...', 'Anthony Russo, Joe Russo', 'Chris Evans, Robert Downey Jr, Scarlett Johansson, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Daniel Brühl, Chadwick Boseman, Frank Grillo, Jeremy Renner, Tom Holland, Martin Freeman, William Hurt', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/tdFmJ8LR2PQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:35:00'),
(4, 'Avengers : Infinity War', '2019-04-24 00:00:00', 'img/4.jpg', 'Le puissant Thanos débarque sur Terre dans le but de détruire l\'humanité toute entière. Il en aura le pouvoir s\'il s\'empare des six Pierres d\'Infinité. Les Avengers et leurs alliés - Docteur Strange, Black Panther, les Gardiens de la Galaxie - vont unir leurs forces pour le mettre hors d\'état de nuire', 'Anthony Russo, Joe Russo', 'Robert Downey Jr, Chris Evans, Chris Pratt, Benedict Cumberbatch, Scarlett Johansson, Dave Bautista, Karen Gillan, Zoe Saldana, Elizabeth Olsen, Sebastian Stan, Chris Hemsworth, Mark Ruffalo', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/eIWs2IUr3Vs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:28:00'),
(5, 'Mutafukaz', '2017-10-11 00:00:00', 'img/muta.jpg', 'A Dark Meat City, ville ravagée par le crime et la pollution, Angelino et Vinz, deux amis, vivotent entre combines et petits boulots. Angelino, victime d’un accident de scooter, est soudain pris d’hallucinations : il «voit» de dangereuses ombres sortir de certains passants qu’il croise dans la rue...', 'Shoujirou Nishimi, Guillaume Renard', 'aucun', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/YCXurVvaKGg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:27:00'),
(6, 'Deadpool', '2019-05-03 00:00:00', 'img/8.jpg', 'Wade Wilson, un ancien militaire des forces spéciales, est devenu mercenaire. Après avoir subi une expérimentation hors-norme qui va accélérer ses pouvoirs de guérison, il va devenir Deadpool. Armé de ses nouvelles capacités et d\'un humour noir survolté, il va traquer l\'homme qui a bien failli anéantir sa vie.', 'Tim Miller', 'Ryan Reynolds', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/OH_Xf35mzLA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:03:00'),
(7, 'KIM', '2019-05-16 00:00:00', 'img/1.jpg', 'IN, a pulse-pounding crime thriller with a sci-fi twist, is the story of an unexpected hero destined for greatness. Chased by a vengeful criminal ...', 'Josh Baker, Jonathan Baker', 'Myles Truitt, Jack Reynor, Zoë Kravitz, James Franco, Dennis Quaid', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/Ac5wrM2uYbk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:52:00'),
(8, 'Empereur de paris', '2019-05-09 00:00:00', 'img/empereur-de-paris.jpg', 'Sous le règne de Napoléon, François Vidocq, le seul homme à s\'être échappé des plus grands bagnes du pays, est une légende des bas-fonds parisiens. Laissé pour mort après sa dernière évasion spectaculaire, l\'ex-bagnard essaye de se faire oublier sous les traits d\'un simple commerçant.', 'Jean-François Richet', 'Vincent Cassel', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/3MceLw-_16I\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:09:00'),
(9, 'Valérian', '2019-05-01 00:00:00', 'img/7.jpg', 'Au 28ème siècle, Valérian et Laureline forment une équipe d\'agents spatio-temporels chargés de maintenir l\'ordre dans les territoires humains. Mandaté par le Ministre de la Défense, le duo part en mission sur l\'extraordinaire cité intergalactique Alpha. Un mystère se cache au coeur d\'Alpha', 'Luc Besson', 'Cara Delevingne, Dane DeHaan', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/DYJFtq8kVy8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:09:00'),
(10, 'Le Loup de Wall Street', '2019-05-20 00:00:00', 'img/9.jpg', 'Sa licence de courtier en poche, et les narines déjà pleines de cocaïne, Jordan Belfort est prêt à conquérir Wall Street. Ce jour d\'octobre, un krach, le plus important depuis 1929, vient piétiner ses rêves de grandeur. C\'est finalement à Long Island qu\'il échoue et qu\'il monte sa propre affaire', 'Martin Scorsese', 'Leonardo DiCaprio, Margot Robbie', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/GT9UfSqBz9o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:57:00'),
(11, 'Les Gardiens de la Galaxie', '2019-05-19 00:00:00', 'img/2.jpg', 'Peter Quill est un aventurier traqué par tous les chasseurs de primes pour avoir volé un mystérieux globe convoité par le puissant Ronan, dont les agissements menacent l\'univers tout entier. Lorsqu\'il découvre le véritable pouvoir de ce globe et la menace qui pèse sur la galaxie, il conclut une alliance fragile avec quatre extraterrestres disparates.', 'James Gunn', 'Chris Pratt', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/ry19UYQoAro\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '01:59:00'),
(12, 'The Amazing Spider-Man : Le Destin d\'un héros', '2019-05-16 00:00:00', 'img/10.jpg', 'Ce n\'est un secret pour personne que le combat le plus rude de Spider-Man est celui qu\'il mène contre lui-même en tentant de concilier la vie quotidienne de Peter Parker et les lourdes responsabilités de Spider-Man. Peter Parker va se rendre compte qu\'il fait face à un conflit de bien plus grande ampleur.', 'Marc Webb', 'Andrew Garfield, Emma Stone', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/9sytzAZL1l8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:04:00'),
(13, 'Aquaman', '2019-05-16 00:00:00', 'img/aquaman-box-office.jpg', 'fdgfsgfssdfs', 'James Wan', 'James Wan', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/150q5Qn4uNA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '02:03:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `FILM`
--
ALTER TABLE `FILM`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `FILM`
--
ALTER TABLE `FILM`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
