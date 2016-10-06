-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 25 Septembre 2016 à 17:53
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `my_cake`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id_comment`, `comment`, `post_id`, `user_id`) VALUES
(1, 'sqSQDqd', 6, 13),
(2, 'Qdqdq', 6, 13),
(3, 'TEST2', 6, 13),
(4, 'fqsfsqfqsfqs', 2, 1),
(5, 'dqsdqDQSFQS', 2, 1),
(6, 'QSGQSGSGQ', 2, 1),
(7, 'geqgsdgsd', 2, 1),
(8, 'zdzdazgeqgsdgsd', 2, 1),
(9, 'ryan la grosse merde qui "$oute ?jù!npo%', 2, 1),
(10, 'dsds', 2, 1),
(11, 'tedt', 2, 1),
(12, 'lol', 6, 1),
(13, 'lol', 5, 1),
(14, 'dqsdsqd', 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mailing`
--

CREATE TABLE `mailing` (
  `mail_id` int(11) NOT NULL,
  `object` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mailing`
--

INSERT INTO `mailing` (`mail_id`, `object`, `content`, `user_id`, `date`) VALUES
(1, 'za', 'zaaza', 0, '2016-09-24 21:13:11'),
(2, 'azdazdza', 'dzdzadazdza', 0, '2016-09-24 21:13:11'),
(3, 'sqsqsq', 'sqsqsqsqsqsqsq', 0, '2016-09-24 21:13:11'),
(4, 'test', 'test', 0, '2016-09-24 21:13:11'),
(5, 'test', 'test', 0, '2016-09-24 21:13:11'),
(6, 'dzdz', 'dzdzdzdzd', 0, '2016-09-24 21:13:11'),
(7, 'ssas', 'asasas', 0, '2016-09-24 21:13:11'),
(8, 'ssas', 'asasas', 0, '2016-09-24 21:13:11'),
(9, 'ssas', 'asasas', 0, '2016-09-24 21:13:11'),
(10, 'ssas', 'asasas', 0, '2016-09-24 21:13:11'),
(11, 'ssas', 'asasas', 0, '2016-09-24 21:13:11'),
(12, 'dzadazdaz', 'dazdazdazdza', 0, '2016-09-24 21:13:11'),
(13, 'mail', 'mail', 0, '2016-09-24 21:13:11'),
(14, 'dazdzdzdza', 'dzadazdazdzdzadza', 0, '2016-09-24 21:13:11'),
(15, 'toto', 'toto', 0, '2016-09-24 21:13:11'),
(16, 'toto', 'toto', 0, '2016-09-24 21:13:11'),
(17, 'epitech', 'epitech', 1, '2016-09-24 21:13:11'),
(18, 'nez bochée', 'nez bochée', 1, '2016-09-24 19:13:32'),
(19, 'multiple', 'multiple ', 1, '2016-09-24 19:14:16'),
(20, 'multiple', 'multiple ', 1, '2016-09-24 19:15:33'),
(21, 'douce', 'douce', 1, '2016-09-24 19:16:06'),
(22, 'spam', 'spam', 1, '2016-09-24 19:17:59'),
(23, 'dur', 'dur', 1, '2016-09-24 19:19:06'),
(24, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:20:02'),
(25, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:21:58'),
(26, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:22:50'),
(27, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:23:00'),
(28, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:23:01'),
(29, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:23:02'),
(30, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:23:21'),
(31, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:23:22'),
(32, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:24:31'),
(33, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:24:32'),
(34, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:25:03'),
(35, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:25:04'),
(36, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:25:39'),
(37, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:26:16'),
(38, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:26:18'),
(39, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:26:19'),
(40, 'je suis perdu ', 'je suis perdu ', 1, '2016-09-24 19:26:21'),
(41, 'dzdzd', 'zdzdzd', 1, '2016-09-24 19:26:50'),
(42, 'dzdzd', 'zdzdzd', 1, '2016-09-24 19:27:26'),
(43, 'last chance', 'last chance ', 1, '2016-09-24 19:27:48'),
(44, 'help ', 'je ui lll', 13, '2016-09-24 19:37:21'),
(45, 'dzdz', 'zdadzdza', 13, '2016-09-24 19:42:56'),
(46, 'dzzdaz', 'dazdazdz', 13, '2016-09-24 19:43:45'),
(47, 'je suis mom', 'je suis momo ', 7, '2016-09-24 19:54:25'),
(48, 'ddada', 'daad', 7, '2016-09-25 15:00:17'),
(49, 'qdsqdqsd', 'qsdsdqsdsq', 7, '2016-09-25 15:03:41'),
(50, 'IL EST ', '&ÈH46', 1, '2016-09-25 15:16:48'),
(51, 'dzdzdzdz', 'dzdzdzdz', 13, '2016-09-25 15:20:40'),
(52, 'dsfsp', 'p', 1, '2016-09-25 17:31:30'),
(53, 'fqfqsf', 'sfqfsfsqfqs', 22, '2016-09-25 15:32:34');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `title` varchar(55) CHARACTER SET utf8 NOT NULL,
  `contents` text CHARACTER SET utf8 NOT NULL,
  `tags` varchar(55) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id_post`, `created`, `updated`, `user_id`, `title`, `contents`, `tags`) VALUES
(1, '2016-09-21 16:27:26', '2016-09-21 16:27:26', 3, 'Robin est beau', 'pourquoi robin est il si beau ', '#beau'),
(2, '2016-09-21 16:30:32', '2016-09-21 16:30:32', 1, 'Hugo', 'Je sais pas pourquoi, mais je sais pour quoi Hugo est un fdp ... ', '#lol'),
(3, '2016-09-21 16:31:56', '2016-09-21 16:31:56', 3, 'test', 'test', 'test'),
(4, '2016-09-21 16:32:12', '2016-09-21 16:32:12', 3, 'Créer une table dan', 'tre : title\r\nf. C', 'c'),
(5, '2016-09-21 16:37:11', '2016-09-21 16:37:11', 1, 'momo', 'pourquoi momo a t il poser une lettre sur la table de hugo avec une capotte ', 'momo a changé '),
(6, '2016-09-21 16:37:52', '2016-09-21 16:37:52', 1, 'rayan', 'Un camarade de ma classe tient des propos négacionistes, et antisémite à mon égard, que dois-je faire', 'raciste'),
(7, '2016-09-23 15:28:30', '2016-09-23 15:28:30', 1, 'raz le bol', 'Ryan me prend de haut, il traine trop avec momo, il a beucoup trop changé ... nous ne le reconnaissons plus du tout ', 'ryan fait des blagues de geeek'),
(8, '2016-09-23 15:28:54', '2016-09-23 15:28:54', 1, 'hugo', 'Et oui toujour hugo, il rigole comme une âne ', 'laink a peté'),
(9, '2016-09-23 15:29:20', '2016-09-23 15:29:20', 1, 'pagination', 'ma pagination marche-t-lelle', 'indexation des pages '),
(10, '2016-09-24 15:29:10', '2016-09-24 15:29:10', 1, '', '', ''),
(11, '2016-09-24 15:30:54', '2016-09-24 15:30:54', 1, 'false', '', 'false'),
(12, '2016-09-24 15:31:40', '2016-09-24 15:31:40', 1, 'ddzdazdazd', '', 'azdzadzddazd'),
(13, '2016-09-24 15:32:25', '2016-09-24 15:32:25', 1, 'zdazdazdz', '', 'adazdzdza'),
(14, '2016-09-24 15:35:34', '2016-09-24 15:35:34', 1, 'les brians ', 'brian jonestown massacrer', 'bjm'),
(15, '2016-09-24 15:36:00', '2016-09-24 15:36:00', 1, 'toto', 'dzdazd', 'azdzadz'),
(16, '2016-09-24 15:37:10', '2016-09-24 15:37:10', 1, 'zezetze', '', 'zaffaz'),
(17, '2016-09-24 15:37:18', '2016-09-24 15:37:18', 1, 'dazdzadaz', '', 'zadazdzdzdazdaz'),
(18, '2016-09-24 15:38:44', '2016-09-24 15:38:44', 1, 'mmmm', '<p>mmmm</p>', 'mmm'),
(19, '2016-09-24 15:39:01', '2016-09-24 15:39:01', 1, 'momo', '<p><strong>momo</strong></p>', 'momo'),
(20, '2016-09-24 15:39:50', '2016-09-24 15:39:50', 1, 'test', '<p><em>test</em></p>', 'test'),
(21, '2016-09-24 15:40:20', '2016-09-24 15:40:20', 1, 'TOTO', '<p><em><strong>TOTO</strong></em></p>', 'TOTO'),
(22, '2016-09-24 15:41:07', '2016-09-24 15:41:07', 1, 'TOTO', '<p><em><strong>TOTO</strong></em></p>', 'TOTO'),
(23, '2016-09-24 15:44:28', '2016-09-24 15:44:28', 1, 'malade', '<p><strong>je suis malade</strong></p>', 'lll'),
(24, '2016-09-24 16:32:47', '2016-09-24 16:32:47', 1, 'for you', '<p><strong>qdazdazdaz</strong></p>', 'wnt'),
(25, '2016-09-24 17:29:02', '2016-09-24 17:29:02', 1, 'je vens de crée ', '<p>ma table mailing</p>', 'lo'),
(26, '2016-09-25 10:40:05', '2016-09-25 10:40:05', 7, 'Je suis passé bloggeur', '<p>gg &agrave; moi&nbsp;</p>', '#ki a msn '),
(28, '2016-09-25 10:45:56', '2016-09-25 10:45:56', 7, 'im from russia', '<p><span style="text-decoration: line-through; color: #99cc00;"><span style="text-decoration: underline;"><em><strong>cyka blyat</strong></em></span></span></p>', 'blyat');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `token` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`, `lastname`, `birthdate`, `email`, `admin`, `token`) VALUES
(1, 'root', '$2y$10$lx9T.a7dzseFtAMrok/CxOW91AnCpSDKeJGajbQx4aGCjNVbMFOge', 'root', 'root', '2016-09-21', 'toutoune_sk8@hotmail.com', 1, 1),
(5, 'roro', '$2y$10$O9twCQnU3rczWAoAKYTIzOy01.0vf0D5CoJRvajx7DQrzvbd4D6Pm', 'roro', 'roro', '2016-09-23', 'roro@msn.com', 2, 0),
(6, 'ryan', '$2y$10$co.6QLyWuuumNbf8gARche/pDloaaRXHUTGQSlSAsISoGvnf7T5hK', 'ryan', 'ryan', '2016-09-23', 'geoffrey.leborges@gmail.com', 1, 1),
(7, 'momo', '$2y$10$oUipudxiyfGCrH2QRNoD4O2.2/lTtp9YsaE4LQBa27K7.239z8enS', 'momo', 'momo', '2016-09-23', 'momo@momo.fr', 2, 1),
(8, 'dieu', '$2y$10$QxRxubBHil5kIQDEmj/L2OMYSpOmXz5Jt2FMtawfkIYIEoBLJF812', 'dieu', 'dieu', '2016-09-23', 'dieu@dieu.fr', 0, 1),
(9, 'toto', '$2y$10$4clEHoPDjqv320BC32Qql.eHMbVQwxpoAK2HirndjKOxnegePT38q', 'toto', 'toto', '2016-09-23', 'toto@toto.com', 0, 0),
(13, 'tata', '$2y$10$9g29BALB1uW.Y1lpRs3ugOIZYs9l4oGqgIW7nNzTtBKL9NY2mfQ3q', 'tata', 'tata', '2016-09-23', 'tata@msn.com', 0, 1),
(15, 'hugo', '$2y$10$7QaMT.HD5vwN5//d0npvWOf47eCqwUQhK3sJUlj5jRbmrEu2twkJe', 'hugo', 'hugo', '2016-09-23', 'hugo@msn.com', 0, 1),
(16, '("''(à)"''frnf', '$2y$10$lRFDhDCunT0PUs6NAgx0NuhJRfyxhqYe9sYbpwYjqe5kqmzYl9zqG', 'lol', 'lol', '2016-09-23', 'dzdzdzhugo@msn.com', 0, 1),
(17, 'çè_ç"èé_-é_çjfjosidghsdio', '$2y$10$uALR/LRf75xKFhtavSjE.epTsSQBp6rvypM0lw0k0xm.FCIEBMP6e', 'hiohiohio', 'hiohioh', '2016-09-23', 'hiohio@ezezez.com', 0, 1),
(18, 'p', '$2y$10$61niyvQ1NQXKVG7QqZczUenuRYv/qlYpGK9dCcpb6Y0uaqlHwqkyO', 'p', 'p', '2016-09-23', 'p@msn.com', 0, 1),
(19, '&é&éàçàççè''-''-è"_""éà&_<<<', '$2y$10$YbpM2LaPIjsTUKMr80vLyOSp5mbvYq25OQ7xBteNNYj4R6WaCxola', 'oioh', 'ioh', '2016-09-23', 'hiohio@ezezez.comzz', 0, 1),
(20, 'root<<<à''_ç))àé&&é"==)=', '$2y$10$T2CzsU4HS9Nt39cfh6LJI.Ln9CvHtym8pnsbY52Nqbdz/bQqM6UYW', 'ojojo', 'jojo', '2016-01-23', 'jojjojojo@joj.Fr', 0, 0),
(21, 'ppppp', '$2y$10$smtejF8Km94.DiEukSA9x.Rh.DCLiDIceGDmtrzVET/ai75Jks/6K', 'pppp', 'ppp', '2016-09-23', 'ppp@msn.com', 0, 1),
(22, 'patrick', '$2y$10$ykiEdilMAe5RVhcmibdO6uMSO2pJvswv2VcTaBo2PMCnR9OGmFSxu', 'patrick', 'patrick', '2016-09-23', 'SQSqSQSq@msn.com', 0, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Index pour la table `mailing`
--
ALTER TABLE `mailing`
  ADD PRIMARY KEY (`mail_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `mailing`
--
ALTER TABLE `mailing`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
