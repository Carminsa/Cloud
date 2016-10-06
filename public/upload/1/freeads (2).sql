-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 02 Octobre 2016 à 19:39
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `freeads`
--

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

CREATE TABLE `ads` (
  `id_ads` int(11) NOT NULL,
  `title` varchar(60) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `pictures` text CHARACTER SET utf8 NOT NULL,
  `pictures2` text,
  `pictures3` text,
  `price` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `place` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ads`
--

INSERT INTO `ads` (`id_ads`, `title`, `description`, `pictures`, `pictures2`, `pictures3`, `price`, `date`, `id`, `type`, `place`) VALUES
(2, 'Poster de CArlos', 'bob le calamar', 'https://pbs.twimg.com/profile_images/572733330571808768/-EPh47xl.jpeg', NULL, NULL, 23, '2016-09-30 11:34:58', 4, 'Jeux', '67 - Bas-Rhin'),
(6, 'Bob l''éponge', 'Magnifique', 'http://www.webdesign-tutoriaux.com/images/130110155311-Charlotte_Fromentin_tutoriel_bob_leponge_alife_photoshop_illustrator.png', '', '', 12, '2016-09-30 15:16:17', 5, 'Motors', '43 - Haute-Loire'),
(7, 'Krabs', 'poster de krabs le plus radin des crabes, comme ryan lool, #mdr # pllus de rescpect', 'http://static.comicvine.com/uploads/original/3/37908/875420-mr_krabs_1_.jpg', '', '', 400, '2016-09-30 15:39:11', 5, 'Jeux', '67 - Bas-Rhin'),
(14, 'Patrick', 'hfoqsphfqspofhqposfhqspofjqspohfqspohfqspofhqspofq', 'http://vignette2.wikia.nocookie.net/bob-leponge/images/3/34/Image.png/revision/latest?cb=20151124110838&path-prefix=fr', 'http://vignette2.wikia.nocookie.net/bob-leponge/images/3/34/Image.png/revision/latest?cb=20151124110838&path-prefix=fr', '', 400, '2016-09-30 16:17:11', 5, 'Motors', '15 - Cantal'),
(24, 'Golf 3', 'Je vends ma golf 3 car j''en ai marre qu''on me prenne pour un kéké lel', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/VW_Golf_III_Movie.JPG/280px-VW_Golf_III_Movie.JPG', '', '', 1900, '2016-10-01 18:23:23', 5, 'Voitures', '15 - Cantal'),
(25, 'Vieu tableau retrouvé', 'Bonjour j''aimerai me débarrasser de ce vieu tableau que j''ai retrouvé dans mon grenier', 'https://download.vikidia.org/vikidia/fr/images/thumb/1/13/La_gioconda.jpg/200px-La_gioconda.jpg', '', '', 10, '2016-10-01 18:55:53', 5, 'Loisirs', '18 - Cher'),
(26, 'Femme poilu', 'je vends ma femme poilu car je n''aime pas trop sa personnalité', 'http://i2.cdscdn.com/pdt2/4/0/9/1/700x700/smi3663609271409/rw/poupee-gonflable.jpg', '', '', 1, '2016-10-01 18:59:58', 5, 'Autre', 'Lot-et-Garonne'),
(27, 'ifoune', 'Je vends ce magnifique ifoune', 'http://i82.servimg.com/u/f82/17/41/32/64/steamp10.jpg', '', '', 59, '2016-10-02 17:28:31', 1, 'Utilitaires', '15 - Cantal'),
(28, 'vends logo addidas', 'Super mode en Russie, le logo addidas fait fureur', 'http://fs105.www.ex.ua/show/6372966/6372966.png?800', '', '', 50, '2016-10-02 17:31:03', 1, 'Stylisme', '03 - Allier');

-- --------------------------------------------------------

--
-- Structure de la table `mails`
--

CREATE TABLE `mails` (
  `id_mails` int(11) NOT NULL,
  `id_expeditor` int(11) NOT NULL,
  `id_recipent` int(11) NOT NULL,
  `content` text NOT NULL,
  `see` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mails`
--

INSERT INTO `mails` (`id_mails`, `id_expeditor`, `id_recipent`, `content`, `see`) VALUES
(1, 1, 1, 'message envoye par toto pour root', 1),
(5, 1, 9, 'etest', 0),
(6, 1, 1, 'karma poloce', 1),
(7, 11, 1, 'ddsdsd', 0),
(8, 1, 7, 'bonjour', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_28_083721_create_user_activations_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `activated`) VALUES
(1, 'root', 'root@msn.com', '$2y$10$GFtI1QV0VPABQ3De9xGucORwTgM226jq20QB4PcwY4TPCPugxIgGu', 'ehyPiWsp1xsGy71ilixXsgrTOas3GSUezy6lJFG1s4TILRnwI1uOwf2x1kGL', '2016-09-30 11:23:38', '2016-10-02 15:38:11', 1),
(2, 'momo', 'momo@momo.fr', '$2y$10$wy7VSmq8Nd46ymi8WezUBeBiQP6vendsMD8L5zXF3Pb01BhYfiBWO', NULL, '2016-10-02 10:20:14', '2016-10-02 10:20:14', 1),
(11, 'clamp', 'clamp@msn.com', '$2y$10$rraOCFp/5Xs.qrYT6yDu2ugNa3z84orjTjrZF/rB1X4dR2qgK3.8y', NULL, '2016-10-02 10:21:23', '2016-10-02 10:21:23', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_activations`
--

CREATE TABLE `user_activations` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_activations`
--

INSERT INTO `user_activations` (`user_id`, `token`, `created_at`) VALUES
(42, '0db73ea5f6d76abc7d585935012f9514a941986a02a6567e6beb63c2e9f57488', '2016-09-28 06:57:42'),
(43, '2a33db82b619f533c76690752238e931fd9f96e40a890e46bb8f5c8665570084', '2016-09-28 07:01:49'),
(2, '235480cbf7be323f1b6ab4e918cfb12d7567bf64fda73675f9a93fa63d4b10b8', '2016-09-28 10:36:22'),
(3, '374593242e385fb1503605a834a3acb15e09c18c74e1eb9e625a08ccdc43a1db', '2016-09-28 10:40:36'),
(4, 'cd27cafe68ae4738a658f09e2a76d057fc47cfaa55c0ac9a2cacc215cafe46dc', '2016-09-30 06:34:24'),
(5, '7c776b1d6def985a5dd8f9f7c38563090d435d5bf7a862dcbefd18e94170937d', '2016-09-30 11:23:39'),
(6, '8cc4d7daf7749ab3df2fbc877e7c4950b4ed7a4b46ca9d60ed6cdbc4fbb1bd55', '2016-10-02 10:20:14'),
(7, 'e7f7451406f596e7edb407056c57b23f55f7d02f5d76a78eda3ae7d845ab5c95', '2016-10-02 10:20:31'),
(8, 'faa7949a1f7d53244d7fac290215828ebfc769b5bb2927af5d85a365d131bacc', '2016-10-02 10:20:40'),
(9, '8941229681f9fe593ab015f06e4671475d18cd986814f72604875ef291cc5368', '2016-10-02 10:20:51'),
(10, 'a57f235cbbff589ca20bf175ecc916a90c37e5c283bb4501448abb80e153e610', '2016-10-02 10:21:07'),
(11, '312d76b44d6ae0ea7bc19a7d55495c862d02f1c984a0c9a1bcc98d30ebfd142c', '2016-10-02 10:21:23');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id_ads`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id_mails`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `name_2` (`name`),
  ADD KEY `name` (`name`) USING BTREE,
  ADD KEY `email_2` (`email`) USING BTREE,
  ADD KEY `users_email_unique` (`email`) USING BTREE;

--
-- Index pour la table `user_activations`
--
ALTER TABLE `user_activations`
  ADD KEY `user_activations_token_index` (`token`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ads`
--
ALTER TABLE `ads`
  MODIFY `id_ads` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `mails`
--
ALTER TABLE `mails`
  MODIFY `id_mails` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
