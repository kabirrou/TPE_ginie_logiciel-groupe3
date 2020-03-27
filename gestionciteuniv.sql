-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 21 mars 2020 à 18:20
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionciteuniv`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `idAuthenti` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `IDLOCA` int(11) DEFAULT NULL,
  `IDPROPRIE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authentification`
--

INSERT INTO `authentification` (`idAuthenti`, `login`, `password`, `IDLOCA`, `IDPROPRIE`) VALUES
(1, 'kabirou', 'kabirou', NULL, 1),
(2, 'bouba', 'tizi', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categoriechambre`
--

CREATE TABLE `categoriechambre` (
  `idCategorie` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `typeCategorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categoriechambre`
--

INSERT INTO `categoriechambre` (`idCategorie`, `description`, `typeCategorie`) VALUES
(1, 'VIP', 'Moderne'),
(2, 'Non VIP', 'Moderne');

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `idChambre` int(11) NOT NULL,
  `nomchambre` varchar(255) NOT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `prix` float NOT NULL,
  `IDCATEGORIE` int(11) DEFAULT NULL,
  `IDCITE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`idChambre`, `nomchambre`, `photos`, `prix`, `IDCATEGORIE`, `IDCITE`) VALUES
(1, 'CH1', NULL, 1500, 1, 1),
(2, 'CH2', NULL, 1500, 2, 1),
(3, 'CH3', NULL, 1500, 2, 1),
(4, 'CH4', NULL, 1500, 1, 1),
(5, 'CH5', NULL, 1500, 1, 1),
(6, 'CH6', NULL, 1500, 1, 1),
(7, 'CH7', NULL, 1500, NULL, 1),
(8, 'CH8', NULL, 1500, NULL, 1),
(9, 'h21', NULL, 17000, NULL, 1),
(10, 'h22', NULL, 17000, NULL, 1),
(11, 'h23', NULL, 17000, NULL, 1),
(12, 'h24', NULL, 17000, NULL, 1),
(13, 'h25', NULL, 17000, NULL, 1),
(14, 'h26', NULL, 17000, NULL, 1),
(15, 'h27', NULL, 17000, NULL, 1),
(16, 'h28', NULL, 17000, NULL, 1),
(17, 'kk1', NULL, 17000, NULL, 3),
(18, 'kk2', NULL, 17000, NULL, 3),
(19, 'kk3', NULL, 17000, NULL, 3),
(20, 'kk4', NULL, 17000, NULL, 3),
(21, 'kk5', NULL, 17000, NULL, 3),
(22, 'kk6', NULL, 17000, NULL, 3),
(23, 'kk7', NULL, 17000, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `cite`
--

CREATE TABLE `cite` (
  `idCite` int(11) NOT NULL,
  `descriptionCite` varchar(255) NOT NULL,
  `nomCite` varchar(255) NOT NULL,
  `nombreChambre` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `IDPOSSITION` int(11) DEFAULT NULL,
  `IDPROPRIETAIRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cite`
--

INSERT INTO `cite` (`idCite`, `descriptionCite`, `nomCite`, `nombreChambre`, `photo`, `IDPOSSITION`, `IDPROPRIETAIRE`) VALUES
(1, 'VIP', 'Kabirou cite', 8, NULL, 1, 1),
(3, 'b', 'boubacity', 7, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `locataire`
--

CREATE TABLE `locataire` (
  `IdLocataire` int(11) NOT NULL,
  `adresseEmail` varchar(255) NOT NULL,
  `nomLocataire` varchar(255) NOT NULL,
  `numerocni` varchar(255) NOT NULL,
  `prenomLocataire` varchar(255) DEFAULT NULL,
  `sexelocataire` varchar(255) DEFAULT NULL,
  `statuSocial` varchar(255) DEFAULT NULL,
  `IDCHAMBRE` int(11) DEFAULT NULL,
  `IDCITE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `possition`
--

CREATE TABLE `possition` (
  `idpossition` int(11) NOT NULL,
  `distince` float NOT NULL,
  `quartier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `possition`
--

INSERT INTO `possition` (`idpossition`, `distince`, `quartier`) VALUES
(1, 1, 'Baouleol'),
(2, 2, 'Bitoare');

-- --------------------------------------------------------

--
-- Structure de la table `proprietaire`
--

CREATE TABLE `proprietaire` (
  `idProprietaire` int(11) NOT NULL,
  `adresseEmail` varchar(255) DEFAULT NULL,
  `nomProprietaire` varchar(255) DEFAULT NULL,
  `numeroCni` varchar(255) DEFAULT NULL,
  `prenomProprietaire` varchar(255) DEFAULT NULL,
  `sexeProprietaire` varchar(255) DEFAULT NULL,
  `statuSocial` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `proprietaire`
--

INSERT INTO `proprietaire` (`idProprietaire`, `adresseEmail`, `nomProprietaire`, `numeroCni`, `prenomProprietaire`, `sexeProprietaire`, `statuSocial`) VALUES
(1, 'kabirou@gmail.com', 'kabirou', '123456', 'tizi', 'homme', 'Celibataire'),
(2, 'bouba@gmail.com', 'bouba', '76543', 'TIZI', 'Homme', 'celibataire');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD PRIMARY KEY (`idAuthenti`),
  ADD KEY `FKDE61EB9B47357040` (`IDPROPRIE`),
  ADD KEY `FKDE61EB9B974E427E` (`IDLOCA`);

--
-- Index pour la table `categoriechambre`
--
ALTER TABLE `categoriechambre`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`idChambre`),
  ADD KEY `FK8F4375048C7E1875` (`IDCATEGORIE`),
  ADD KEY `FK8F4375046ACA8A55` (`IDCITE`);

--
-- Index pour la table `cite`
--
ALTER TABLE `cite`
  ADD PRIMARY KEY (`idCite`),
  ADD KEY `FK200D77E1B80E6F` (`IDPROPRIETAIRE`),
  ADD KEY `FK200D7790C02C35` (`IDPOSSITION`);

--
-- Index pour la table `locataire`
--
ALTER TABLE `locataire`
  ADD PRIMARY KEY (`IdLocataire`),
  ADD KEY `FK3012BE2E6260ED41` (`IDCHAMBRE`),
  ADD KEY `FK3012BE2E6ACA8A55` (`IDCITE`);

--
-- Index pour la table `possition`
--
ALTER TABLE `possition`
  ADD PRIMARY KEY (`idpossition`);

--
-- Index pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  ADD PRIMARY KEY (`idProprietaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authentification`
--
ALTER TABLE `authentification`
  MODIFY `idAuthenti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categoriechambre`
--
ALTER TABLE `categoriechambre`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `idChambre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `cite`
--
ALTER TABLE `cite`
  MODIFY `idCite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `locataire`
--
ALTER TABLE `locataire`
  MODIFY `IdLocataire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `possition`
--
ALTER TABLE `possition`
  MODIFY `idpossition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  MODIFY `idProprietaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD CONSTRAINT `FKDE61EB9B47357040` FOREIGN KEY (`IDPROPRIE`) REFERENCES `proprietaire` (`idProprietaire`),
  ADD CONSTRAINT `FKDE61EB9B974E427E` FOREIGN KEY (`IDLOCA`) REFERENCES `locataire` (`IdLocataire`);

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `FK8F4375046ACA8A55` FOREIGN KEY (`IDCITE`) REFERENCES `cite` (`idCite`),
  ADD CONSTRAINT `FK8F4375048C7E1875` FOREIGN KEY (`IDCATEGORIE`) REFERENCES `categoriechambre` (`idCategorie`);

--
-- Contraintes pour la table `cite`
--
ALTER TABLE `cite`
  ADD CONSTRAINT `FK200D7790C02C35` FOREIGN KEY (`IDPOSSITION`) REFERENCES `possition` (`idpossition`),
  ADD CONSTRAINT `FK200D77E1B80E6F` FOREIGN KEY (`IDPROPRIETAIRE`) REFERENCES `proprietaire` (`idProprietaire`);

--
-- Contraintes pour la table `locataire`
--
ALTER TABLE `locataire`
  ADD CONSTRAINT `FK3012BE2E6260ED41` FOREIGN KEY (`IDCHAMBRE`) REFERENCES `chambre` (`idChambre`),
  ADD CONSTRAINT `FK3012BE2E6ACA8A55` FOREIGN KEY (`IDCITE`) REFERENCES `cite` (`idCite`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
