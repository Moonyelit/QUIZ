-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 18 fév. 2025 à 15:59
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quiz_404`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_right` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DADD4A251E27F6BF` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `is_right`) VALUES
(81, 1, 'Pong', 1),
(82, 1, 'Pac-Man', 0),
(83, 1, 'Tetris', 0),
(84, 1, 'Space Invaders', 0),
(85, 2, 'Zelda', 0),
(86, 2, 'Ganondorf', 0),
(87, 2, 'Link', 1),
(88, 2, 'Epona', 0),
(89, 3, 'Bethesda', 0),
(90, 3, 'CD Projekt Red', 1),
(91, 3, 'Ubisoft', 0),
(92, 3, 'Square Enix', 0),
(93, 4, 'Half-Life', 0),
(94, 4, 'Portal', 1),
(95, 4, 'Doom', 0),
(96, 4, 'BioShock', 0),
(97, 5, 'Master Chief', 1),
(98, 5, 'Solid Snake', 0),
(99, 5, 'Doomguy', 0),
(100, 5, 'Samus Aran', 0),
(101, 6, 'Fortnite', 0),
(102, 6, 'PUBG', 1),
(103, 6, 'Apex Legends', 0),
(104, 6, 'Call of Duty Warzone', 0),
(105, 7, 'Pikachu', 0),
(106, 7, 'Salamèche', 0),
(107, 7, 'Bulbizarre', 1),
(108, 7, 'Carapuce', 0),
(109, 8, 'Bowser', 1),
(110, 8, 'Wario', 0),
(111, 8, 'Donkey Kong', 0),
(112, 8, 'Koopa', 0),
(113, 9, 'Skyrim', 0),
(114, 9, 'Bloodborne', 0),
(115, 9, 'The Witcher', 1),
(116, 9, 'Elden Ring', 0),
(117, 10, 'Nintendo', 0),
(118, 10, 'Microsoft', 0),
(119, 10, 'Sony', 1),
(120, 10, 'Sega', 0);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250210220604', '2025-02-18 08:49:51', 538);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `username`, `roles`, `password`) VALUES
(1, 'Test', '[]', '$2y$13$npawHUA71gwpZTzKFUxU6OvfHm6kWUFN3TguMuRCoEj9ZCkUzQmz6'),
(2, 'Test2', '[]', '$2y$13$s7nmVEPVJtbzhz9gb8TCfeTRzavF.eEWcuU.8QOYEPxrn2ZPc3LPa');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B6F7494E853CD175` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `question`) VALUES
(1, 1, 'Quel est le premier jeu vidéo de l’histoire ?'),
(2, 1, 'Quel est le personnage principal de la saga \"The Legend of Zelda\" ?'),
(3, 1, 'Quel studio a développé \"The Witcher 3\" ?'),
(4, 1, 'Dans quel jeu trouve-t-on la phrase \"The cake is a lie\" ?'),
(5, 1, 'Comment s’appelle le héros de la saga \"Halo\" ?'),
(6, 1, 'Quel jeu a popularisé le genre \"Battle Royale\" ?'),
(7, 1, 'Quel est le Pokémon numéro 1 dans le Pokédex ?'),
(8, 1, 'Qui est l’ennemi principal de Mario ?'),
(9, 1, 'Dans quel jeu incarne-t-on un chasseur de monstres nommé Geralt de Riv ?'),
(10, 1, 'Quelle entreprise a créé la PlayStation ?'),
(11, 2, 'Combien y a-t-il de continents sur Terre ?'),
(12, 2, 'Quel est l’élément chimique dont le symbole est \"O\" ?'),
(13, 2, 'Quelle est la capitale du Canada ?'),
(14, 2, 'Qui a peint \"La Joconde\" ?'),
(15, 2, 'Combien y a-t-il de planètes dans le système solaire ?'),
(16, 2, 'Quelle est la langue la plus parlée au monde ?'),
(17, 2, 'Quel est le plus grand océan du monde ?'),
(18, 2, 'Quel écrivain a créé \"Harry Potter\" ?'),
(19, 2, 'En quelle année a eu lieu la chute du mur de Berlin ?'),
(20, 2, 'Quel est le pays d’origine des sushis ?'),
(21, 3, 'Qui était le premier empereur de France ?'),
(22, 3, 'En quelle année a commencé la Première Guerre mondiale ?'),
(23, 3, 'Quelle ville a été détruite en 79 après J.-C. par l’éruption du Vésuve ?'),
(24, 3, 'Qui a découvert l’Amérique en 1492 ?'),
(25, 3, 'Quelle est la devise de la République française ?'),
(26, 3, 'Quel président américain a aboli l’esclavage ?'),
(27, 3, 'Quelle bataille a marqué la fin de Napoléon en 1815 ?'),
(28, 3, 'Qui a fondé l’Empire mongol ?'),
(29, 3, 'Quelle était la capitale de l’Empire romain ?'),
(30, 3, 'Quelle reine de France a été guillotinée en 1793 ?');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `name`) VALUES
(1, 'Jeux vidéo'),
(2, 'Culture général'),
(3, 'Histoire');

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

DROP TABLE IF EXISTS `score`;
CREATE TABLE IF NOT EXISTS `score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_32993751853CD175` (`quiz_id`),
  KEY `IDX_3299375199E6F5DF` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FK_DADD4A251E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_B6F7494E853CD175` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`);

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `FK_32993751853CD175` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `FK_3299375199E6F5DF` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
