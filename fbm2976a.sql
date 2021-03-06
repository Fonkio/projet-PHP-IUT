-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 06 Janvier 2019 à 18:05
-- Version du serveur :  5.7.21-1
-- Version de PHP :  5.6.26-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fbm2976a`
--

-- --------------------------------------------------------

--
-- Structure de la table `identifiant`
--

CREATE TABLE `identifiant` (
  `id` int(11) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `identifiant`
--

INSERT INTO `identifiant` (`id`, `Login`, `Mdp`) VALUES
(1, 'lapin', '$2y$10$Jy2WphmhlRJWkZlBh.Va/.9/BNnMxS/rmfNOhdNNVu9e.qeTTDxfm');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `NumLicence` int(11) NOT NULL,
  `Nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DateDeNaissance` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Taille` smallint(11) DEFAULT NULL,
  `Poids` smallint(3) DEFAULT NULL,
  `PostePref` enum('1','2','3') COLLATE utf8_unicode_ci DEFAULT NULL,
  `Statut` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `extPhoto` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `joueur`
--

INSERT INTO `joueur` (`NumLicence`, `Nom`, `Prenom`, `DateDeNaissance`, `Taille`, `Poids`, `PostePref`, `Statut`, `extPhoto`) VALUES
(111, 'Fabre', 'Maxime', '0001-05-20', 111, 111, '1', '1', ''),
(154, 'Mou', 'Jean', '20/10/1999', 180, 78, '1', '1', ''),
(156, '987', 'dfl,', '75', 2, 63, '3', '1', ''),
(222, 'Salvagnac', 'Maxime', '2020-02-20', 1465, 546, '2', '3', ''),
(516, '55g', 'zpkf', '622622', 652, 656, '2', '1', ''),
(789, 'azert', 'ssg', '784', 65, 62, '3', '1', ''),
(5414, 'lhzfd', 'ssg', '784', 65, 54, '1', '1', ''),
(11521, 'efnkn', 'mdjsc', '2018-01-01', 111, 111, '1', '1', ''),
(65465, 'dff', 'rf', '2018-01-01', 13, 24, '3', '3', ''),
(66626, 'Test', 'test', '10/12/2010', 12, 12, '1', '1', 'jpg'),
(541444, 'lhzfd', 'ssg', '784', 65, 54, '1', '1', '');

-- --------------------------------------------------------

--
-- Structure de la table `participerremplacant`
--

CREATE TABLE `participerremplacant` (
  `NumLicence` int(11) NOT NULL,
  `IdRencontre` int(11) NOT NULL,
  `Notation` enum('1','2','3','4','5') DEFAULT NULL,
  `Role` enum('1','2','3') NOT NULL,
  `Commentaire` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `participertitulaire`
--

CREATE TABLE `participertitulaire` (
  `NumLicence` int(11) NOT NULL,
  `IdRencontre` int(11) NOT NULL,
  `Notation` enum('1','2','3','4','5') DEFAULT NULL,
  `Role` enum('1','2','3','') NOT NULL,
  `Commentaire` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE `rencontre` (
  `IdRencontre` int(11) NOT NULL,
  `DateRencontre` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `LieuRencontre` enum('Domicile','Exterieur') CHARACTER SET utf8 NOT NULL,
  `EquipeAdverse` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ResultatEquipe` smallint(6) DEFAULT NULL,
  `ResultatAdverse` smallint(6) DEFAULT NULL,
  `Heure` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `identifiant`
--
ALTER TABLE `identifiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`NumLicence`);

--
-- Index pour la table `participerremplacant`
--
ALTER TABLE `participerremplacant`
  ADD PRIMARY KEY (`NumLicence`,`IdRencontre`);

--
-- Index pour la table `participertitulaire`
--
ALTER TABLE `participertitulaire`
  ADD PRIMARY KEY (`NumLicence`,`IdRencontre`);

--
-- Index pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD PRIMARY KEY (`IdRencontre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `identifiant`
--
ALTER TABLE `identifiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `rencontre`
--
ALTER TABLE `rencontre`
  MODIFY `IdRencontre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
