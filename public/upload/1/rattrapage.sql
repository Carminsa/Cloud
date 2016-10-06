-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 08 Août 2016 à 16:32
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rattrapage`
--

-- --------------------------------------------------------

--
-- Structure de la table `Items`
--

CREATE TABLE `Items` (
  `id_item` int(11) NOT NULL,
  `id_perso` int(11) NOT NULL,
  `name_item` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `life` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `agility` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Items`
--

INSERT INTO `Items` (`id_item`, `id_perso`, `name_item`, `url`, `type`, `life`, `strength`, `agility`, `intelligence`) VALUES
(1, 1, 'helmet', '', '', 0, 0, 0, 0),
(2, 1, 'armor', '', '', 0, 0, 0, 0),
(3, 1, 'panties', '', 'panties', 500, 2, -1, 2),
(4, 1, 'weapon', '', '', 0, 0, 0, 0),
(5, 2, 'baton', 'vide', 'weapon', 2390, 12, 32, 23432),
(6, 3, 'baton', 'vide', 'weapon', 2390, 12, 32, 23432),
(7, 4, 'baton', 'vide', 'weapon', 2390, 12, 32, 23432);

-- --------------------------------------------------------

--
-- Structure de la table `Personnage`
--

CREATE TABLE `Personnage` (
  `id_perso` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `base_life` int(11) DEFAULT NULL,
  `base_strength` int(11) DEFAULT NULL,
  `base_agility` int(11) DEFAULT NULL,
  `base_intelligence` int(11) DEFAULT NULL,
  `helmet` int(11) NOT NULL,
  `armor` int(11) NOT NULL,
  `panties` int(11) NOT NULL,
  `weapon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Personnage`
--

INSERT INTO `Personnage` (`id_perso`, `name`, `base_life`, `base_strength`, `base_agility`, `base_intelligence`, `helmet`, `armor`, `panties`, `weapon`) VALUES
(1, 'rainbowdash', 500, 10, 10, 10, 1, 2, 3, 5),
(3, 'yes', 12, 23, 23, 23, 0, 0, 0, 0),
(4, 'toto', 12, 23, 23, 23, 0, 0, 0, 0),
(6, 'tata', 12, 23, 23, 23, 0, 0, 0, 0),
(7, 'tata', 12, 23, 23, 23, 1, 1, 1, 1),
(8, 'tata', 12, 23, 23, 23, 1, 2, 3, 5),
(9, 'tata', 12, 23, 23, 23, 1, 2, 3, 4),
(10, 'tata', 12, 23, 23, 23, 0, 0, 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id_item`);

--
-- Index pour la table `Personnage`
--
ALTER TABLE `Personnage`
  ADD PRIMARY KEY (`id_perso`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Items`
--
ALTER TABLE `Items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Personnage`
--
ALTER TABLE `Personnage`
  MODIFY `id_perso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
