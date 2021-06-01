-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 31 mai 2021 à 15:06
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eshop_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idcat` int(11) NOT NULL,
  `nomcat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idcat`, `nomcat`) VALUES
(1, 'Console'),
(2, 'Jeux'),
(3, 'Accessoire ');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `name` varchar(80) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `categorie` int(11) NOT NULL,
  `priceHT` float NOT NULL,
  `priceTTC` float DEFAULT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `reference`, `name`, `description`, `categorie`, `priceHT`, `priceTTC`, `photo`) VALUES
(1, 'ACRYL7481', 'Sony PlayStation 5 Digital Edition', 'Offrez-vous une expérience de jeu unique avec la PlayStation 5. Véritable concentré de technologies de pointe, elle offre un rendu graphique encore plus proche de la façon dont nos yeux voient le monde réel. Pouvant délivrer des graphismes en 8K, elle pousse le réalisme à son paroxysme.', 1, 399, 458.85, 'images/assets/eshop/ps5digital.png'),
(2, 'MAT7489', 'Sony PlayStation 5', 'Offrez-vous une expérience de jeu unique avec la PlayStation 5. Véritable concentré de technologies de pointe, elle offre un rendu graphique encore plus proche de la façon dont nos yeux voient le monde réel. Pouvant délivrer des graphismes en 8K, elle pousse le réalisme à son paroxysme.', 1, 499, 573.85, 'images/assets/eshop/ps5.png'),
(3, 'LIQ74895', 'Resident Evil Village (PS5)', 'Resident Evil a pour ambition de revolutionner le survival horror avec le huitieme episode de la serie Resident Evil Village. Avec des graphismes ultra realistes developpes a l aide du RE Engine le danger guette les joueurs a chaque instant. Quelques annees apres les evenements terrifiants de Resident Evil 7 biohazard le jeu unanimement salue par les critiques Ethan Winters et son epouse Mia commencent au loin une nouvelle vie paisible enfin liberes de leur passe tortueux. Mais le sort s acharne de nouveau sur eux lorsque Chris Redfield du BSAA enleve leur fille. Ethan doit encore une fois affronter l enfer pour retrouver sa fille.', 2, 49, 56.35, 'images/assets/eshop/rvillage.png'),
(4, 'ACC7485', 'Returnal (PS5)', 'Affrontez des ennemis impitoyables et maitrisez des armes uniques. Rassemblez les fragments de souvenir de selene alors qu elle cherche des reponses. Dans ce roguelike a la 3eme personne l environnement change a chaque cycle.', 2, 39, 44.85, 'images/assets/eshop/returnal.png');

--
-- Déclencheurs `produits`
--
DELIMITER $$
CREATE TRIGGER `insertPrix` BEFORE INSERT ON `produits` FOR EACH ROW BEGIN
	IF new.priceTTC is NULL
   	THEN
    SET new.priceTTC = (new.priceHT*1.15);
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatePrix` BEFORE UPDATE ON `produits` FOR EACH ROW BEGIN
    	IF new.priceHT != old.priceHT
        THEN 
        	SET new.priceTTC = (new.priceHT*1.15);
		END IF;
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `url_address` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `rank` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `url_address`, `name`, `email`, `password`, `date`, `rank`) VALUES
(6, '1N4TOX1I2VX3Frg9bKZlWkNFrl5lOYOxm7Cz115f8d1bpmCcp28lN', 'Earthorne', 'eathorne@yahoo.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2021-05-01 18:59:35', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idcat`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodcat` (`categorie`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `email` (`email`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `prodcat` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`idcat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
