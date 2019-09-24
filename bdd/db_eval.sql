-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 24 sep. 2019 à 03:27
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_eval`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `content`, `status`) VALUES
(1, 13, 'Le Lorem Ipsum est simplement du faux', 0),
(2, 2, 'Le Lorem Ipsum est simplement du faux', 1),
(3, 9, 'Le Lorem Ipsum est simplement du faux', 0),
(4, 2, 'Le Lorem Ipsum est simplement du faux', 1),
(5, 8, 'Le Lorem Ipsum est simplement du faux', 0),
(6, 7, 'Le Lorem Ipsum est simplement du faux', 1),
(7, 5, 'Le Lorem Ipsum est simplement du faux', 1),
(8, 17, 'Le Lorem Ipsum est simplement du faux', 1),
(9, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(10, 10, 'Le Lorem Ipsum est simplement du faux', 0),
(11, 7, 'Le Lorem Ipsum est simplement du faux', 1),
(12, 18, 'Le Lorem Ipsum est simplement du faux', 1),
(14, 6, 'Le Lorem Ipsum est simplement du faux', 1),
(15, 4, 'Le Lorem Ipsum est simplement du faux', 0),
(16, 4, 'Le Lorem Ipsum est simplement du faux', 0),
(17, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(18, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(19, 11, 'Le Lorem Ipsum est simplement du faux', 1),
(20, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(21, 14, 'Le Lorem Ipsum est simplement du faux', 1),
(22, 13, 'Le Lorem Ipsum est simplement du faux', 1),
(23, 16, 'Le Lorem Ipsum est simplement du faux', 0),
(24, 7, 'Le Lorem Ipsum est simplement du faux', 1),
(26, 14, 'Le Lorem Ipsum est simplement du faux', 1),
(27, 8, 'Le Lorem Ipsum est simplement du faux', 1),
(28, 10, 'Le Lorem Ipsum est simplement du faux', 0),
(29, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(30, 7, 'Le Lorem Ipsum est simplement du faux', 0),
(31, 1, 'Le Lorem Ipsum est simplement du faux', 1),
(32, 16, 'Le Lorem Ipsum est simplement du faux', 1),
(33, 16, 'Le Lorem Ipsum est simplement du faux', 1),
(34, 1, 'Le Lorem Ipsum est simplement du faux', 1),
(35, 9, 'Le Lorem Ipsum est simplement du faux', 0),
(37, 5, 'Le Lorem Ipsum est simplement du faux', 0),
(38, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(39, 12, 'Le Lorem Ipsum est simplement du faux', 1),
(40, 17, 'Le Lorem Ipsum est simplement du faux', 0),
(41, 12, 'Le Lorem Ipsum est simplement du faux', 1),
(42, 5, 'Le Lorem Ipsum est simplement du faux', 1),
(43, 3, 'Le Lorem Ipsum est simplement du faux', 1),
(44, 2, 'Le Lorem Ipsum est simplement du faux', 1),
(45, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(46, 18, 'Le Lorem Ipsum est simplement du faux', 0),
(47, 14, 'Le Lorem Ipsum est simplement du faux', 1),
(48, 13, 'Le Lorem Ipsum est simplement du faux', 1),
(49, 3, 'Le Lorem Ipsum est simplement du faux', 1),
(50, 14, 'Le Lorem Ipsum est simplement du faux', 1),
(51, 4, 'Le Lorem Ipsum est simplement du faux', 0),
(52, 2, 'Le Lorem Ipsum est simplement du faux', 1),
(53, 12, 'Le Lorem Ipsum est simplement du faux', 1),
(54, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(55, 4, 'Le Lorem Ipsum est simplement du faux', 1),
(56, 1, 'Le Lorem Ipsum est simplement du faux', 1),
(57, 5, 'Le Lorem Ipsum est simplement du faux', 1),
(58, 9, 'Le Lorem Ipsum est simplement du faux', 0),
(59, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(60, 1, 'Le Lorem Ipsum est simplement du faux', 0),
(61, 4, 'Le Lorem Ipsum est simplement du faux', 1),
(62, 4, 'Le Lorem Ipsum est simplement du faux', 1),
(63, 19, 'Le Lorem Ipsum est simplement du faux', 1),
(64, 8, 'Le Lorem Ipsum est simplement du faux', 1),
(65, 2, 'Le Lorem Ipsum est simplement du faux', 1),
(66, 7, 'Le Lorem Ipsum est simplement du faux', 1),
(67, 1, 'Le Lorem Ipsum est simplement du faux', 1),
(68, 8, 'Le Lorem Ipsum est simplement du faux', 1),
(69, 2, 'Le Lorem Ipsum est simplement du faux', 1),
(70, 13, 'Le Lorem Ipsum est simplement du faux', 0),
(71, 17, 'Le Lorem Ipsum est simplement du faux', 1),
(72, 19, 'Le Lorem Ipsum est simplement du faux', 1),
(73, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(74, 20, 'Le Lorem Ipsum est simplement du faux', 1),
(75, 16, 'Le Lorem Ipsum est simplement du faux', 1),
(76, 5, 'Le Lorem Ipsum est simplement du faux', 1),
(77, 6, 'Le Lorem Ipsum est simplement du faux', 1),
(78, 10, 'Le Lorem Ipsum est simplement du faux', 1),
(79, 6, 'Le Lorem Ipsum est simplement du faux', 1),
(80, 15, 'Le Lorem Ipsum est simplement du faux', 1),
(81, 13, 'Le Lorem Ipsum est simplement du faux', 1),
(82, 7, 'Le Lorem Ipsum est simplement du faux', 1),
(83, 11, 'Le Lorem Ipsum est simplement du faux', 0),
(84, 8, 'Le Lorem Ipsum est simplement du faux', 1),
(85, 5, 'Le Lorem Ipsum est simplement du faux', 1),
(86, 18, 'Le Lorem Ipsum est simplement du faux', 1),
(87, 12, 'Le Lorem Ipsum est simplement du faux', 1),
(88, 13, 'Le Lorem Ipsum est simplement du faux', 1),
(89, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(90, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(91, 3, 'Le Lorem Ipsum est simplement du faux', 1),
(92, 12, 'Le Lorem Ipsum est simplement du faux', 1),
(93, 5, 'Le Lorem Ipsum est simplement du faux', 1),
(94, 6, 'Le Lorem Ipsum est simplement du faux', 1),
(95, 4, 'Le Lorem Ipsum est simplement du faux', 1),
(96, 8, 'Le Lorem Ipsum est simplement du faux', 1),
(97, 15, 'Le Lorem Ipsum est simplement du faux', 1),
(98, 17, 'Le Lorem Ipsum est simplement du faux', 1),
(99, 9, 'Le Lorem Ipsum est simplement du faux', 1),
(100, 12, 'Le Lorem Ipsum est simplement du faux', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190923140204', '2019-09-23 14:05:34');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `user_id`, `title`, `content`) VALUES
(1, 1, 'title0', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression0'),
(2, 2, 'title1', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression1'),
(3, 3, 'title2', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression2'),
(4, 1, 'title3', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression3'),
(5, 1, 'title4', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression4'),
(6, 4, 'title5', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression5'),
(7, 2, 'title6', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression6'),
(8, 1, 'title7', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression7'),
(9, 3, 'title8', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression8'),
(10, 4, 'title9', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression9'),
(11, 5, 'title10', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression10'),
(12, 5, 'title11', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression11'),
(13, 1, 'title12', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression12'),
(14, 5, 'title13', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression13'),
(15, 2, 'title14', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression14'),
(16, 2, 'title15', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression15'),
(17, 4, 'title16', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression16'),
(18, 1, 'title17', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression17'),
(19, 3, 'title18', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression18'),
(20, 1, 'title19', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression19');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`) VALUES
(1, 'Quentin'),
(2, 'Adama'),
(3, 'Alex'),
(4, 'Mouhamed'),
(5, 'Cheikh');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
