-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 mars 2025 à 14:07
-- Version du serveur : 10.5.28-MariaDB-ubu2004
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `elodie_quiz404`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `is_right` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `is_right`) VALUES
(96, 1, 'Tennis for Two', 1),
(97, 1, 'Pong', 0),
(98, 1, 'Space Invaders', 0),
(99, 1, 'Pac-Man', 0),
(100, 2, 'Link', 1),
(101, 2, 'Zelda', 0),
(102, 2, 'Ganondorf', 0),
(103, 2, 'Epona', 0),
(104, 3, 'Portal', 1),
(105, 3, 'Half-Life', 0),
(106, 3, 'Bioshock', 0),
(107, 3, 'The Talos Principle', 0),
(108, 4, 'CD Projekt RED', 1),
(109, 4, 'Bethesda', 0),
(110, 4, 'Ubisoft', 0),
(111, 4, 'Rockstar Games', 0),
(112, 5, 'Master Chief', 1),
(113, 5, 'Cortana', 0),
(114, 5, 'Arbiter', 0),
(115, 5, 'Sergeant Johnson', 0),
(116, 6, 'PlayerUnknown\'s Battlegrounds', 1),
(117, 6, 'Fortnite', 0),
(118, 6, 'Apex Legends', 0),
(119, 6, 'Call of Duty: Warzone', 0),
(120, 7, 'Monster Hunter', 0),
(121, 7, 'The Witcher', 1),
(122, 7, 'Dark Souls', 0),
(123, 7, 'Devil May Cry', 0),
(124, 8, 'Sony', 1),
(125, 8, 'Microsoft', 0),
(126, 8, 'Nintendo', 0),
(127, 8, 'Sega', 0),
(128, 9, 'Bulbizarre', 1),
(129, 9, 'Salamèche', 0),
(130, 9, 'Carapuce', 0),
(131, 9, 'Pikachu', 0),
(132, 10, 'Bowser', 1),
(133, 10, 'Luigi', 0),
(134, 10, 'Wario', 0),
(135, 10, 'Donkey Kong', 0),
(136, 11, 'Mercure', 1),
(137, 11, 'Vénus', 0),
(138, 11, 'Terre', 0),
(139, 11, 'Mars', 0),
(140, 12, 'Oxygène', 1),
(141, 12, 'Or', 0),
(142, 12, 'Osmium', 0),
(143, 12, 'Oganesson', 0),
(144, 13, 'Newton', 1),
(145, 13, 'Joule', 0),
(146, 13, 'Watt', 0),
(147, 13, 'Pascal', 0),
(148, 14, 'Henri Becquerel', 1),
(149, 14, 'Albert Einstein', 0),
(150, 14, 'Isaac Newton', 0),
(151, 14, 'Niels Bohr', 0),
(152, 15, 'La peau', 1),
(153, 15, 'Le foie', 0),
(154, 15, 'Le cœur', 0),
(155, 15, 'Les poumons', 0),
(156, 16, '299 792 km/s', 1),
(157, 16, '300 000 m/s', 0),
(158, 16, '150 000 km/s', 0),
(159, 16, '3x10^6 km/s', 0),
(160, 17, '8', 1),
(161, 17, '9', 0),
(162, 17, '7', 0),
(163, 17, '10', 0),
(164, 18, '0', 1),
(165, 18, '1', 0),
(166, 18, '-1', 0),
(167, 18, '2', 0),
(168, 19, 'Azote', 1),
(169, 19, 'Oxygène', 0),
(170, 19, 'Dioxyde de carbone', 0),
(171, 19, 'Argon', 0),
(172, 20, 'Albert Einstein', 1),
(173, 20, 'Isaac Newton', 0),
(174, 20, 'Galilée', 0),
(175, 20, 'Stephen Hawking', 0),
(176, 21, 'HTML', 1),
(177, 21, 'C++', 0),
(178, 21, 'Python', 0),
(179, 21, 'Java', 0),
(180, 22, 'Structured Query Language', 1),
(181, 22, 'Simple Query Language', 0),
(182, 22, 'Sequential Query Logic', 0),
(183, 22, 'Standard Query List', 0),
(184, 23, 'PHP', 1),
(185, 23, 'Python', 0),
(186, 23, 'Ruby', 0),
(187, 23, 'JavaScript', 0),
(188, 24, 'Affiche une chaîne de caractères', 1),
(189, 24, 'Crée une boucle', 0),
(190, 24, 'Déclare une variable', 0),
(191, 24, 'Exécute une condition', 0),
(192, 25, 'Fournir une structure préétablie pour le développement d’applications', 1),
(193, 25, 'Remplacer le langage de programmation', 0),
(194, 25, 'Compiler le code', 0),
(195, 25, 'Optimiser la base de données', 0),
(196, 26, 'let variable = valeur;', 1),
(197, 26, 'def variable = valeur;', 0),
(198, 26, 'int variable = valeur;', 0),
(199, 26, 'variable = valeur;', 0),
(200, 27, 'class', 1),
(201, 27, 'function', 0),
(202, 27, 'object', 0),
(203, 27, 'new', 0),
(204, 28, 'CSS', 1),
(205, 28, 'HTML', 0),
(206, 28, 'JavaScript', 0),
(207, 28, 'PHP', 0),
(208, 29, '.py', 1),
(209, 29, '.pyt', 0),
(210, 29, '.python', 0),
(211, 29, '.pt', 0),
(212, 30, 'Répondre aux requêtes HTTP et servir des contenus web', 1),
(213, 30, 'Compiler le code', 0),
(214, 30, 'Stocker des données', 0),
(215, 30, 'Créer des animations', 0),
(216, 31, 'James Cameron', 1),
(217, 31, 'Steven Spielberg', 0),
(218, 31, 'Martin Scorsese', 0),
(219, 31, 'Christopher Nolan', 0),
(220, 32, 'Le Seigneur des Anneaux', 1),
(221, 32, 'Harry Potter', 0),
(222, 32, 'Chroniques de Narnia', 0),
(223, 32, 'Eragon', 0),
(224, 33, 'Star Wars', 1),
(225, 33, 'Star Trek', 0),
(226, 33, 'Indiana Jones', 0),
(227, 33, 'Matrix', 0),
(228, 34, 'Robert Downey Jr.', 1),
(229, 34, 'Chris Evans', 0),
(230, 34, 'Mark Ruffalo', 0),
(231, 34, 'Chris Hemsworth', 0),
(232, 35, 'Terminator 2 : Judgment Day', 1),
(233, 35, 'Predator', 0),
(234, 35, 'Commando', 0),
(235, 35, 'Total Recall', 0),
(236, 36, 'Blanche-Neige et les Sept Nains', 1),
(237, 36, 'Cendrillon', 0),
(238, 36, 'La Belle au bois dormant', 0),
(239, 36, 'Bambi', 0),
(240, 37, 'Heath Ledger', 1),
(241, 37, 'Joaquin Phoenix', 0),
(242, 37, 'Jared Leto', 0),
(243, 37, 'Mark Hamill', 0),
(244, 38, 'Ben-Hur', 1),
(245, 38, 'Titanic', 0),
(246, 38, 'Le Retour du Roi', 0),
(247, 38, 'Avatar', 0),
(248, 39, 'John Carpenter', 1),
(249, 39, 'Steven Spielberg', 0),
(250, 39, 'Martin Scorsese', 0),
(251, 39, 'James Wan', 0),
(252, 40, 'Los Angeles', 1),
(253, 40, 'New York', 0),
(254, 40, 'Paris', 0),
(255, 40, 'Chicago', 0),
(256, 41, 'Zeus', 1),
(257, 41, 'Hadès', 0),
(258, 41, 'Apollon', 0),
(259, 41, 'Poséidon', 0),
(260, 42, 'Hadès', 1),
(261, 42, 'Olympus', 0),
(262, 42, 'Tartare', 0),
(263, 42, 'Elysée', 0),
(264, 43, 'Aphrodite', 1),
(265, 43, 'Artémis', 0),
(266, 43, 'Athéna', 0),
(267, 43, 'Héra', 0),
(268, 44, 'Thésée', 1),
(269, 44, 'Hercule', 0),
(270, 44, 'Achille', 0),
(271, 44, 'Persée', 0),
(272, 45, 'Jupiter', 1),
(273, 45, 'Mars', 0),
(274, 45, 'Neptune', 0),
(275, 45, 'Saturne', 0),
(276, 46, 'Thor', 1),
(277, 46, 'Loki', 0),
(278, 46, 'Odin', 0),
(279, 46, 'Freyr', 0),
(280, 47, 'La Chimère', 1),
(281, 47, 'Le Sphinx', 0),
(282, 47, 'Le Griffon', 0),
(283, 47, 'Le Minotaure', 0),
(284, 48, 'Anubis', 1),
(285, 48, 'Osiris', 0),
(286, 48, 'Ra', 0),
(287, 48, 'Horus', 0),
(288, 49, 'Aucun nom', 1),
(289, 49, 'L\'Argos', 0),
(290, 49, 'L\'Ithaca', 0),
(291, 49, 'Le Nausicaa', 0),
(292, 50, 'Cerbère', 1),
(293, 50, 'Minotaure', 0),
(294, 50, 'Sphinx', 0),
(295, 50, 'Hydre', 0),
(296, 51, 'La baleine bleue', 1),
(297, 51, 'L\'éléphant d\'Afrique', 0),
(298, 51, 'La girafe', 0),
(299, 51, 'L\'hippopotame', 0),
(300, 52, 'Le caméléon', 1),
(301, 52, 'Le lézard', 0),
(302, 52, 'Le perroquet', 0),
(303, 52, 'Le poulpe', 0),
(304, 53, '8', 1),
(305, 53, '6', 0),
(306, 53, '10', 0),
(307, 53, '12', 0),
(308, 54, 'Le guépard', 1),
(309, 54, 'Le lion', 0),
(310, 54, 'L\'autruche', 0),
(311, 54, 'Le léopard', 0),
(312, 55, 'Le koala', 1),
(313, 55, 'Le chat', 0),
(314, 55, 'Le lion', 0),
(315, 55, 'Le panda', 0),
(316, 56, 'L\'éléphant', 1),
(317, 56, 'Le rhinocéros', 0),
(318, 56, 'L\'hippopotame', 0),
(319, 56, 'Le buffle', 0),
(320, 57, 'La colombe', 1),
(321, 57, 'L\'aigle', 0),
(322, 57, 'Le pigeon', 0),
(323, 57, 'Le cygne', 0),
(324, 58, 'La chauve-souris', 1),
(325, 58, 'L\'écureuil volant', 0),
(326, 58, 'Le papillon', 0),
(327, 58, 'Le colugo', 0),
(328, 59, 'Le chimpanzé', 1),
(329, 59, 'Le dauphin', 0),
(330, 59, 'L\'éléphant', 0),
(331, 59, 'Le corbeau', 0),
(332, 60, 'L\'autruche', 1),
(333, 60, 'Le condor', 0),
(334, 60, 'Le pélican', 0),
(335, 60, 'L\'aigle royal', 0),
(336, 61, 'Le football', 1),
(337, 61, 'Le basketball', 0),
(338, 61, 'Le tennis', 0),
(339, 61, 'Le cricket', 0),
(340, 62, '11', 1),
(341, 62, '10', 0),
(342, 62, '12', 0),
(343, 62, '9', 0),
(344, 63, 'Novak Djokovic', 1),
(345, 63, 'Roger Federer', 0),
(346, 63, 'Rafael Nadal', 0),
(347, 63, 'Andy Murray', 0),
(348, 64, 'Le golf', 1),
(349, 64, 'Le tennis', 0),
(350, 64, 'Le baseball', 0),
(351, 64, 'Le hockey', 0),
(352, 65, 'La Grèce', 1),
(353, 65, 'La Chine', 0),
(354, 65, 'Les États-Unis', 0),
(355, 65, 'Le Royaume-Uni', 0),
(356, 66, '3', 1),
(357, 66, '2', 0),
(358, 66, '1', 0),
(359, 66, '4', 0),
(360, 67, 'Les All Blacks', 1),
(361, 67, 'Les Wallabies', 0),
(362, 67, 'Les Springboks', 0),
(363, 67, 'Les Lions', 0),
(364, 68, 'Le cyclisme', 1),
(365, 68, 'Le football', 0),
(366, 68, 'Le rugby', 0),
(367, 68, 'Le tennis', 0),
(368, 69, 'La terre battue', 1),
(369, 69, 'Le gazon', 0),
(370, 69, 'Le parquet', 0),
(371, 69, 'Le synthétique', 0),
(372, 70, 'Usain Bolt', 1),
(373, 70, 'Tyson Gay', 0),
(374, 70, 'Justin Gatlin', 0),
(375, 70, 'Yohan Blake', 0),
(376, 71, 'Le sushi', 1),
(377, 71, 'Tempura', 0),
(378, 71, 'Sashimi', 0),
(379, 71, 'Ramen', 0),
(380, 72, 'La mozzarella', 1),
(381, 72, 'Le cheddar', 0),
(382, 72, 'Le parmesan', 0),
(383, 72, 'Le gruyère', 0),
(384, 73, 'La banane', 1),
(385, 73, 'La pomme', 0),
(386, 73, 'L\'orange', 0),
(387, 73, 'La fraise', 0),
(388, 74, 'L\'Espagne', 1),
(389, 74, 'L\'Italie', 0),
(390, 74, 'Le Portugal', 0),
(391, 74, 'La France', 0),
(392, 75, 'L\'avocat', 1),
(393, 75, 'La tomate', 0),
(394, 75, 'Le citron', 0),
(395, 75, 'Le piment', 0),
(396, 76, 'Le curcuma', 1),
(397, 76, 'Le paprika', 0),
(398, 76, 'Le cumin', 0),
(399, 76, 'Le gingembre', 0),
(400, 77, 'Tequila', 1),
(401, 77, 'Vodka', 0),
(402, 77, 'Rhum', 0),
(403, 77, 'Gin', 0),
(404, 78, 'Les feuilles de lasagne', 1),
(405, 78, 'La pâte feuilletée', 0),
(406, 78, 'La pâte brisée', 0),
(407, 78, 'La semoule', 0),
(408, 79, 'La meringue', 1),
(409, 79, 'La crème brûlée', 0),
(410, 79, 'Le tiramisu', 0),
(411, 79, 'La panna cotta', 0),
(412, 80, 'Le bun', 1),
(413, 80, 'La baguette', 0),
(414, 80, 'Le pain de mie', 0),
(415, 80, 'Le pain burger', 0),
(416, 81, 'L\'océan Pacifique', 1),
(417, 81, 'L\'océan Atlantique', 0),
(418, 81, 'L\'océan Indien', 0),
(419, 81, 'L\'océan Arctique', 0),
(420, 82, 'Victor Hugo', 1),
(421, 82, 'Alexandre Dumas', 0),
(422, 82, 'Emile Zola', 0),
(423, 82, 'Gustave Flaubert', 0),
(424, 83, 'Le yen', 1),
(425, 83, 'Le dollar', 0),
(426, 83, 'L\'euro', 0),
(427, 83, 'La livre', 0),
(428, 84, 'Au', 1),
(429, 84, 'Ag', 0),
(430, 84, 'Fe', 0),
(431, 84, 'Pb', 0),
(432, 85, '5', 1),
(433, 85, '4', 0),
(434, 85, '6', 0),
(435, 85, '7', 0),
(436, 86, 'Paris', 1),
(437, 86, 'Londres', 0),
(438, 81, 'L\'océan Pacifique', 1),
(439, 81, 'L\'océan Atlantique', 0),
(440, 81, 'L\'océan Indien', 0),
(441, 81, 'L\'océan Arctique', 0),
(442, 82, 'Victor Hugo', 1),
(443, 82, 'Alexandre Dumas', 0),
(444, 82, 'Emile Zola', 0),
(445, 82, 'Gustave Flaubert', 0),
(446, 83, 'Le yen', 1),
(447, 83, 'Le dollar', 0),
(448, 83, 'L\'euro', 0),
(449, 83, 'La livre', 0),
(450, 84, 'Au', 1),
(451, 84, 'Ag', 0),
(452, 84, 'Fe', 0),
(453, 84, 'Pb', 0),
(454, 85, '5', 1),
(455, 85, '4', 0),
(456, 85, '6', 0),
(457, 85, '7', 0),
(458, 86, 'Paris', 1),
(459, 86, 'Londres', 0),
(460, 86, 'New York', 0),
(461, 86, 'Tokyo', 0),
(462, 87, 'La France', 1),
(463, 87, 'L\'Angleterre', 0),
(464, 87, 'L\'Espagne', 0),
(465, 87, 'L\'Allemagne', 0),
(466, 88, 'Léonard de Vinci', 1),
(467, 88, 'Michel-Ange', 0),
(468, 88, 'Raphaël', 0),
(469, 88, 'Titien', 0),
(470, 89, 'Canberra', 1),
(471, 89, 'Sydney', 0),
(472, 89, 'Melbourne', 0),
(473, 89, 'Brisbane', 0),
(474, 90, 'Le Nil', 1),
(475, 90, 'L\'Amazone', 0),
(476, 90, 'Le Mississippi', 0),
(477, 90, 'Le Yangtsé', 0),
(478, 91, 'Charles Darwin', 1),
(479, 91, 'Albert Einstein', 0),
(480, 91, 'Isaac Newton', 0),
(481, 91, 'Gregor Mendel', 0),
(482, 92, 'L\'Angleterre', 1),
(483, 92, 'Les États-Unis', 0),
(484, 92, 'La France', 0),
(485, 92, 'L\'Allemagne', 0),
(486, 93, 'L\'hydrogène', 1),
(487, 93, 'L\'hélium', 0),
(488, 93, 'L\'oxygène', 0),
(489, 93, 'Le carbone', 0),
(490, 94, 'Jupiter', 1),
(491, 94, 'Saturne', 0),
(492, 94, 'Uranus', 0),
(493, 94, 'Neptune', 0),
(494, 95, 'Le guépard', 1),
(495, 95, 'Le lion', 0),
(496, 95, 'Le léopard', 0),
(497, 95, 'L\'autruche', 0);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250219084922', '2025-02-19 08:51:34', 2814);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `username` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `username`, `roles`, `password`) VALUES
(2, 'Moonye', '[]', '$2y$13$hfw7RCs4ZX3jLDApFEfIHu8NW.LbqJswvQTEZOOCIeX/w02udTZBq');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `question`) VALUES
(1, 1, 'Quel est le premier jeu vidéo de l’histoire ?'),
(2, 1, 'Quel personnage incarne-t-on dans \"The Legend of Zelda\" ?'),
(3, 1, 'Dans quel jeu trouve-t-on la phrase \"The cake is a lie\" ?'),
(4, 1, 'Quel studio a développé \"The Witcher 3\" ?'),
(5, 1, 'Comment s’appelle le héros principal de la saga \"Halo\" ?'),
(6, 1, 'Quel jeu a popularisé le genre \"Battle Royale\" ?'),
(7, 1, 'Dans quel jeu incarne-t-on un chasseur de monstres nommé Geralt de Riv ?'),
(8, 1, 'Quelle entreprise a créé la PlayStation ?'),
(9, 1, 'Quel est le Pokémon numéro 1 dans le Pokédex ?'),
(10, 1, 'Qui est l’ennemi principal de Mario ?'),
(11, 2, 'Quelle est la planète la plus proche du soleil ?'),
(12, 2, 'Quel est l’élément chimique dont le symbole est \"O\" ?'),
(13, 2, 'Quelle est l’unité de mesure de la force ?'),
(14, 2, 'Quel scientifique a découvert la radioactivité ?'),
(15, 2, 'Quel est l’organe le plus grand du corps humain ?'),
(16, 2, 'Quelle est la vitesse de la lumière dans le vide ?'),
(17, 2, 'Combien y a-t-il de planètes dans le système solaire ?'),
(18, 2, 'Quelle est la charge d’un neutron ?'),
(19, 2, 'Quel est le gaz majoritaire dans l’air ?'),
(20, 2, 'Qui a inventé la théorie de la relativité ?'),
(21, 3, 'Quel langage est utilisé pour le développement web front-end ?'),
(22, 3, 'Que signifie SQL ?'),
(23, 3, 'Quel est le langage principal utilisé avec Symfony ?'),
(24, 3, 'Que fait l’instruction \"echo\" en PHP ?'),
(25, 3, 'Quel est le but d’un framework ?'),
(26, 3, 'Comment déclare-t-on une variable en JavaScript ?'),
(27, 3, 'Quel mot-clé est utilisé pour déclarer une classe en PHP ?'),
(28, 3, 'Quel est le langage utilisé pour styliser une page web ?'),
(29, 3, 'Quel est l’extension d’un fichier Python ?'),
(30, 3, 'Quelle est la fonction principale d’un serveur web ?'),
(31, 4, 'Qui a réalisé \"Titanic\" ?'),
(32, 4, 'Quel film met en scène un anneau magique et un hobbit ?'),
(33, 4, 'Dans quelle saga retrouve-t-on le personnage de Dark Vador ?'),
(34, 4, 'Quel acteur incarne Iron Man dans le MCU ?'),
(35, 4, 'Dans quel film trouve-t-on la réplique \"Hasta la vista, baby\" ?'),
(36, 4, 'Quel est le premier film d’animation de Disney ?'),
(37, 4, 'Qui joue le Joker dans \"The Dark Knight\" ?'),
(38, 4, 'Quel film a remporté le plus d’Oscars ?'),
(39, 4, 'Quel réalisateur est connu pour ses films d’horreur comme \"Psychose\" ?'),
(40, 4, 'Dans quelle ville se déroule \"La La Land\" ?'),
(41, 5, 'Qui est le dieu de la foudre dans la mythologie grecque ?'),
(42, 5, 'Quel est le nom du royaume des morts dans la mythologie grecque ?'),
(43, 5, 'Quelle déesse est née de l’écume de la mer ?'),
(44, 5, 'Quel héros a vaincu le Minotaure ?'),
(45, 5, 'Quel est l’équivalent romain de Zeus ?'),
(46, 5, 'Quel dieu nordique manie un marteau nommé Mjolnir ?'),
(47, 5, 'Quelle créature mythologique a une tête de lion, un corps de chèvre et une queue de serpent ?'),
(48, 5, 'Dans la mythologie égyptienne, qui est le dieu des morts ?'),
(49, 5, 'Quel est le nom du navire d’Ulysse dans l’Odyssée ?'),
(50, 5, 'Quel est le gardien des enfers dans la mythologie grecque ?'),
(51, 6, 'Quel est le plus grand mammifère du monde ?'),
(52, 6, 'Quel animal est connu pour changer de couleur ?'),
(53, 6, 'Combien de pattes a une araignée ?'),
(54, 6, 'Quel est l’animal terrestre le plus rapide ?'),
(55, 6, 'Quel est l’animal qui dort le plus ?'),
(56, 6, 'Quel animal a une trompe ?'),
(57, 6, 'Quel oiseau est le symbole de la paix ?'),
(58, 6, 'Quel est le seul mammifère capable de voler ?'),
(59, 6, 'Quel est l’animal le plus intelligent après l’humain ?'),
(60, 6, 'Quel est le plus grand oiseau du monde ?'),
(61, 7, 'Quel est le sport le plus populaire dans le monde ?'),
(62, 7, 'Combien de joueurs y a-t-il dans une équipe de football ?'),
(63, 7, 'Qui a remporté le plus de titres de Grand Chelem en tennis masculin ?'),
(64, 7, 'Dans quel sport utilise-t-on un putter ?'),
(65, 7, 'Quel pays a accueilli les Jeux Olympiques d’été en 2021 ?'),
(66, 7, 'Combien de points vaut un panier à trois points au basket ?'),
(67, 7, 'Quel est le surnom de l’équipe de rugby de Nouvelle-Zélande ?'),
(68, 7, 'Quel sport est associé au Tour de France ?'),
(69, 7, 'Quelle est la surface de jeu de Roland-Garros ?'),
(70, 7, 'Quel athlète détient le record du 100m sprint masculin ?'),
(71, 8, 'Quel est le plat national du Japon ?'),
(72, 8, 'Quel fromage est utilisé pour une pizza Margherita traditionnelle ?'),
(73, 8, 'Quel fruit est connu pour être une source importante de vitamine C ?'),
(74, 8, 'De quel pays vient la paella ?'),
(75, 8, 'Quel est l’ingrédient principal du guacamole ?'),
(76, 8, 'Quelle épice donne au curry sa couleur jaune ?'),
(77, 8, 'Quel alcool est utilisé dans la préparation d’un mojito ?'),
(78, 8, 'Quel type de pâte est souvent utilisé pour les lasagnes ?'),
(79, 8, 'Quel dessert est fait principalement d’œufs, de sucre et de mascarpone ?'),
(80, 8, 'Quel est le nom du pain utilisé pour un hot-dog ?'),
(81, 9, 'Quel est le plus grand océan du monde ?'),
(82, 9, 'Qui a écrit \"Les Misérables\" ?'),
(83, 9, 'Quelle est la monnaie officielle du Japon ?'),
(84, 9, 'Quel est le symbole chimique de l’or ?'),
(85, 9, 'Combien d’anneaux y a-t-il sur le drapeau olympique ?'),
(86, 9, 'Quelle ville est surnommée \"La Ville Lumière\" ?'),
(87, 9, 'Quel pays a offert la Statue de la Liberté aux États-Unis ?'),
(88, 9, 'Qui a peint \"La Cène\" ?'),
(89, 9, 'Quelle est la capitale de l’Australie ?'),
(90, 9, 'Quel est le plus long fleuve du monde ?'),
(91, 9, 'Quel scientifique a formulé la théorie de l’évolution ?'),
(92, 9, 'Dans quel pays trouve-t-on la célèbre horloge Big Ben ?'),
(93, 9, 'Quel est l’élément chimique le plus abondant dans l’univers ?'),
(94, 9, 'Quelle est la planète la plus grande du système solaire ?'),
(95, 9, 'Quel est l’animal le plus rapide sur terre ?');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `slug`) VALUES
(1, 'Jeux Vidéo', 'jeux-video'),
(2, 'Sciences', 'sciences'),
(3, 'Programmation', 'programmation'),
(4, 'Cinéma', 'cinema'),
(5, 'Mythologie', 'mythologie'),
(6, 'Animaux', 'animaux'),
(7, 'Sport', 'sport'),
(8, 'Nourriture', 'nourriture'),
(9, 'Culture Général', 'culture-generale');

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DADD4A251E27F6BF` (`question_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_USERNAME` (`username`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7494E853CD175` (`quiz_id`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_32993751853CD175` (`quiz_id`),
  ADD KEY `IDX_3299375199E6F5DF` (`player_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
