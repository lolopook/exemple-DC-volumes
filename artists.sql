-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 12 août 2024 à 14:37
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `artists`
--

-- --------------------------------------------------------

--
-- Structure de la table `MusicTitles`
--

CREATE TABLE `MusicTitles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `MusicTitles`
--

INSERT INTO `MusicTitles` (`id`, `title`, `artist`, `year`) VALUES
(1, 'Imagine', 'John Lennon', 1971),
(2, 'Bohemian Rhapsody', 'Queen', 1975),
(3, 'Stairway to Heaven', 'Led Zeppelin', 1971),
(4, 'Hotel California', 'Eagles', 1976),
(5, 'Thriller', 'Michael Jackson', 1982),
(6, 'Like a Prayer', 'Madonna', 1989),
(7, 'Smells Like Teen Spirit', 'Nirvana', 1991),
(8, 'Wonderwall', 'Oasis', 1995),
(9, 'Rolling in the Deep', 'Adele', 2010),
(10, 'Shape of You', 'Ed Sheeran', 2017);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `MusicTitles`
--
ALTER TABLE `MusicTitles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_title_artist` (`title`,`artist`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `MusicTitles`
--
ALTER TABLE `MusicTitles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
