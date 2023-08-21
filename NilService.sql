-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : dim. 20 août 2023 à 11:12
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `NilService`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `pseudoClient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresseClient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motPasse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telClient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_08_18_002538_create_vendeurs_table', 1),
(27, '2023_08_18_002703_create_supports_table', 1),
(28, '2023_08_18_002713_create_clients_table', 1),
(29, '2023_08_18_002731_create_produits_table', 1),
(30, '2023_08_18_002758_create_prestataires_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prestataires`
--

CREATE TABLE `prestataires` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomPrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailPrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codePremiumPar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codePrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paysPrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `villePrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quartierPrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoriePrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telPrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scanCNI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photoPrest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photoAvecCNI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomProduit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixProduit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorieProduit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numContacter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phtoProduit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionProduit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomSup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailSup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motPass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telSup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positionSup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vendeurs`
--

CREATE TABLE `vendeurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codePremiumPar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paysVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `villeVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quartierVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomBoutique` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieuBoutique` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusVendeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `prestataires`
--
ALTER TABLE `prestataires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vendeurs`
--
ALTER TABLE `vendeurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prestataires`
--
ALTER TABLE `prestataires`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vendeurs`
--
ALTER TABLE `vendeurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
