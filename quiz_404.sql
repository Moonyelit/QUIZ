-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 23 fév. 2025 à 22:15
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(69, 18, 'Océan Pacifique', 0),
(70, 18, 'Océan Atlantique', 1),
(71, 18, 'Océan Indien', 0),
(72, 18, 'Océan Arctique', 0),
(73, 19, 'J.K. Rowling', 0),
(74, 19, 'Stephen King', 1),
(75, 19, 'J.R.R. Tolkien', 0),
(76, 19, 'George R.R. Martin', 0),
(77, 20, '1989', 0),
(78, 20, '1991', 1),
(79, 20, '1987', 0),
(80, 20, '1990', 0),
(81, 21, 'Japon', 0),
(82, 21, 'Chine', 1),
(83, 21, 'Corée du Sud', 0),
(84, 21, 'Thaïlande', 0),
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
(120, 30, 'Marguerite de Valois', 0),
(121, 31, 'Christopher Nolan', 1),
(122, 31, 'Steven Spielberg', 0),
(123, 31, 'James Cameron', 0),
(124, 31, 'Martin Scorsese', 0),
(125, 32, 'Breaking Bad', 1),
(126, 32, 'Dexter', 0),
(127, 32, 'The Sopranos', 0),
(128, 32, 'Prison Break', 0),
(129, 33, 'Robert Downey Jr.', 1),
(130, 33, 'Chris Hemsworth', 0),
(131, 33, 'Chris Evans', 0),
(132, 33, 'Mark Ruffalo', 0),
(133, 34, 'Matrix', 1),
(134, 34, 'John Wick', 0),
(135, 34, 'Blade Runner', 0),
(136, 34, 'Minority Report', 0),
(137, 35, 'Star Wars', 1),
(138, 35, 'Star Trek', 0),
(139, 35, 'Guardians of the Galaxy', 0),
(140, 35, 'Dune', 0),
(141, 36, 'Ratatouille', 1),
(142, 36, 'Le Monde de Nemo', 0),
(143, 36, 'Les Aristochats', 0),
(144, 36, 'Toy Story', 0),
(145, 37, 'Kill Bill', 1),
(146, 37, 'Pulp Fiction', 0),
(147, 37, 'Jackie Brown', 0),
(148, 37, 'Django Unchained', 0),
(149, 38, 'Friends', 1),
(150, 38, 'How I Met Your Mother', 0),
(151, 38, 'Seinfeld', 0),
(152, 38, 'Brooklyn Nine-Nine', 0),
(153, 39, 'Leonardo DiCaprio', 1),
(154, 39, 'Brad Pitt', 0),
(155, 39, 'Tom Cruise', 0),
(156, 39, 'Johnny Depp', 0),
(157, 40, 'Jurassic Park', 1),
(158, 40, 'King Kong', 0),
(159, 40, 'Indiana Jones', 0),
(160, 40, 'Les Dents de la Mer', 0),
(161, 41, 'Queen', 1),
(162, 41, 'The Beatles', 0),
(163, 41, 'Led Zeppelin', 0),
(164, 41, 'Pink Floyd', 0),
(165, 42, 'Michael Jackson', 1),
(166, 42, 'Prince', 0),
(167, 42, 'Elvis Presley', 0),
(168, 42, 'Madonna', 0),
(169, 43, 'Bono', 1),
(170, 43, 'Sting', 0),
(171, 43, 'Paul McCartney', 0),
(172, 43, 'Freddie Mercury', 0),
(173, 44, 'Ludwig van Beethoven', 1),
(174, 44, 'Wolfgang Amadeus Mozart', 0),
(175, 44, 'Johann Sebastian Bach', 0),
(176, 44, 'Franz Schubert', 0),
(177, 45, 'David Robert Jones', 1),
(178, 45, 'Robert David Bowie', 0),
(179, 45, 'John David Blake', 0),
(180, 45, 'David Smith', 0),
(181, 46, 'The Beatles', 1),
(182, 46, 'The Rolling Stones', 0),
(183, 46, 'The Who', 0),
(184, 46, 'The Kinks', 0),
(185, 47, 'Violoncelle', 1),
(186, 47, 'Piano', 0),
(187, 47, 'Violon', 0),
(188, 47, 'Guitare', 0),
(189, 48, 'Corée du Sud', 1),
(190, 48, 'Japon', 0),
(191, 48, 'Chine', 0),
(192, 48, 'Thaïlande', 0),
(193, 49, 'Madonna', 1),
(194, 49, 'Whitney Houston', 0),
(195, 49, 'Cyndi Lauper', 0),
(196, 49, 'Mariah Carey', 0),
(197, 50, 'Thriller', 1),
(198, 50, 'Bad', 0),
(199, 50, 'Dangerous', 0),
(200, 50, 'Off the Wall', 0),
(201, 51, 'Saxophone', 1),
(202, 51, 'Piano', 0),
(203, 51, 'Basse', 0),
(204, 51, 'Guitare', 0),
(205, 52, 'Silk Sonic', 1),
(206, 52, 'Adele', 0),
(207, 52, 'Justin Bieber', 0),
(208, 52, 'BTS', 0),
(209, 53, 'Wolfgang Amadeus Mozart', 1),
(210, 53, 'Ludwig van Beethoven', 0),
(211, 53, 'Richard Wagner', 0),
(212, 53, 'Franz Schubert', 0),
(213, 54, 'Eminem', 1),
(214, 54, 'Jay-Z', 0),
(215, 54, 'Tupac Shakur', 0),
(216, 54, 'Nas', 0),
(217, 55, 'Queen', 1),
(218, 55, 'AC/DC', 0),
(219, 55, 'The Rolling Stones', 0),
(220, 55, 'Nirvana', 0),
(221, 56, 'Fer', 1),
(222, 56, 'Fluor', 0),
(223, 56, 'Francium', 0),
(224, 56, 'Plomb', 0),
(225, 57, 'Mars', 1),
(226, 57, 'Vénus', 0),
(227, 57, 'Jupiter', 0),
(228, 57, 'Mercure', 0),
(229, 58, 'La peau', 1),
(230, 58, 'Le foie', 0),
(231, 58, 'Le cerveau', 0),
(232, 58, 'Le cœur', 0),
(233, 59, '299 792 458 m/s', 1),
(234, 59, '150 000 000 m/s', 0),
(235, 59, '1 080 000 m/s', 0),
(236, 59, '300 000 m/s', 0),
(237, 60, 'Albert Einstein', 1),
(238, 60, 'Isaac Newton', 0),
(239, 60, 'Galilée', 0),
(240, 60, 'Nikola Tesla', 0),
(241, 61, 'Azote', 1),
(242, 61, 'Oxygène', 0),
(243, 61, 'Argon', 0),
(244, 61, 'Hydrogène', 0),
(245, 62, 'L’étrier', 1),
(246, 62, 'Le fémur', 0),
(247, 62, 'La rotule', 0),
(248, 62, 'L’humérus', 0),
(249, 63, 'Alexander Fleming', 1),
(250, 63, 'Louis Pasteur', 0),
(251, 63, 'Marie Curie', 0),
(252, 63, 'Joseph Lister', 0),
(253, 64, 'H2O', 1),
(254, 64, 'O2', 0),
(255, 64, 'CO2', 0),
(256, 64, 'H2', 0),
(257, 65, 'Dolly la brebis', 1),
(258, 65, 'Bella la vache', 0),
(259, 65, 'Félix le chat', 0),
(260, 65, 'Rex le chien', 0),
(261, 66, 'Swift', 1),
(262, 66, 'Kotlin', 0),
(263, 66, 'Java', 0),
(264, 66, 'Python', 0),
(265, 67, 'JavaScript', 1),
(266, 67, 'Java', 0),
(267, 67, 'C++', 0),
(268, 67, 'Python', 0),
(269, 68, 'HyperText Markup Language', 1),
(270, 68, 'HyperText Making Language', 0),
(271, 68, 'HyperTerminal Markup Language', 0),
(272, 68, 'Home Tool Markup Language', 0),
(273, 69, 'PHP', 1),
(274, 69, 'HTML', 0),
(275, 69, 'CSS', 0),
(276, 69, 'SQL', 0),
(277, 70, 'Structured Query Language', 1),
(278, 70, 'Simple Query Language', 0),
(279, 70, 'Sequential Query Language', 0),
(280, 70, 'Standard Query Logic', 0),
(281, 71, 'Gérer la mise en page d’un site web', 1),
(282, 71, 'Définir la structure d’une page', 0),
(283, 71, 'Effectuer des requêtes SQL', 0),
(284, 71, 'Créer des API', 0),
(285, 72, 'Python', 1),
(286, 72, 'C', 0),
(287, 72, 'Ruby', 0),
(288, 72, 'PHP', 0),
(289, 73, 'Kotlin', 1),
(290, 73, 'Swift', 0),
(291, 73, 'C#', 0),
(292, 73, 'Objective-C', 0),
(293, 74, 'C++', 1),
(294, 74, 'Python', 0),
(295, 74, 'JavaScript', 0),
(296, 74, 'Rust', 0),
(297, 75, 'Create, Read, Update, Delete', 1),
(298, 75, 'Copy, Read, Update, Delete', 0),
(299, 75, 'Create, Remove, Update, Download', 0),
(300, 75, 'Copy, Rename, Undo, Delete', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `username`, `roles`, `password`) VALUES
(2, 'Moonye', '[]', '$2y$13$g8nTzi4CWOQoAQNr/xcusO78zY4tR2EFRXYkkhZENpvDIcsrJLw9C');

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(30, 3, 'Quelle reine de France a été guillotinée en 1793 ?'),
(31, 4, 'Qui a réalisé le film \"Inception\" ?'),
(32, 4, 'Dans quelle série trouve-t-on le personnage de Walter White ?'),
(33, 4, 'Quel acteur incarne Iron Man dans les films Marvel ?'),
(34, 4, 'Quelle saga met en scène le personnage de Neo ?'),
(35, 4, 'Dans quel film peut-on entendre \"May the Force be with you\" ?'),
(36, 4, 'Quel film d’animation raconte l’histoire d’un rat qui veut devenir chef cuisinier à Paris ?'),
(37, 4, 'Dans quel film de Quentin Tarantino Uma Thurman joue-t-elle le rôle principal ?'),
(38, 4, 'Quelle série met en scène un groupe d’amis vivant à New York autour d’un café nommé Central Perk ?'),
(39, 4, 'Quel acteur joue le rôle de Jack Dawson dans \"Titanic\" ?'),
(40, 4, 'Quel film de Steven Spielberg met en scène un parc rempli de dinosaures ?'),
(41, 5, 'Quel groupe a écrit la chanson \"Bohemian Rhapsody\" ?'),
(42, 5, 'Quel artiste est connu sous le surnom de \"The King of Pop\" ?'),
(43, 5, 'Quel est le prénom du chanteur du groupe U2 ?'),
(44, 5, 'Quel compositeur est à l’origine de la 9ème Symphonie ?'),
(45, 5, 'Quel est le vrai nom de David Bowie ?'),
(46, 5, 'Quel groupe a sorti l’album \"Abbey Road\" ?'),
(47, 5, 'Quel instrument joue Yo-Yo Ma ?'),
(48, 5, 'Quel pays est à l’origine de la K-pop ?'),
(49, 5, 'Qui a chanté \"Like a Virgin\" ?'),
(50, 5, 'Quel est le titre de l’album phare de Michael Jackson sorti en 1982 ?'),
(51, 5, 'Quel est l’instrument principal dans le jazz ?'),
(52, 5, 'Qui a remporté le prix de la meilleure chanson aux Grammy Awards 2022 ?'),
(53, 5, 'Quel compositeur a écrit \"La Flûte enchantée\" ?'),
(54, 5, 'Quel rappeur est connu pour son album \"The Marshall Mathers LP\" ?'),
(55, 5, 'Quel groupe a chanté \"We Will Rock You\" ?'),
(56, 6, 'Quel est l’élément chimique avec le symbole \"Fe\" ?'),
(57, 6, 'Quelle planète est connue sous le nom de planète rouge ?'),
(58, 6, 'Quel est le plus gros organe du corps humain ?'),
(59, 6, 'Quelle est la vitesse de la lumière dans le vide ?'),
(60, 6, 'Quel scientifique a développé la théorie de la relativité ?'),
(61, 6, 'Quel gaz est le plus abondant dans l’atmosphère terrestre ?'),
(62, 6, 'Quel est le plus petit os du corps humain ?'),
(63, 6, 'Qui a découvert la pénicilline ?'),
(64, 6, 'Quelle est la formule chimique de l’eau ?'),
(65, 6, 'Quel animal a été le premier à être cloné ?'),
(66, 7, 'Quel langage est principalement utilisé pour le développement d’applications iOS ?'),
(67, 7, 'Quel langage est connu pour fonctionner dans un navigateur web ?'),
(68, 7, 'Que signifie l’abréviation HTML ?'),
(69, 7, 'Quel langage est principalement utilisé pour la programmation côté serveur ?'),
(70, 7, 'Que signifie l’acronyme SQL ?'),
(71, 7, 'Quel est le but de la méthode CSS ?'),
(72, 7, 'Quel langage de programmation est souvent utilisé pour le Machine Learning ?'),
(73, 7, 'Quel est le principal langage utilisé pour le développement d’applications Android ?'),
(74, 7, 'Quel est le langage natif utilisé pour programmer un microcontrôleur Arduino ?'),
(75, 7, 'Que signifie CRUD en développement web ?');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `slug`) VALUES
(1, 'Jeux Vidéo', 'jeux-video'),
(2, 'Culture Général', 'culture-generale'),
(3, 'Histoire', 'histoire'),
(4, 'Cinéma et Série', 'cinema-series'),
(5, 'Musique', 'musique'),
(6, 'Sciences', 'sciences'),
(7, 'Programmation', 'programmation');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
