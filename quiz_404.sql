-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 20 fév. 2025 à 21:36
-- Version du serveur : 9.1.0
-- Version de PHP : 8.2.26

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
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_right` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DADD4A251E27F6BF` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `is_right`) VALUES
(1, 1, 'Pong', 1),
(2, 1, 'Pac-Man', 0),
(3, 1, 'Tetris', 0),
(4, 1, 'Space Invaders', 0),
(5, 2, 'Zelda', 0),
(6, 2, 'Ganondorf', 0),
(7, 2, 'Link', 1),
(8, 2, 'Epona', 0),
(9, 3, 'Bethesda', 0),
(10, 3, 'CD Projekt Red', 1),
(11, 3, 'Ubisoft', 0),
(12, 3, 'Square Enix', 0),
(13, 4, 'Half-Life', 0),
(14, 4, 'Portal', 1),
(15, 4, 'Doom', 0),
(16, 4, 'BioShock', 0),
(17, 5, 'Master Chief', 1),
(18, 5, 'Solid Snake', 0),
(19, 5, 'Doomguy', 0),
(20, 5, 'Samus Aran', 0),
(21, 6, 'Fortnite', 0),
(22, 6, 'PUBG', 1),
(23, 6, 'Apex Legends', 0),
(24, 6, 'Call of Duty Warzone', 0),
(25, 7, 'Pikachu', 0),
(26, 7, 'Salamèche', 0),
(27, 7, 'Bulbizarre', 1),
(28, 7, 'Carapuce', 0),
(29, 8, 'Bowser', 1),
(30, 8, 'Wario', 0),
(31, 8, 'Donkey Kong', 0),
(32, 8, 'Koopa', 0),
(33, 9, 'Skyrim', 0),
(34, 9, 'Bloodborne', 0),
(35, 9, 'The Witcher', 1),
(36, 9, 'Elden Ring', 0),
(37, 10, 'Nintendo', 0),
(38, 10, 'Microsoft', 0),
(39, 10, 'Sony', 1),
(40, 10, 'Sega', 0),
(41, 11, '5', 0),
(42, 11, '6', 0),
(43, 11, '7', 1),
(44, 11, '8', 0),
(45, 12, 'Hydrogène', 0),
(46, 12, 'Carbone', 0),
(47, 12, 'Oxygène', 1),
(48, 12, 'Azote', 0),
(49, 13, 'Toronto', 0),
(50, 13, 'Ottawa', 1),
(51, 13, 'Vancouver', 0),
(52, 13, 'Montréal', 0),
(53, 14, 'Michel-Ange', 0),
(54, 14, 'Leonard de Vinci', 1),
(55, 14, 'Raphaël', 0),
(56, 14, 'Rembrandt', 0),
(57, 15, '7', 1),
(58, 15, '8', 0),
(59, 15, '9', 0),
(60, 15, '10', 0),
(61, 16, 'Français', 0),
(62, 16, 'Anglais', 0),
(63, 16, 'Chinois', 1),
(64, 16, 'Espagnol', 0),
(65, 17, 'Louis XIV', 0),
(66, 17, 'Napoléon Bonaparte', 1),
(67, 17, 'Charlemagne', 0),
(68, 17, 'François Ier', 0),
(69, 18, '1912', 0),
(70, 18, '1914', 1),
(71, 18, '1918', 0),
(72, 18, '1920', 0),
(73, 19, 'Rome', 0),
(74, 19, 'Pompei', 1),
(75, 19, 'Athènes', 0),
(76, 19, 'Carthage', 0),
(77, 20, 'Marco Polo', 0),
(78, 20, 'Christophe Colomb', 1),
(79, 20, 'Magellan', 0),
(80, 20, 'Vasco de Gama', 0),
(81, 21, 'Louis XIV', 0),
(82, 21, 'Napoléon Bonaparte', 1),
(83, 21, 'Charlemagne', 0),
(84, 21, 'François Ier', 0),
(85, 22, '1912', 0),
(86, 22, '1914', 1),
(87, 22, '1918', 0),
(88, 22, '1920', 0),
(89, 23, 'Rome', 0),
(90, 23, 'Pompéi', 1),
(91, 23, 'Athènes', 0),
(92, 23, 'Carthage', 0),
(93, 24, 'Marco Polo', 0),
(94, 24, 'Christophe Colomb', 1),
(95, 24, 'Magellan', 0),
(96, 24, 'Vasco de Gama', 0),
(97, 25, 'Liberté, Égalité, Fraternité', 1),
(98, 25, 'Vive la France', 0),
(99, 25, 'Paix, Travail, Patrie', 0),
(100, 25, 'Un pour tous, tous pour un', 0),
(101, 26, 'George Washington', 0),
(102, 26, 'Abraham Lincoln', 1),
(103, 26, 'Franklin Roosevelt', 0),
(104, 26, 'Thomas Jefferson', 0),
(105, 27, 'Austerlitz', 0),
(106, 27, 'Waterloo', 1),
(107, 27, 'Trafalgar', 0),
(108, 27, 'Iéna', 0),
(109, 28, 'Kublai Khan', 0),
(110, 28, 'Gengis Khan', 1),
(111, 28, 'Tamerlan', 0),
(112, 28, 'Attila', 0),
(113, 29, 'Rome', 1),
(114, 29, 'Byzance', 0),
(115, 29, 'Carthage', 0),
(116, 29, 'Alexandrie', 0),
(117, 30, 'Marie-Antoinette', 1),
(118, 30, 'Catherine de Médicis', 0),
(119, 30, 'Anne d’Autriche', 0),
(120, 30, 'Marguerite de Valois', 0);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250219084922', '2025-02-19 08:51:34', 2814);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `username`, `roles`, `password`) VALUES
(1, 'Test', '[]', '$2y$13$tqsMme.YtHAEpqvLfZstReMhErD/fnUtq55l3oopw8E2cQ7V4ubJK');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `slug`) VALUES
(1, 'Jeux Vidéo', 'jeux-video'),
(2, 'Culture Général', 'culture-generale'),
(3, 'Histoire', 'histoire');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `quiz_id`, `player_id`, `score`) VALUES
(1, 1, 1, 20),
(2, 1, 1, 10),
(3, 1, 1, 5);

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
