-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 09 Octobre 2016 à 20:26
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `laravel_cloud`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_mail` int(11) NOT NULL,
  `object` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id_mail`, `object`, `content`, `date`, `user_id`) VALUES
(1, 'test', '                test', '2016-10-07 14:06:40', 2),
(2, 'tests2', 'test2                ', '2016-10-07 14:13:16', 2),
(6, 'zegzgze', '                gzegze', '2016-10-07 14:54:23', 6),
(14, 'Help ', 'Bonjour je suis perdu je m''apelle momo                ', '2016-10-07 16:03:30', 6),
(15, 'hahahahah', 'je suis un bolosse je m''appèle ryan et je génére des malaises comme un crud #lol                ', '2016-10-07 16:05:48', 9),
(40, 'toto', 'toto\r\n                ', '2016-10-07 17:23:38', 12),
(41, 'tata', 'tata                ', '2016-10-07 17:23:43', 12),
(47, 'dazdazdaz', '                azdazdazdaz', '2016-10-07 17:38:32', 1),
(48, 'ddddddddd', '                dddddddddd', '2016-10-07 17:38:35', 1),
(50, 'toto', 'toto                ', '2016-10-08 10:43:13', 1),
(55, 'dqsjqspodqso', 'oioqsfhqsdo\r\n                ', '2016-10-08 10:54:51', 9),
(56, 'dazdnkzdnzoai', 'ihqiofhioqe                ', '2016-10-08 10:54:55', 9),
(57, 'dqshdioqshqsio', 'qsifhqsiofhioqs                ', '2016-10-08 10:55:01', 9),
(58, 'dqshdioqshqsio', 'qsifhqsiofhioqs                ', '2016-10-08 10:55:03', 9);

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
('2014_10_12_100000_create_password_resets_table', 1);

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
-- Structure de la table `uploads`
--

CREATE TABLE `uploads` (
  `id_upload` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `size` int(11) NOT NULL,
  `mime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `private` int(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `uploads`
--

INSERT INTO `uploads` (`id_upload`, `name`, `path`, `size`, `mime`, `date`, `private`, `user_id`) VALUES
(93, 'IMG_2304.JPG', 'file/6/images/IMG_2304.JPG', 103121, 'image/jpeg', '2016-10-07 18:59:01', 0, 6),
(101, 'Death Grips - Get Got.mp3', 'file/1/musics/Death Grips - Get Got.mp3', 2752331, 'audio/mpeg', '2016-10-07 19:36:53', 0, 1),
(102, 'the-brian-jonestown-massacre-bsa.mp4', 'file/1/movies/the-brian-jonestown-massacre-bsa.mp4', 5938846, 'video/mp4', '2016-10-07 19:50:08', 0, 1),
(103, 'sky-lights-space-dark.jpg', 'file/1/images/sky-lights-space-dark.jpg', 363879, 'image/jpeg', '2016-10-07 19:51:10', 0, 1),
(104, 'inspire_go.sql', 'file/1/other/inspire_go.sql', 2888, 'text/plain', '2016-10-08 18:04:01', 0, 1),
(105, 'Sans titre.pdf', 'file/1/other/Sans titre.pdf', 123981, 'application/pdf', '2016-10-08 18:04:49', 0, 1),
(107, 'gas_planet-wallpaper-1920x1080.jpg', 'file/1/images/gas_planet-wallpaper-1920x1080.jpg', 245554, 'image/jpeg', '2016-10-09 17:45:29', 0, 1),
(110, 'IMG_2328.PNG', 'file/11/other/IMG_2328.PNG', 1424079, 'image/png', '2016-10-09 17:56:38', 0, 11),
(111, 'toto', 'file/11/images/fire_atronachs_lair-wallpaper-1920x1080.jpg', 416474, 'image/jpeg', '2016-10-09 18:23:05', 0, 11);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `birthdate`, `remember_token`, `created_at`, `updated_at`, `admin`, `active`) VALUES
(1, 'root', 'root', 'root', 'geoffrey.leborges@gmail.com', '$2y$10$mF/7Sc/BAsvxrCv4DszSR.FCAzy9ZnhbGYOunIDMrtUT6GU1hz/5.', '0000-00-00', '962Bknhzgs7WeU3mpaUuD37xQJEARFqzIyHXcBkDrJtR7PyYunhIxQwTHIcC', '2016-10-03 10:15:06', '2016-10-09 15:46:40', 1, 1),
(2, 'toto', 'toto', 'toto', 'tototo@msn.com', '$2y$10$c7xoXEdzXoHqaGuMBIoeteMUeLILwxYxhJR117NHftTuB9fQyN2T6', '0000-00-00', 'uFK0YYFKWgYL7nMy7AbRFSnQIvRSQM8BL0P49swIxBBaIPvtZEsa7pJz9LHu', '2016-10-03 10:16:24', '2016-10-09 15:43:43', 0, 0),
(4, 'tutu', 'tutu', 'tutu', 'tutu@msn.Com', '$2y$10$E05JUC.ms/WOLzNskY7qnOAj3Rft5pcbnQ41YG5qNnxsNbkEQKNLO', '1111-11-11', 'YFcEzI0pxBHyl5kIDJPrzDRBV3HgkRRGAhLetE8gUUwGCnv4ZMGAh6m0DZu4', '2016-10-03 11:14:02', '2016-10-03 11:14:28', 0, 1),
(5, 'jojo', 'jojo', 'jojo', 'jojo@msn.com', '$2y$10$mc3gOY8hNYS3Oyoq/GhXju7gxE3HEwwa3LIujpVrhh/SpJG.keVH2', '1111-11-11', 'na4DCIPuY7jLONzse1t0uoz8C8DBitQqp9WRdSuZY33FAfhYxKyNWZ6nwi7L', '2016-10-06 11:31:19', '2016-10-06 11:31:21', 0, 1),
(6, 'momo', 'momo', 'momo', 'toutoune_sk8@hotmail.com', '$2y$10$DXDt3ZSk15PAICnUrt.lY.VqVxDK/7cuThrSd8Q78CtaC2F71kdFC', '1111-11-11', 'SdeCuZLOX7V5MKyF1ebuIuacW6zE0TS1pIZufLnSUadWpj2Zf67jKqGG6PtR', '2016-10-06 11:31:42', '2016-10-09 15:43:31', 1, 1),
(7, 'rita', 'rita', 'rita', 'rita@msn.com', '$2y$10$wFtr49tZ2RwErOvhaqJsoOFutfxaK/Vfvy5X1K81lsa6m8q.Hj.se', '1111-11-11', 'zUUHlPTEURm7zlzwLZGWK6f3CgKXLWEIzNyBUhTrPKKjCZlYX4f1rqug4IZR', '2016-10-06 11:31:59', '2016-10-06 11:32:01', 0, 1),
(8, 'mitsouko', 'mitsouko', 'mitsouko', 'mitsouko@msn.com', '$2y$10$XOtJxuvD5K1MZgmSdBODxeamyTFj6.yqSiARy5MYPEzw6noZHH5Ii', '1111-11-11', '46RnNyzywxiY0KntqwrfrJVhWYQr7uWpN46SQkrzOWRiFNeJUQ3sGGuwIVtC', '2016-10-06 11:32:20', '2016-10-06 11:32:22', 0, 1),
(9, 'ryan', 'ryan', 'ryan', 'ryan@msn.com', '$2y$10$R8CQVrwXcHYNQ1jgXFS0b.JOku87V28U00x2jYUBkTt0FmiXC9Zqm', '1111-11-11', 'xY2dzmgmynfy4rOsAOfdbl2jB93xVMNXXwts2huIY6tmyckF1OY8mX3dA9PF', '2016-10-06 11:32:49', '2016-10-08 07:04:31', 0, 1),
(10, 'hugo', 'hugo', 'hugo', 'hugo@msn.com', '$2y$10$FvmDevavEYeYuHKtceRZzu8yXK07o8eVy/qBzF2wE4GmGplWxfXeS', '1111-11-11', 'bdXoUDQVa7MdEh9HKlzg8mqh5RvBqv4Uw77ptaCtNAPDClM0ryuYuxax0WXn', '2016-10-06 11:33:10', '2016-10-09 15:48:39', 0, 1),
(11, 'grace', 'grace', 'grace', 'grace@msn.com', '$2y$10$UsTZtpMjNLK9RE3Vxn/taeJh0JZ9aN0Fgy2O5AwCYNk7HZsXLoJua', '1111-11-11', 'GvTohIYk7BcJhVpJOwnzppcSSBHZ5JV2BKzNpSa4ApohIbTUQEEItOnLX19e', '2016-10-06 11:51:25', '2016-10-06 11:51:29', 0, 1),
(12, 'bella', 'bella', 'bella', 'bella@msn.com', '$2y$10$oYYekZ34w7j8pMPoVtuJ0.x0.S/abifcRDKGxcittqYvzZyzpC6zm', '1111-11-11', 'zY3DCiQIDg0qllFSjksoTOy3JIyqd4uQK58YdBR2iG3xHf26xwKKau2Y7FSo', '2016-10-06 11:51:46', '2016-10-07 13:24:15', 0, 1),
(13, 'fred', 'fred', 'fred', 'fred@msn.com', '$2y$10$f9eY3ZHoa7hrL4f4JlaQ4uwKNnwACpzykFMaIYUPaJx8VdyDn8t3m', '1111-11-11', 'kXnyKCVzkaINONTCpahvXvzT7gkxohiSqUS3XgkrPxFIL6eJZJZfUF43wfTj', '2016-10-06 11:52:14', '2016-10-06 11:52:16', 0, 0),
(14, 'andy', 'andy', 'andy', 'andy@msn.com', '$2y$10$tRvNdgiEDHvJfkxVnn78leq3BdE.D1YiebKQv97XV.uWyC7YWKs8i', '1111-11-11', 'z69WMKvlLZvy8QjARZFPNRC9ui5ZRUvJNOjusQg4EB4jgbDttIW0b2J3ND8e', '2016-10-06 11:52:35', '2016-10-06 11:52:37', 0, 0),
(15, 'fusée', 'fusée', 'fusée', 'fusee@msn.com', '$2y$10$JnYmxePUqxyJDox7GJvJ/OI1I7fhHXgwR.pml7dM779RFmKylGEtW', '1111-11-11', 'eJZTz4zaWiRPlKJiY3nPPb2ptAY86X5Oitq00OcDDAVxQMR1y04yxWrOvWaq', '2016-10-06 11:53:39', '2016-10-06 11:53:42', 0, 1),
(16, 'norberg', 'norberg', 'norberg', 'toutou@msn.com', '$2y$10$qRtiAD.WineF3fhkrQKZkee5OmFUPcw5tT9GGAz69UgXehn3pNGPO', '1111-11-11', 'tiKX3mUthPoSVdTH3Z14tuWFDCfxuc4uoRvFChyPNzn0x9FQ7EDfXmukEibY', '2016-10-06 15:15:25', '2016-10-06 15:15:27', 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_mail`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id_upload`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
