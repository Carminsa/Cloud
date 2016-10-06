-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 20 Juillet 2016 à 10:34
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `meetic`
--

-- --------------------------------------------------------

--
-- Structure de la table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expeditor` varchar(255) NOT NULL,
  `recipent` text NOT NULL,
  `mails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mails`
--

INSERT INTO `mails` (`id`, `date`, `expeditor`, `recipent`, `mails`) VALUES
(40, '2016-07-16 22:03:46', '0', '6', 'test'),
(41, '2016-07-16 22:03:46', '0', '6', 'test'),
(42, '2016-07-16 22:03:46', '0', '6', 'test'),
(43, '2016-07-16 22:03:46', '0', '6', 'test'),
(44, '2016-07-16 22:03:46', '0', '6', 'gdgd'),
(45, '2016-07-16 22:03:46', 'lili', '1', 'salut bo gose'),
(46, '2016-07-16 22:03:46', 'lili', '1', 'salut bo gosse'),
(47, '2016-07-16 22:03:46', 'lili', '1', 'saot'),
(48, '2016-07-16 22:03:46', 'lili', '0', 'bite'),
(49, '2016-07-16 22:03:46', 'lili', 'root', 'dsdsds'),
(50, '2016-07-16 22:03:46', 'lili', 'root', 'je voulais te dire que je m''en vais'),
(51, '2016-07-16 22:04:05', 'lili', 'root', 'test'),
(52, '2016-07-16 22:05:39', 'root', 'lili', 'coquine va '),
(53, '2016-07-16 22:05:53', 'root', 'lili', 'salope'),
(54, '2016-07-16 22:06:28', 'root', 'lili', 'pute'),
(55, '2016-07-16 22:07:18', 'root', 'lili', 'grosse pute'),
(56, '2016-07-16 22:08:00', 'root', 'lili', 'sale pute'),
(57, '2016-07-16 22:08:36', 'root', 'lili', 'sale pute'),
(58, '2016-07-16 22:08:42', 'root', 'michel', 'couco toi '),
(59, '2016-07-16 22:08:59', 'root', 'lili', 'je t''attendsÃ  al soria az');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `date_birth` date NOT NULL,
  `inscription_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mail` varchar(150) NOT NULL,
  `confirmkey` varchar(255) NOT NULL,
  `confirmed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `members`
--

INSERT INTO `members` (`id`, `login`, `password`, `first_name`, `last_name`, `gender`, `city`, `department`, `region`, `country`, `date_birth`, `inscription_date`, `mail`, `confirmkey`, `confirmed`) VALUES
(1, 'root', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'roto', 'root', 'homme', 'Neuilly sur Seine', 'haut de seine', 'ile de france', 'France', '1990-11-11', '2016-07-17 12:51:39', 'root@msn.com', '29471873601', 1),
(2, 'jacqui', '$2y$10$/OC1sA0seiusnvDw0rdCWe0hAwsl0pt/14X1zSJEXLChGu/Xqd.q2', 'Jacques', 'Bernard', 'homme', 'Neuilly sur Seine', 'haut de seine', 'ile de france', 'France', '1957-11-11', '2016-07-16 12:33:07', 'd@msn.com', '76587698138', 1),
(3, 'michel', 'michel', 'michel', 'martin', 'homme', 'Perpignan', 'Languedoc-Roussillon-Midi-PyrÃ©nÃ©es', 'PyrÃ©nÃ©es-Orientale', 'France', '1980-11-11', '2016-07-16 20:55:42', 'rosddso@msn.com', '79023300790', 1),
(4, 'marta du 50', '$2y$10$XTw21Xavb54lT6OTnqMPHu550VNOMTuFUwwewckEr1NjMpSCutGzy', 'martine', 'coquine', 'homme', 'MÃ©rziere', 'Chateauroux', 'L''indre', 'France', '1976-11-11', '2016-07-16 12:33:07', 'fsdgsd@msn.com', '29345796588', 1),
(5, 'jacqueline', '$2y$10$gGz1EQkvnzc7sJNANDXP9uYcwXk2hPlKAbPHuJlIlEjGBolTqVMve', 'jacqueline', 'miheline', 'femme', 'Toulon', 'sud', 'paca', 'France', '1984-02-11', '2016-07-16 12:33:07', 'jdqpos@msn.com', '48153822474', 1),
(6, 'homme bo', '$2y$10$.fvbz4zKwDrxHRjoSHPoG.3Jp24eA/DTqkw1OwoKUMmm7zPfGtEiu', 'bernard', 'la fritte', 'homme', 'Toulon', 'Sud', 'Paca', 'France', '1087-11-11', '2016-07-16 12:33:07', 'fsjfs@msn.com', '27878165572', 1),
(7, 'vielle', '$2y$10$OxZEGvlT3imYoUW2p79Ize1B/1iojjFFqS6MHRwASXx//xXd5W/Ke', 'giselle', 'kiut', 'homme', 'Kremlin Bicetre', 'val de marne', 'ile de france', 'France', '1967-11-11', '2016-07-16 12:36:00', 'qsdqdd@msn.com', '07332937722', 1),
(8, 'lili', 'b419e450efc447f700707dd63cfce1b5687f5e6d', 'liliane', 'lol', 'femme', 'Paris', 'ile de france', 'ile de france', 'France', '1987-11-11', '2016-07-17 12:52:18', 'leorfqsfqs.g@gmail.co', '28484432481', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
