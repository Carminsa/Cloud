-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 07 Août 2016 à 18:46
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Drive-Wac`
--

-- --------------------------------------------------------

--
-- Structure de la table `uploads`
--

CREATE TABLE `uploads` (
  `id_user` int(11) NOT NULL,
  `id_upload` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extansion` varchar(1) NOT NULL DEFAULT '.',
  `type` varchar(11) DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `size` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `private` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `uploads`
--

INSERT INTO `uploads` (`id_user`, `id_upload`, `name`, `extansion`, `type`, `path`, `size`, `date`, `private`) VALUES
(6, 1, 'mr-robot-s01e06-vostfr-hdtv', '.', 'torrent', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/6', 46316, '2016-08-05 15:17:40', 1),
(6, 2, 'mr-robot-s01e05-vostfr-hdtv', '.', 'torrent', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/6', 45476, '2016-08-05 15:17:40', 1),
(6, 3, 'mr-robot-s01e08-vostfr-hdtv', '.', 'torrent', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/6', 30631, '2016-08-05 15:17:40', 1),
(6, 4, 'mr-robot-s01e07-vostfr-hdtv', '.', 'torrent', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/6', 30531, '2016-08-05 15:17:41', 1),
(6, 5, 'hello', '.', 'jpg', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/6', 363187, '2016-08-05 15:18:23', 0),
(2, 6, 'bootstrap-sass-3.3.6.tar', '.', 'gz', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/2', 256317, '2016-08-05 16:49:45', 0),
(2, 7, 'angular.min (1)', '.', 'html', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/2', 160048, '2016-08-05 16:49:45', 0),
(2, 8, 'angular.min', '.', 'js', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/2', 160048, '2016-08-05 16:49:45', 0),
(2, 9, 'test', '.', 'JPG', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/2', 103121, '2016-08-05 16:49:45', 0),
(2, 10, 'test', '.', 'html', '/opt/lampp/htdocs/test/Rattrapage-Drive-Wac/asset/Upload/2', 14412, '2016-08-05 16:50:02', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `lastname` char(64) CHARACTER SET utf8 NOT NULL,
  `firstname` char(64) CHARACTER SET utf8 DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `inscription` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activated` int(1) NOT NULL DEFAULT '0',
  `admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `lastname`, `firstname`, `birthdate`, `mail`, `inscription`, `activated`, `admin`) VALUES
(1, 'root', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'root', 'root', '1111-11-11', 'root@msn.com', '2016-08-04 19:23:19', 0, 1),
(2, 'test', '0b9c2625dc21ef05f6ad4ddf47c5f203837aa32c', 'test', 'test', '1111-11-11', 'test@msn.com', '2016-08-04 19:23:19', 0, 0),
(3, 'toto', '0b9c2625dc21ef05f6ad4ddf47c5f203837aa32c', 'toto', 'toto', '1111-11-11', 'toto@mail.com', '2016-08-04 19:23:19', 1, 0),
(4, 'salut', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'pjoj', 'fsd', '1111-11-11', 's@msn.com', '2016-08-04 19:23:19', 0, 0),
(5, 'jonny', '505168e2a88049f340ba715e7f51053c5aa8eb50', 'john', 'last', '1111-11-11', 'fdp@msn.com', '2016-08-04 19:23:19', 0, 0),
(6, 'riri', 'c5fc49735664eda1baf387f3a450d88ae24d6d98', 'riri', 'riri', '1111-11-11', 'riri@msn.com', '2016-08-05 08:17:06', 0, 0),
(7, 'Maudit', 'fc3f19c2e3270f9b29f32b7a7ed80f5cef337dee', 'maudit', 'maudit', '1111-11-11', 'maudit@msn.com', '2016-08-07 16:22:55', 0, 0),
(8, 'sephire', '864010b41af9c48c5d24da64ff6796cb3e79e7ff', 'sephire', 'sephire', '1111-11-11', 'sephire@msn.com', '2016-08-07 16:24:29', 0, 0),
(9, 'pink', '$2y$10$ID3Uo0MgsMsJj8LLBkN5TeFtAloJOzQPgZ7fJHidh6kVySwqNlKi2', 'pink', 'pink', '1111-11-11', 'pink@msn.com', '2016-08-07 16:26:19', 0, 0),
(10, 'freedom', '$2y$10$yMPgp.ojHkXgp6TUOqRC5eSyKtr/JQCgb67EyrMWQnCj8wTA/cFei', 'freedom', 'freedom', '1111-11-11', 'freedom@msn.com', '2016-08-07 16:30:37', 0, 0),
(11, 'ragerouge', 'c6d15bf553bd7d3cd0b88c3e867b80a9f3fd5946', 'ppjp', 'joj', '1111-11-11', 'ffq@msn.com', '2016-08-07 16:33:12', 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id_upload`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
