-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : shareddb-g.hosting.stackcp.net
-- Généré le :  mer. 20 fév. 2019 à 17:26
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `abrarimo-3731fbbb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-01-28 15:13:43', '2019-01-28 15:13:43'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-01-28 15:13:43', '2019-01-28 15:13:43');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `sujet`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'anas', 'anasjelloule@gmail.com', 'anas', NULL, '2019-02-16 14:26:49', '2019-02-16 14:26:49', NULL),
(7, 'asas', 'anasjelloule@gmail.com', 'a', NULL, '2019-02-16 14:34:33', '2019-02-16 14:34:33', NULL),
(8, 'anas', 'anasjelloule@gmail.com', 'azdazd', NULL, '2019-02-16 14:40:46', '2019-02-16 14:40:46', NULL),
(9, 'anas', 'anasjelloule@gmail.com', 'anas', NULL, '2019-02-16 15:27:56', '2019-02-16 15:27:56', NULL),
(10, 'anas', 'anasjelloule@gmail.com', 'anas', NULL, '2019-02-16 15:30:26', '2019-02-16 15:30:26', NULL),
(11, 'anas', 'anasjelloule@gmail.com', '025', NULL, '2019-02-16 15:36:00', '2019-02-16 15:36:00', NULL),
(12, 'anas', 'anasjelloule2@gmail.com', 'as', NULL, '2019-02-16 15:37:51', '2019-02-16 15:37:51', NULL),
(13, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-16 15:38:56', '2019-02-16 15:38:56', NULL),
(14, 'anas', 'anasjelloule@gmail.com', 'as', NULL, '2019-02-16 15:39:28', '2019-02-16 15:39:28', NULL),
(15, 'anas', 'anasjelloule@gmail.com', 'as', NULL, '2019-02-16 15:40:11', '2019-02-16 15:40:11', NULL),
(16, 'anas', 'anasjelloule@gmail.com', 'as', NULL, '2019-02-16 15:42:26', '2019-02-16 15:42:26', NULL),
(17, 'anas', 'anasjelloule@gmail.com', 'asas', NULL, '2019-02-16 15:43:46', '2019-02-16 15:43:46', NULL),
(18, 'anas', 'anasjelloule@gmail.com', 'anas', NULL, '2019-02-16 15:45:58', '2019-02-16 15:45:58', NULL),
(19, 'anas', 'anasjelloule@gmail.com', 'anasjellouleas', NULL, '2019-02-16 15:46:54', '2019-02-16 15:46:54', NULL),
(20, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:00:25', '2019-02-20 14:00:25', NULL),
(21, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:02:00', '2019-02-20 14:02:00', NULL),
(22, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:02:04', '2019-02-20 14:02:04', NULL),
(23, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:03:22', '2019-02-20 14:03:22', NULL),
(24, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:03:50', '2019-02-20 14:03:50', NULL),
(25, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:03:53', '2019-02-20 14:03:53', NULL),
(26, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:03:56', '2019-02-20 14:03:56', NULL),
(27, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:04:24', '2019-02-20 14:04:24', NULL),
(28, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:05:44', '2019-02-20 14:05:44', NULL),
(29, 'anas jelloul', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:06:55', '2019-02-20 14:06:55', NULL),
(30, 'anas jelloul', 'anasjelloule2@gmail.com', 'as', NULL, '2019-02-20 14:07:10', '2019-02-20 14:07:10', NULL),
(31, 'anas jelloul', 'anasjelloule2@gmail.com', 'as', NULL, '2019-02-20 14:11:36', '2019-02-20 14:11:36', NULL),
(32, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:12:27', '2019-02-20 14:12:27', NULL),
(33, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:14:03', '2019-02-20 14:14:03', NULL),
(34, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:14:27', '2019-02-20 14:14:27', NULL),
(35, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:15:46', '2019-02-20 14:15:46', NULL),
(36, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:17:02', '2019-02-20 14:17:02', NULL),
(37, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:18:11', '2019-02-20 14:18:11', NULL),
(38, 'anas jelloul', 'anasjelloule2@gmail.com', 'as', NULL, '2019-02-20 14:18:28', '2019-02-20 14:18:28', NULL),
(39, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:26:27', '2019-02-20 14:26:27', NULL),
(40, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:27:04', '2019-02-20 14:27:04', NULL),
(41, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:27:57', '2019-02-20 14:27:57', NULL),
(42, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:28:04', '2019-02-20 14:28:04', NULL),
(43, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:28:15', '2019-02-20 14:28:15', NULL),
(44, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:29:15', '2019-02-20 14:29:15', NULL),
(45, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:36:18', '2019-02-20 14:36:18', NULL),
(46, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:37:35', '2019-02-20 14:37:35', NULL),
(47, 'anas', 'anasjelloule2@gmail.com', 'anas', NULL, '2019-02-20 14:42:57', '2019-02-20 14:42:57', NULL),
(48, 'anas jelloul', 'anasjelloule3@gmail.com', 'anas', NULL, '2019-02-20 14:51:23', '2019-02-20 14:51:23', NULL),
(49, 'anas jelloul', 'anasjelloule3@gmail.com', 'anas', NULL, '2019-02-20 14:51:43', '2019-02-20 14:51:43', NULL),
(50, 'anas jelloul', 'anasjelloule3@gmail.com', 'anas', NULL, '2019-02-20 14:51:50', '2019-02-20 14:51:50', NULL),
(51, 'anas jelloul', 'anasjelloule3@gmail.com', 'anas', NULL, '2019-02-20 14:52:20', '2019-02-20 14:52:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(57, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 9, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 2),
(59, 9, 'col', 'code_editor', 'Col', 0, 1, 1, 1, 1, 1, '{}', 3),
(60, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(61, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(62, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(63, 6, 'header', 'select_dropdown', 'Header', 1, 1, 1, 1, 1, 1, '{\"default\":\"header1\",\"options\":{\"header1\":\"header1\",\"header2\":\"header2\"}}', 4),
(64, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 11, 'name', 'text', 'Name', 1, 1, 1, 0, 0, 1, '{}', 2),
(66, 11, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 1, '{}', 3),
(67, 11, 'sujet', 'text', 'Sujet', 1, 1, 1, 0, 0, 1, '{}', 4),
(68, 11, 'message', 'text', 'Message', 0, 1, 1, 0, 0, 1, '{}', 5),
(69, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(70, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(71, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-01-28 15:13:29', '2019-01-28 15:13:29'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-01-28 15:13:29', '2019-01-28 15:13:29'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-01-28 15:13:29', '2019-01-28 15:13:29'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-01-28 15:13:42', '2019-01-28 15:13:42'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-01-28 15:13:43', '2019-01-28 15:13:43'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2019-01-28 15:13:45', '2019-01-30 10:23:26'),
(8, 'slider', 'slider', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-28 15:58:38', '2019-01-28 15:58:38'),
(9, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-28 16:02:10', '2019-01-28 16:02:10'),
(11, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-20 13:58:03', '2019-02-20 14:24:34');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-01-28 15:13:31', '2019-01-28 15:13:31'),
(2, 'Top_menu', '2019-01-29 07:58:48', '2019-02-07 10:51:47');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-01-28 15:13:31', '2019-01-28 15:13:31', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-01-28 15:13:31', '2019-01-28 15:58:55', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-01-28 15:13:31', '2019-01-28 15:13:31', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-01-28 15:13:31', '2019-01-28 15:13:31', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2019-01-28 15:13:31', '2019-02-20 14:23:32', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-01-28 15:13:31', '2019-01-28 15:58:56', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-01-28 15:13:31', '2019-01-28 15:58:56', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-01-28 15:13:31', '2019-01-28 15:58:56', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-01-28 15:13:31', '2019-01-28 15:58:56', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2019-01-28 15:13:31', '2019-02-20 14:23:32', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2019-01-28 15:13:42', '2019-01-28 15:58:56', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2019-01-28 15:13:44', '2019-01-28 15:58:56', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2019-01-28 15:13:47', '2019-01-28 15:58:56', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-01-28 15:13:50', '2019-01-28 15:58:56', 'voyager.hooks', NULL),
(16, 1, 'Sliders', '', '_self', 'voyager-photos', '#000000', NULL, 9, '2019-01-28 16:02:10', '2019-02-20 14:23:32', 'voyager.sliders.index', 'null'),
(17, 2, 'ACCUEIL', '/', '_self', NULL, '#000000', NULL, 1, '2019-01-29 08:03:37', '2019-02-19 13:47:11', NULL, ''),
(18, 2, 'ABRAR IMMO', '/abrar-immo', '_self', NULL, '#000000', NULL, 2, '2019-01-29 08:03:52', '2019-02-20 13:45:34', NULL, ''),
(19, 2, 'Nos projets', '/nos-projet', '_self', NULL, '#000000', NULL, 3, '2019-01-29 08:04:03', '2019-02-20 13:45:44', NULL, ''),
(20, 2, 'Actualités', '/actualite', '_self', NULL, '#000000', NULL, 4, '2019-01-29 08:04:18', '2019-02-20 13:45:53', NULL, ''),
(21, 2, 'services', '#', '_self', NULL, '#000000', NULL, 5, '2019-01-29 08:04:30', '2019-01-29 08:10:08', NULL, ''),
(22, 2, 'contact', '/contacts', '_self', NULL, '#000000', NULL, 6, '2019-01-29 08:04:40', '2019-02-20 13:46:15', NULL, ''),
(23, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 8, '2019-02-20 13:58:03', '2019-02-20 14:23:32', 'voyager.contacts.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'header1',
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `header`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', '', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(2, 1, 'Nos Projet', 'header2', NULL, '<div class=\"container-fluid space-3-top mt-9 px-9\">\r\n<div class=\"row justify-content-between\">\r\n<div class=\"col-md-12\">\r\n<div class=\"jumbotron\">\r\n<h1><strong>Lotissement Abrar Sidi Othmane</strong></h1>\r\n<div class=\"row justify-content-between align-items-center\">\r\n<div class=\"col-md-6\"><img src=\"/storage/pages/H4K09qTTIlCyyP5wlRaw4flyIkWt6Ni5OgyDCh0Y.png\" /></div>\r\n<div class=\"col-md-6\"><a class=\"btn btn-primary btn-block\" href=\"#\">DEMANDE D\'INFORMATIONS</a> <a class=\"btn btn-primary btn-block\" href=\"#\">PRISE DE RENDEZ-VOUS</a> <a class=\"btn btn-primary btn-block\" href=\"#\">TELECHARGER LA BROCHURE</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container projets\">\r\n<div class=\"row justify-content-between\">\r\n<div class=\"col-md-12\">\r\n<ul id=\"myTab\" class=\"nav nav-tabs\" role=\"tablist\">\r\n<li class=\"nav-item\"><a id=\"home-tab\" class=\"nav-link active show\" role=\"tab\" href=\"#home\" data-toggle=\"tab\" aria-controls=\"home\" aria-selected=\"false\">PR&Eacute;SENTATION</a></li>\r\n<li class=\"nav-item\"><a id=\"profile-tab\" class=\"nav-link \" role=\"tab\" href=\"#profile\" data-toggle=\"tab\" aria-controls=\"profile\" aria-selected=\"true\">position</a></li>\r\n</ul>\r\n<div id=\"myTabContent\" class=\"tab-content px-5 py-5\">\r\n<div id=\"home\" class=\"tab-pane fade active show\" role=\"tabpanel\" aria-labelledby=\"home-tab\">\r\n<h2>Le Lotissement Abrar Sidi Othmane vous offre une grande opportunit&eacute; d&rsquo;investissement</h2>\r\n<p>Situ&eacute; en plein coeur du quartier sidi Othman sur le Boulevard Mohammed Jodar, le lotissement est un projet int&eacute;gr&eacute; dot&eacute; d&rsquo;&eacute;quipements importants et &agrave; proximit&eacute; de diverses commodit&eacute;s pour une vie quotidienne de qualit&eacute;. Notamment le centre commercial Marjane Sidi Othman, Les jardins de Sidi Othman. Les grands axes routiers &agrave; savoir Boulevard Oulad Ziyane, Autoroute et la station de tramway Attacharok</p>\r\n<div>\r\n<h2>Produits</h2>\r\n<img class=\"mx-5\" src=\"/storage/pages/r_4.png\" alt=\"r+4\" /> <img class=\"mx-5\" src=\"/storage/pages/r_3.png\" alt=\"r+3\" /></div>\r\n<div class=\"text-center mt-5\">\r\n<h2 class=\"text-left mb-8\">Equipements</h2>\r\n<img src=\"/storage/pages/equipment.png\" /></div>\r\n</div>\r\n<div id=\"profile\" class=\"tab-pane fade \" role=\"tabpanel\" aria-labelledby=\"profile-tab\">\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Saepe quod amet maiores ducimus nihil reiciendis, culpa laboriosam facere alias enim vitae nam excepturi harum nisi ratione illo nemo tenetur architecto. Ab, dolorum sit accusantium veritatis sint voluptatibus magnam minima quae nobis, iusto, voluptas repellat deleniti voluptatem ad quo nostrum amet.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, 'nos-projet', NULL, NULL, 'ACTIVE', '2019-01-29 13:55:14', '2019-02-07 11:17:53'),
(3, 1, 'ACCUEIL', 'header1', NULL, '<p>&nbsp;</p>\r\n<!-- Hero Section -->\r\n<div class=\"gradient-overlay-half-dark-v3 bg-img-hero d-none\" style=\"background-image: url(\'img/bg.jpg\');\"><!-- Main Content-->\r\n<div class=\"d-lg-flex align-items-end bg-height-100 pb-5\">\r\n<div class=\"container \">\r\n<div class=\"row justify-content-end align-items-lg-center\">\r\n<div class=\"col-md-12 text-right\"><img src=\"img/contact.png\" alt=\"contact\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- About -->\r\n<div class=\"container space-2 space-3-bottom about\">\r\n<div class=\"row justify-content-between\">\r\n<div class=\"col-md-12 text-center\">\r\n<h3>Qui sommes nous</h3>\r\n<p class=\"my-5\">Notre slogan &laquo; L&rsquo;investissement s&ucirc;r &raquo; traduit parfaitement l&rsquo;&eacute;tat d&rsquo;esprit dans lequel nous travaillons pour r&eacute;pondre aux nouveaux besoins du march&eacute; de l&rsquo;immobilier parce-que nous consid&eacute;rons que l&rsquo;achat d&rsquo;un bien immobilier est investissement de vie. Abrar immo est un promoteur immobilier sp&eacute;cialis&eacute; dans le d&eacute;veloppement de lotissements r&eacute;sidentiels et la construction d&rsquo;immeubles.</p>\r\n<a href=\"/abrar-immo\"> <img src=\"img/lire_suite.png\" alt=\"contact\" /></a></div>\r\n</div>\r\n</div>\r\n<!-- End About --><hr class=\"my-0\" /><!-- plan -->\r\n<div class=\"container-fluid plan\">\r\n<div class=\"row justify-content-center bg-primary\">\r\n<div class=\"col-md-6 p-0\"><img class=\"img-fluid w-100\" src=\"img/map_left.png\" alt=\"plan\" /></div>\r\n<div class=\"col-md-6 p-0\"><img class=\"img-fluid w-100\" style=\"border-left: 3px solid white;\" src=\"img/map_right.png\" alt=\"map\" /></div>\r\n<div class=\"col-md-8 space-2\">\r\n<p class=\"text-white\" style=\"font-size: 30px;\">Le projet la Perle d&rsquo;Abrar de Berrechid vous offre des lots de terrains viabilis&eacute;s et &eacute;quip&eacute;s de type R +2 R +3 R +4 Diff&eacute;rentes superficies sont disponibles &agrave; partir de 80 m&egrave;tres carr&eacute;s.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- end plan -->\r\n<p>&nbsp;</p>\r\n<!-- no realisation -->\r\n<div class=\"container-fluid realisation space-1-top\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-md-12\"><!-- Slick Carousel -->\r\n<div class=\"js-slick-carousel u-slick\" data-autoplay=\"true\" data-speed=\"2000\" data-infinite=\"true\" data-slides-show=\"5\">&nbsp;</div>\r\n<!-- End Slick Carousel --></div>\r\n<div class=\"col-md-12 text-center\"><img class=\"img-fluid w-100\" src=\"img/hover.png\" alt=\"hover\" />\r\n<h2 class=\"text-primary space-1 font-weight-bold\">Service clients: 0522 78 76 61 - 0666 200 619</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- end nos realisation  -->\r\n<p>&nbsp;</p>\r\n<!-- no projects -->\r\n<div class=\"container-fluid projet\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-md-12 p-0 text-center\">\r\n<h2 class=\"mb-9 space-1 bg-primary text-white font-weight-bold\">Nos projets</h2>\r\n<iframe src=\"https://www.youtube.com/embed/p-hItnLpaq8\" width=\"1170\" height=\"571\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\r\n</div>\r\n</div>\r\n<!-- end nos projects  -->\r\n<p>&nbsp;</p>\r\n<!-- block_3 -->\r\n<div class=\"container-fluid space-2\">\r\n<div class=\"row justify-content-lg-center\">\r\n<div class=\"col-md-6 col-lg-4\"><!-- diamond -->\r\n<div class=\"text-center px-lg-4\">\r\n<div class=\"mb-2\"><img class=\"mb-3 \" src=\"img/diamond.png\" alt=\"diamond\" />\r\n<h4 class=\"text-primary px-xl-6\">l&rsquo;immobilier avec grand espace nature</h4>\r\n</div>\r\n<blockquote class=\"text-secondary mb-0\">Acqu&eacute;rir votre appartement ou votre bien immobilier dans nos projets, c&rsquo;est investir dans un cadre naturel avec des espaces verts d&eacute;di&eacute;s &agrave; votre bien-&ecirc;tre durable</blockquote>\r\n</div>\r\n<!-- End diamond --></div>\r\n<div class=\"col-md-6 col-lg-4\"><!-- diamond -->\r\n<div class=\"text-center px-lg-4\">\r\n<div class=\"mb-2\"><img class=\"mb-3 \" src=\"img/arc.png\" alt=\"arc\" />\r\n<h4 class=\"text-primary px-xl-6\">Votre logement &agrave; des prix adapt&eacute;s &agrave; votre budget</h4>\r\n</div>\r\n<blockquote class=\"text-secondary mb-0\">Quelque soit votre budget, nous veillons &agrave; vous offrir la meilleure qualit&eacute; de logement avec des facilit&eacute;s de paiement personnalis&eacute;es.</blockquote>\r\n</div>\r\n<!-- End diamond --></div>\r\n<div class=\"col-md-6 col-lg-4\"><!-- diamond -->\r\n<div class=\"text-center px-lg-4\">\r\n<div class=\"mb-2\"><img class=\"mb-3 \" src=\"img/star.png\" alt=\"diamond\" />\r\n<h4 class=\"text-primary px-xl-6\">Les emplacements bien &eacute;tudi&eacute;s pour votre avenir</h4>\r\n</div>\r\n<blockquote class=\"text-secondary mb-0\">Nous choisissons les meilleurs emplacements pour nos projets afin de garantir la proximit&eacute;, les commodit&eacute;s et l&rsquo;environnement.</blockquote>\r\n</div>\r\n<!-- End diamond --></div>\r\n</div>\r\n</div>\r\n<!-- end block_3 -->\r\n<p>&nbsp;</p>\r\n<!-- block 4 -->\r\n<div class=\"container-fluid block_text\">\r\n<div class=\"row justify-content-center bg-primary\">\r\n<div class=\"col-md-8 space-2\">\r\n<p class=\"text-white\">Faisant partie du groupe Abrar Invest, Abrar immo met tout son savoir-faire au profit pour associer le caract&egrave;re de ces b&acirc;timents &agrave; une architecture de qualit&eacute; et donner vie &agrave; tout ces projets . <br /> Ceci en se basant sur 3 principes fondamentaux: <br /><br /> Choix du terrain avec des situations strat&eacute;giques Donner une grande partie aux espaces verts et &eacute;quipements de proximit&eacute; Assurer une construction et un service apr&egrave;s vente de qualit&eacute;.<br /> Chez Abrar immo, nous donnons le meilleur de nous-m&ecirc;mes pour vous proposer le meilleur des projets.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- end block 4 -->\r\n<p>&nbsp;</p>\r\n<!-- block 4 -->\r\n<div class=\"container-fluid space-2-bottom partenaires\">\r\n<div class=\"row\"><!-- ========== LEFT ========== -->\r\n<div class=\"col-md-12\">\r\n<h2 class=\"mb-9 space-1 text-center font-weight-bold\">Nos partenaires</h2>\r\n</div>\r\n</div>\r\n<!-- Slick Carousel -->\r\n<div class=\"js-slick-carousel u-slick\" data-autoplay=\"true\" data-speed=\"2000\" data-infinite=\"true\" data-slides-show=\"5\">\r\n<div class=\"js-slide\"><img class=\"u-clients\" src=\"img/logos/logo1.png\" alt=\"Image Description\" /></div>\r\n<div class=\"js-slide\"><img class=\"u-clients\" src=\"img/logos/logo2.png\" alt=\"Image Description\" /></div>\r\n<div class=\"js-slide\"><img class=\"u-clients\" src=\"img/logos/logo3.png\" alt=\"Image Description\" /></div>\r\n<div class=\"js-slide\"><img class=\"u-clients\" src=\"img/logos/logo4.png\" alt=\"Image Description\" /></div>\r\n<div class=\"js-slide\"><img class=\"u-clients\" src=\"img/logos/logo5.png\" alt=\"Image Description\" /></div>\r\n<div class=\"js-slide\"><img class=\"u-clients\" src=\"img/logos/logo1.png\" alt=\"Image Description\" /></div>\r\n</div>\r\n<!-- End Slick Carousel --></div>\r\n<!-- end block 4 -->\r\n<p>&nbsp;</p>', NULL, 'accueil', NULL, NULL, 'ACTIVE', '2019-01-29 14:47:00', '2019-02-19 20:54:44'),
(4, 1, 'ABRAR IMMO', 'header1', NULL, '<div id=\"aboutslider\" class=\"carousel slide\" data-ride=\"carousel\">\r\n<div class=\"carousel-inner\" role=\"listbox\">\r\n<div class=\"carousel-item active\"><img class=\"w-100\" src=\"/storage/pages/about_slider.png\" alt=\"First slide\" data-src=\"/storage/pages/about_slider.png\" /></div>\r\n<div class=\"carousel-item\"><img class=\"w-100\" src=\"/storage/pages/about_slider.png\" alt=\"Second slide\" data-src=\"/storage/pages/about_slider.png\" /></div>\r\n</div>\r\n<a class=\"carousel-control-prev\" role=\"button\" href=\"#aboutslider\" data-slide=\"prev\"> <span class=\"sr-only\">Previous</span> </a> <a class=\"carousel-control-next\" role=\"button\" href=\"#aboutslider\" data-slide=\"next\"> <span class=\"sr-only\">Next</span> </a></div>\r\n<div class=\"full-width bg-primary\">\r\n<div class=\"container space-2 \">\r\n<div class=\"row justify-content-lg-center \">\r\n<div class=\"col-md-6 col-lg-3\">\r\n<div class=\"media pr-lg-4 align-items-center\"><img class=\"max-width-10 mr-3\" src=\"storage/pages/portfolio.png\" alt=\"Image Description\" />\r\n<div class=\"media-body\">\r\n<h3 class=\"counter\" data-count=\"548\">0</h3>\r\n<p class=\"mb-0 text-dark\">projects completed</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 col-lg-3\">\r\n<div class=\"media pr-lg-4 align-items-center\"><img class=\"max-width-10 mr-3\" src=\"storage/pages/clock.png\" alt=\"Image Description\" />\r\n<div class=\"media-body\">\r\n<h3 class=\"counter\" data-count=\"1465\">0</h3>\r\n<p class=\"mb-0 text-dark\">projects completed</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 col-lg-3\">\r\n<div class=\"media pr-lg-4 align-items-center\"><img class=\"max-width-10 mr-3\" src=\"storage/pages/star.png\" alt=\"Image Description\" />\r\n<div class=\"media-body\">\r\n<h3 class=\"counter\" data-count=\"548\">0</h3>\r\n<p class=\"mb-0 text-dark\">projects completed</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 col-lg-3\">\r\n<div class=\"media pr-lg-4 align-items-center\"><img class=\"max-width-10 mr-3\" src=\"storage/pages/like.png\" alt=\"Image Description\" />\r\n<div class=\"media-body\">\r\n<h3 class=\"counter\" data-count=\"548\">0</h3>\r\n<p class=\"mb-0 text-dark\">projects completed</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid\">\r\n<div class=\"row justify-content-center align-items-center bg-gray\">\r\n<div class=\"col-md-6    text-center\"><img src=\"/storage/pages/logo_about.png\" alt=\"log about\" />\r\n<div class=\" \">\r\n<h1>Qui sommes nous</h1>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 bg-white p-6\">\r\n<p class=\"lead\">Notre slogan &laquo; L&rsquo;investissement s&ucirc;r &raquo; traduit parfaitement l&rsquo;&eacute;tat d&rsquo;esprit dans lequel nous travaillons pour r&eacute;pondre aux nouveaux besoins du march&eacute; de l&rsquo;immobilier parce-que nous consid&eacute;rons que l&rsquo;achat d&rsquo;un bien immobilier est investissement de vie. Abrar immo est un promoteur immobilier sp&eacute;cialis&eacute; dans le d&eacute;veloppement de lotissements r&eacute;sidentiels et la construction d&rsquo;immeubles. Faisant partie du groupe Abrar Invest, Abrar immo met tout son savoir-faire au profit pour associer le caract&egrave;re de ces b&acirc;timents &agrave; une architecture de qualit&eacute; et donner vie &agrave; tout ces projets . Ceci en se basant sur 3 principes fondamentaux:</p>\r\n<ul>\r\n<li class=\"text-primary\"><strong>Choix du terrain avec des situations strat&eacute;giques</strong></li>\r\n<li class=\"text-primary\"><strong>Donner une grande partie aux espaces verts et &eacute;quipements de proximit&eacute;</strong></li>\r\n<li class=\"text-primary\"><strong>Assurer une construction et un service apr&egrave;s vente de qualit&eacute;</strong></li>\r\n</ul>\r\n<p class=\"text-dark\"><strong>Chez Abrar immo, nous donnons le meilleur de nous-m&ecirc;mes pour vous proposer le meilleur des projets.</strong></p>\r\n</div>\r\n</div>\r\n</div>', NULL, 'abrar-immo', NULL, NULL, 'ACTIVE', '2019-01-30 11:52:47', '2019-02-07 16:27:40'),
(5, 1, 'Actualites', 'header1', NULL, NULL, NULL, 'actualites', NULL, NULL, 'ACTIVE', '2019-02-19 22:50:16', '2019-02-19 22:50:16');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(2, 'browse_bread', NULL, '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(3, 'browse_database', NULL, '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(4, 'browse_media', NULL, '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(5, 'browse_compass', NULL, '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(6, 'browse_menus', 'menus', '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(7, 'read_menus', 'menus', '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(8, 'edit_menus', 'menus', '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(9, 'add_menus', 'menus', '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(10, 'delete_menus', 'menus', '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(11, 'browse_roles', 'roles', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(12, 'read_roles', 'roles', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(13, 'edit_roles', 'roles', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(14, 'add_roles', 'roles', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(15, 'delete_roles', 'roles', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(16, 'browse_users', 'users', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(17, 'read_users', 'users', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(18, 'edit_users', 'users', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(19, 'add_users', 'users', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(20, 'delete_users', 'users', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(21, 'browse_settings', 'settings', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(22, 'read_settings', 'settings', '2019-01-28 15:13:33', '2019-01-28 15:13:33'),
(23, 'edit_settings', 'settings', '2019-01-28 15:13:34', '2019-01-28 15:13:34'),
(24, 'add_settings', 'settings', '2019-01-28 15:13:34', '2019-01-28 15:13:34'),
(25, 'delete_settings', 'settings', '2019-01-28 15:13:34', '2019-01-28 15:13:34'),
(26, 'browse_categories', 'categories', '2019-01-28 15:13:42', '2019-01-28 15:13:42'),
(27, 'read_categories', 'categories', '2019-01-28 15:13:42', '2019-01-28 15:13:42'),
(28, 'edit_categories', 'categories', '2019-01-28 15:13:42', '2019-01-28 15:13:42'),
(29, 'add_categories', 'categories', '2019-01-28 15:13:42', '2019-01-28 15:13:42'),
(30, 'delete_categories', 'categories', '2019-01-28 15:13:43', '2019-01-28 15:13:43'),
(31, 'browse_posts', 'posts', '2019-01-28 15:13:45', '2019-01-28 15:13:45'),
(32, 'read_posts', 'posts', '2019-01-28 15:13:45', '2019-01-28 15:13:45'),
(33, 'edit_posts', 'posts', '2019-01-28 15:13:45', '2019-01-28 15:13:45'),
(34, 'add_posts', 'posts', '2019-01-28 15:13:45', '2019-01-28 15:13:45'),
(35, 'delete_posts', 'posts', '2019-01-28 15:13:45', '2019-01-28 15:13:45'),
(36, 'browse_pages', 'pages', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(37, 'read_pages', 'pages', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(38, 'edit_pages', 'pages', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(39, 'add_pages', 'pages', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(40, 'delete_pages', 'pages', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(41, 'browse_hooks', NULL, '2019-01-28 15:13:50', '2019-01-28 15:13:50'),
(42, 'browse_slider', 'slider', '2019-01-28 15:58:38', '2019-01-28 15:58:38'),
(43, 'read_slider', 'slider', '2019-01-28 15:58:38', '2019-01-28 15:58:38'),
(44, 'edit_slider', 'slider', '2019-01-28 15:58:38', '2019-01-28 15:58:38'),
(45, 'add_slider', 'slider', '2019-01-28 15:58:38', '2019-01-28 15:58:38'),
(46, 'delete_slider', 'slider', '2019-01-28 15:58:38', '2019-01-28 15:58:38'),
(47, 'browse_sliders', 'sliders', '2019-01-28 16:02:10', '2019-01-28 16:02:10'),
(48, 'read_sliders', 'sliders', '2019-01-28 16:02:10', '2019-01-28 16:02:10'),
(49, 'edit_sliders', 'sliders', '2019-01-28 16:02:10', '2019-01-28 16:02:10'),
(50, 'add_sliders', 'sliders', '2019-01-28 16:02:10', '2019-01-28 16:02:10'),
(51, 'delete_sliders', 'sliders', '2019-01-28 16:02:10', '2019-01-28 16:02:10'),
(52, 'browse_contacts', 'contacts', '2019-02-20 13:58:03', '2019-02-20 13:58:03'),
(53, 'read_contacts', 'contacts', '2019-02-20 13:58:03', '2019-02-20 13:58:03'),
(54, 'edit_contacts', 'contacts', '2019-02-20 13:58:03', '2019-02-20 13:58:03'),
(55, 'add_contacts', 'contacts', '2019-02-20 13:58:03', '2019-02-20 13:58:03'),
(56, 'delete_contacts', 'contacts', '2019-02-20 13:58:03', '2019-02-20 13:58:03');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-2\" /></div>\r\n<!-- End Divider --></div>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:50:55'),
(2, 1, 1, 'My Sample Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2 space-3--lg\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-8\" /></div>\r\n<!-- End Divider -->\r\n<p>&nbsp;</p>\r\n</div>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:43:07'),
(3, 1, 1, 'Latest Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-2\" /></div>\r\n<!-- End Divider --></div>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:50:31'),
(4, 1, 1, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2 space-3--lg\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-8\" /></div>\r\n<!-- End Divider -->\r\n<p>&nbsp;</p>\r\n</div>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:43:43'),
(8, 1, 1, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2 space-3--lg\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-8\" /></div>\r\n<!-- End Divider -->\r\n<p>&nbsp;</p>\r\n</div>', 'posts/post4.jpg', 'abrarpost1', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:44:49'),
(9, 1, 1, 'Latest Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2 space-3--lg\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-8\" /></div>\r\n<!-- End Divider -->\r\n<p>&nbsp;</p>\r\n</div>', 'posts/post3.jpg', 'abrarpost2', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:44:23'),
(10, 1, 1, 'My Sample Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<div class=\"container space-2 space-3--lg\"><header class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<h1 class=\"mb-5\">Lorem Ipsum Post</h1>\r\n<!-- Author --> <!-- End Author --></header>\r\n<p>&nbsp;</p>\r\n<!-- Description -->\r\n<div class=\"w-md-75 w-lg-60 mx-md-auto\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider --> <!-- Blockquote -->\r\n<div class=\"text-center\">\r\n<blockquote class=\"blockquote\">Lorem ipsum</blockquote>\r\n<!-- End Blockquote --></div>\r\n<!-- Divider -->\r\n<div class=\"w-75 mx-auto\"><hr class=\"my-5\" /></div>\r\n<!-- End Divider -->\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate earum autem, error unde quos possimus facere, praesentium nostrum hic omnis repellendus, esse dolorem molestiae. Quae assumenda molestiae praesentium, dignissimos eligendi commodi nobis eum quia reiciendis magni rerum illum facilis sunt. Perferendis aspernatur molestiae nisi eaque expedita, voluptas omnis quam sunt?</p>\r\n</div>\r\n<div class=\"w-60 mx-auto\"><hr class=\"mt-5 mb-8\" /></div>\r\n<!-- End Divider -->\r\n<p>&nbsp;</p>\r\n</div>', 'posts/post2.jpg', 'abrarpost3', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-28 15:13:45', '2019-02-20 13:44:13');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `brochure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-01-28 15:13:32', '2019-01-28 15:13:32'),
(2, 'user', 'Normal User', '2019-01-28 15:13:32', '2019-01-28 15:13:32');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Abrar Immo', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2019\\9FdJpt20NEhBTuIcIFEE.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 7, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.facebook', 'Facebook', '#', NULL, 'text', 8, 'Site'),
(13, 'site.twitter', 'Twitter', '#', NULL, 'text', 9, 'Site'),
(14, 'site.instagram', 'Instagram', '#', NULL, 'text', 10, 'Site'),
(15, 'site.youtube', 'youtube', '#', NULL, 'text', 11, 'Site'),
(16, 'site.icon', 'icon', 'settings\\February2019\\5HQFhEJQXk85MIbaunYC.png', NULL, 'image', 4, 'Site'),
(17, 'site.email', 'email', 'contact@abrarimmo.com', NULL, 'text', 12, 'Site'),
(18, 'site.telephone', 'telephone', '+212 (0) 522 78 76 61', NULL, 'text', 13, 'Site'),
(20, 'site.adresse', 'adresse', 'Abrar Invest: Lotissment la colline. N° 11. Sidi Maarouf Casablanca – Maroc', NULL, 'text', 15, 'Site'),
(22, 'site.map', 'map', '<p class=\"w-100 h-100\"><iframe class=\"w-100 h-100\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26601.934670879175!2d-7.6441778026117895!3d33.54709252666533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda7cd48273dd637%3A0xa0506183a588c2b4!2sabrar+invest+(groupe+mojazine)+SA!5e0!3m2!1sfr!2sma!4v1549557439772\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>', NULL, 'rich_text_box', 16, 'Site');

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `col`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'sliders\\January2019\\e9EFOLgmBBeHboIQa6m2.jpg', NULL, NULL, '2019-01-28 16:24:00', '2019-01-30 09:52:06');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-01-28 15:13:47', '2019-01-28 15:13:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-01-28 15:13:48', '2019-01-28 15:13:48'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-01-28 15:13:49', '2019-01-28 15:13:49'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-01-28 15:13:49', '2019-01-28 15:13:49');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anas', 'anasjelloule@gmail.com', 'users/default.png', NULL, '$2y$10$1WjrEuNiCq65i8O4mCFoiua5OVt9oLYKTKZufmBL2EZbIUgVUbN9G', 'zCsZ6gAitBwiIBTSoAfjLt8Hj0rvEl1HwKqSa3qaIMj0GcIF2yPNT8LqEsgm', NULL, '2019-01-28 15:13:43', '2019-01-28 15:13:43');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
