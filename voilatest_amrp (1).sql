-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 10:47 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voilatest_amrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `desc_en` longtext,
  `desc_fr` longtext,
  `active` tinyint(4) DEFAULT '1',
  `image` varchar(200) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `desc_en`, `desc_fr`, `active`, `image`, `sorting`) VALUES
(1, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><br></div></div></div></div></div></div></div></div>', '<div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div><div><div><br style=\"color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></div></div></div></div></div></div></div></div></div></h4></div>', 1, '/images/1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `response` longtext,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `form_id`, `response`, `created_at`, `updated_at`, `active`) VALUES
(1, 1, '<table class=\'table\'><thead><tr><th>First Name</th><th>Email  Address</th><th>Gender</th><th>lang</th><th>Country</th></tr></thead><body><tr><td>fesal ali</td><td>fesalali05@gmail.com</td><td>female</td><td>ar,en,</td><td>syria</td></tr></tbody></table>', '2019-09-12', '2019-09-12', 1),
(2, 1, '<table class=\'table\'><thead><tr><th>First Name</th><th>Email  Address</th><th>Gender</th><th>lang</th><th>Country</th></tr></thead><body><tr><td>fesal ali</td><td>testpage@gmail.com</td><td>female</td><td>ar,en,</td><td>syria</td></tr></tbody></table>', '2019-09-15', '2019-09-15', 1),
(3, 1, '<table class=\'table\'><thead><tr><th>First Name</th><th>Email  Address</th><th>Gender</th><th>lang</th><th>Country</th></tr></thead><body><tr><td>fesal ali</td><td>werew@gmail.com</td><td>female</td><td>ar,en,</td><td>lebanon</td></tr></tbody></table>', '2019-09-15', '2019-09-15', 1),
(4, 1, '<table class=\'table\'><thead><tr><th>age</th><th>First Name</th><th>Email  Address</th><th>Gender</th><th>lang</th><th>Country</th></tr></thead><body><tr><td>123</td><td>fesal</td><td>fesalali05@gmail.com</td><td>female</td><td>ar,en,</td><td>lebanon</td></tr></tbody></table>', '2019-09-15', '2019-09-15', 1),
(5, 1, '<table class=\'table\'><thead><tr><th>age</th><th>First Name</th><th>Email  Address</th><th>Gender</th><th>lang</th><th>Country</th></tr></thead><body><tr><td>26</td><td>Fesal Ali</td><td>fesalali05@gmail.com</td><td>male</td><td>ar,en,</td><td>syria</td></tr></tbody></table>', '2019-09-16', '2019-09-16', 1),
(6, 1, '<table class=\'table\'><thead><tr><th>age</th><th>lang</th><th>Email  Address</th><th>First Name</th><th>Country</th><th>Gender</th></tr></thead><body><tr><td>123</td><td>ar,en,</td><td>fesal@gmail.com</td><td>sdf</td><td>syria</td><td>female</td></tr></tbody></table>', '2019-09-29', '2019-09-29', 1),
(7, 1, '<table class=\'table\'><thead><tr><th>age</th><th>lang</th><th>Email  Address</th><th>First Name</th><th>Country</th><th>Gender</th></tr></thead><body><tr><td>20</td><td>ar,en,</td><td>fesal@gmail.com</td><td>sdf</td><td>syria</td><td>female</td></tr></tbody></table>', '2019-09-29', '2019-09-29', 1),
(8, 1, '<table class=\'table\'><thead><tr><th>age</th><th>lang</th><th>Email  Address</th><th>First Name</th><th>Country</th><th>Gender</th></tr></thead><body><tr><td>22</td><td>ar,en,</td><td>balkis@voila.digital</td><td>Thaer</td><td>lebanon</td><td>female</td></tr></tbody></table>', '2019-10-14', '2019-10-14', 1),
(9, 2, '<table class=\'table\'><thead><tr><th>email</th><th>Email</th><th>Name</th></tr></thead><body><tr><td>eman@voila.digital</td><td>eman,test,</td><td>ايمان</td></tr></tbody></table>', '2019-10-14', '2019-10-14', 1),
(10, 1, '<table class=\'table\'><thead><tr><th>Gender</th><th>Country</th><th>lang</th><th>First Name</th><th>Email  Address</th><th>age</th></tr></thead><body><tr><td></td><td>lebanon</td><td>ar,en,</td><td>23</td><td>fesalali04@gmail.co.com</td><td>132</td></tr></tbody></table>', '2019-11-14', '2019-11-14', 1),
(11, 2, '<table class=\'table\'><thead><tr><th>Name</th><th>Email</th><th>email</th></tr></thead><body><tr><td>fesa</td><td>eman,test,</td><td>fesalali05@gmail.com</td></tr></tbody></table>', '2019-11-14', '2019-11-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalogues`
--

CREATE TABLE `catalogues` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL,
  `breif_en` text,
  `breif_fr` text,
  `image` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `catalogue_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogues`
--

INSERT INTO `catalogues` (`id`, `active`, `sorting`, `name_en`, `name_fr`, `breif_en`, `breif_fr`, `image`, `file`, `catalogue_type_id`) VALUES
(1, 1, NULL, 'Catalogues    test', 'Catalogues    test', '<p>Catalogues&nbsp; &nbsp; test<br></p>', '<p>Catalogues&nbsp; &nbsp; test<br></p>', '/images/1379505571_yqcmA.jpg', 'uploads/1/2020-02/r410a_15_175_ton_specification.pdf', NULL),
(2, 1, NULL, 'catalogs 1', 'catalogs 1', '<p>catalogs 1<br></p>', '<p>catalogs 1<br></p>', '/images/600x450-web.jpg', 'uploads/1/2020-02/mshroaa_aaz_aldyn.txt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalogue_type`
--

CREATE TABLE `catalogue_type` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogue_type`
--

INSERT INTO `catalogue_type` (`id`, `active`, `sorting`, `name_en`, `name_fr`) VALUES
(1, 1, NULL, 'user Guide', 'user Guide');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(500) DEFAULT NULL,
  `name_fr` varchar(500) DEFAULT NULL,
  `breif_en` text,
  `breif_fr` text,
  `image` varchar(1000) DEFAULT NULL,
  `parent_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `active`, `sorting`, `name_en`, `name_fr`, `breif_en`, `breif_fr`, `image`, `parent_id`) VALUES
(10, 1, 2, 'clothes', 'clothes', '<p>clothes<br></p>', '<p>clothes<br></p>', '/images/445.png', 0),
(11, 1, NULL, 'voila fesal', 'voila fesal', '<p>voila fesal</p>', '<p>voila fesal<br></p>', '/images/1379411283_u0kDs.jpg', 9),
(14, 1, 1, 'test1', 'test1', '<p>test1<br></p>', '<p>test1<br></p>', '/images/1379505278_dJQ2u.jpg', 0),
(15, 1, 2, 'test3', 'test3', '<p>test3<br></p>', '<p>test3<br></p>', '/images/111111-4.jpg', 14),
(16, 1, 1, 'test4', 'test4', '<p>test4<br></p>', '<p>test4<br></p>', '/images/1379408521_Owx6R.jpg', 14),
(17, 1, NULL, 'test5', 'test5', '<p>test5<br></p>', '<p>test5<br></p>', '/images/600x450-web.jpg', 16),
(18, 1, NULL, 't-shirt', 't-shirt', '<p>t-shirt<br></p>', '<p>t-shirt<br></p>', '/images/1379317082_NitEU.jpg', 10),
(19, 1, NULL, 'test6', 'test6', '<p>test6<br></p>', '<p>test6<br></p>', '/images/404Page.jpg', 17);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `logo` varchar(1000) DEFAULT NULL,
  `description_en` longtext,
  `description_fr` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-05-30 03:06:59', NULL),
(2, 'Form contact us', 'form_submit_contact_us', 'Form contact us', '<p><b>This is submit from Page Contact Us :</b></p><p><span style=\"font-weight: 700;\">&nbsp;email</span>: [email]&nbsp;<br></p><p><span style=\"font-weight: 700;\">Name</span>&nbsp;: [name]&nbsp;</p><p><b>message</b>: [message]&nbsp;</p><p>Thank You .</p><p><br></p>', 'email for any submit in site', 'Aviation Taiba', 'info@domdomta.com', NULL, '2019-10-10 02:57:35', '2019-10-13 08:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/menu_management/delete/114', 'Delete data Statistic at Menu Management', '', 1, '2019-11-24 07:54:03', NULL),
(1221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/email_receiver/action-selected', 'Delete data 1,3 at Email Receivers', '', 1, '2019-11-24 08:16:23', NULL),
(1222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/logout', 'superadmin@voila.digital logout', '', 1, '2019-11-24 08:38:58', NULL),
(1223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2019-11-24 08:39:13', NULL),
(1224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/logout', 'superadmin@voila.digital logout', '', 1, '2019-11-24 08:41:02', NULL),
(1225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/login', 'admin@voila.com login with IP Address 127.0.0.1', '', 2, '2019-11-24 08:41:43', NULL),
(1226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/logout', 'admin@voila.com logout', '', 2, '2019-11-24 08:41:59', NULL),
(1227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2019-11-24 08:42:08', NULL),
(1228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/statistic_builder/delete/2', 'Delete data Requests Events at Statistic Builder', '', 1, '2019-11-24 08:51:28', NULL),
(1229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8000/modules/email_templates/action-selected', 'Delete data 4,3 at Email Templates', '', 1, '2019-11-24 08:51:47', NULL),
(1230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2019-11-28 11:41:04', NULL),
(1231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'http://localhost:8000/modules/module_generator/delete/58', 'Delete data Test at Module Generator', '', 1, '2019-11-28 11:42:57', NULL),
(1232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/edit-save/124', 'Update data Categories at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>path</td><td>AdminCategoriesControllerGetIndex</td><td>modules/category-tree-view</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>is_front</td><td></td><td></td></tr><tr><td>sorting</td><td>20</td><td></td></tr><tr><td>lang_id</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-19 08:32:04', NULL),
(1233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/edit-save/124', 'Update data Categories at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>modules/category-tree-view</td><td>/modules/category-tree-view</td></tr><tr><td>is_front</td><td></td><td></td></tr><tr><td>sorting</td><td>20</td><td></td></tr><tr><td>lang_id</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-19 08:32:25', NULL),
(1234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/edit-save/124', 'Update data Categories at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>/modules/category-tree-view</td><td>categories</td></tr><tr><td>is_front</td><td></td><td></td></tr><tr><td>sorting</td><td>20</td><td></td></tr><tr><td>lang_id</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-19 08:51:31', NULL),
(1235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/module_generator/delete/59', 'Delete data Test at Module Generator', '', 1, '2020-02-19 08:52:00', NULL),
(1236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data Cars at Categories', '', 1, '2020-02-19 08:54:33', NULL),
(1237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data clothes at Categories', '', 1, '2020-02-19 09:26:13', NULL),
(1238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data voila fesal at Categories', '', 1, '2020-02-19 09:26:41', NULL),
(1239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data boudor at Categories', '', 1, '2020-02-19 09:39:57', NULL),
(1240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data voila2 at Categories', '', 1, '2020-02-19 09:53:26', NULL),
(1241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/edit-save/9', 'Update data Cars at Categories', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2020-02-19 10:59:16', NULL),
(1242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/edit-save/10', 'Update data clothes at Categories', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-19 11:01:39', NULL),
(1243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/delete/13', 'Delete data voila2 at Categories', '', 1, '2020-02-19 11:14:27', NULL),
(1244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/delete/13', 'Delete data  at Categories', '', 1, '2020-02-19 11:14:27', NULL),
(1245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/delete/9', 'Delete data Cars at Categories', '', 1, '2020-02-19 11:16:38', NULL),
(1246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/delete/9', 'Delete data  at Categories', '', 1, '2020-02-19 11:16:38', NULL),
(1247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/delete/12', 'Delete data boudor at Categories', '', 1, '2020-02-19 11:27:05', NULL),
(1248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data test1 at Categories', '', 1, '2020-02-19 11:27:57', NULL),
(1249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data test3 at Categories', '', 1, '2020-02-19 11:42:22', NULL),
(1250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data test4 at Categories', '', 1, '2020-02-19 11:42:47', NULL),
(1251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data test5 at Categories', '', 1, '2020-02-19 11:43:04', NULL),
(1252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data t-shirt at Categories', '', 1, '2020-02-19 11:43:53', NULL),
(1253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/logout', 'superadmin@voila.digital logout', '', 1, '2020-02-19 12:37:55', NULL),
(1254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-19 12:37:57', NULL),
(1255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/add-save', 'Add New Data Products at Menu Management', '', 1, '2020-02-19 12:41:19', NULL),
(1256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/add-save', 'Add New Data add ons at Menu Management', '', 1, '2020-02-19 12:43:46', NULL),
(1257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/add-save', 'Add New Data site settings at Menu Management', '', 1, '2020-02-19 12:45:29', NULL),
(1258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management/edit-save/137', 'Update data add ons at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-th-large</td></tr><tr><td>is_front</td><td></td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr><tr><td>lang_id</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-19 12:46:12', NULL),
(1259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/catalogues/add-save', 'Add New Data Catalogues    test at Catalogues', '', 1, '2020-02-19 12:47:35', NULL),
(1260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-20 05:28:02', NULL),
(1261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/categories/add-save', 'Add New Data test6 at Categories', '', 1, '2020-02-20 05:29:06', NULL),
(1262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-20 13:21:05', NULL),
(1263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/highlights/add-save', 'Add New Data Sample at Highlights', '', 1, '2020-02-20 13:23:38', NULL),
(1264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/highlights/add-save', 'Add New Data sample at Highlights', '', 1, '2020-02-20 13:24:10', NULL),
(1265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/highlights/add-save', 'Add New Data sample at Highlights', '', 1, '2020-02-20 13:24:40', NULL),
(1266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/why_us/add-save', 'Add New Data  at Why Us', '', 1, '2020-02-20 13:53:25', NULL),
(1267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/why_us/add-save', 'Add New Data  at Why Us', '', 1, '2020-02-20 14:01:31', NULL),
(1268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/why_us/add-save', 'Add New Data  at Why Us', '', 1, '2020-02-20 14:01:38', NULL),
(1269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/why_us/add-save', 'Add New Data  at Why Us', '', 1, '2020-02-20 14:01:47', NULL),
(1270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/why_us/add-save', 'Add New Data  at Why Us', '', 1, '2020-02-20 14:01:54', NULL),
(1271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/why_us/add-save', 'Add New Data  at Why Us', '', 1, '2020-02-20 14:02:01', NULL),
(1272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/about_us/add-save', 'Add New Data  at about us', '', 1, '2020-02-20 14:07:54', NULL),
(1273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-21 09:36:03', NULL),
(1274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/about_us/edit-save/1', 'Update data  at about us', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/blog-3.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 10:00:56', NULL),
(1275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/about_us/edit-save/1', 'Update data  at about us', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>desc_en</td><td><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"margin: 0px; padding: 25px 0px 0px; font-family: inherit; color: rgb(56, 55, 60); font-size: 20px; position: relative;\">Welcome to American Pro</h4><h1 style=\"margin-top: 25px; margin-bottom: 0px; padding: 0px; font-size: 30px; font-family: inherit; line-height: 36px; color: rgb(56, 55, 60);\">Heating and air conditioning company</h1></div><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased..</p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased....</p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased....</p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased....<br></p></td><td><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><br></div></div></div></div></div></div></div></div></td></tr><tr><td>desc_fr</td><td><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\">Welcome to American Pro</h4><h1 style=\"margin-top: 25px; margin-bottom: 0px; font-size: 30px; font-family: inherit; line-height: 36px; color: rgb(56, 55, 60); padding: 0px;\">Heating and air conditioning company</h1></div><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased..</p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased....</p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased....</p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px 45px 0px 0px; font-size: 18px; color: rgb(135, 134, 138); line-height: 34px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Afka Group International, Inc. Our company was established in 1992, performing heating and air conditioning services in the U.S.A. and since then we have expanded with importing, exporting, and marketing our products all over the globe. As suppliers, American pro® has been pleased....</p></td><td><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div><div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div><div><br></div></div></div></div></div></div></div></div></div></h4></div><hr><div class=\"hero-title-with-shape\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 16px; font-weight: 600;\"><h4 class=\"heading_with_border\" style=\"font-family: inherit; color: rgb(56, 55, 60); margin: 0px; font-size: 20px; padding: 25px 0px 0px; position: relative;\"><div><div><div><div><div><div><div><div><div><br style=\"color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></div></div></div></div></div></div></div></div></div></h4></div></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 11:47:39', NULL),
(1276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/about_us/edit-save/1', 'Update data  at about us', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/1.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 11:51:33', NULL),
(1277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/highlights/edit-save/1', 'Update data Sample at Highlights', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>image</td><td></td><td>/images/4_(2).jpg</td></tr></tbody></table>', 1, '2020-02-21 11:53:04', NULL),
(1278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/highlights/edit-save/2', 'Update data sample at Highlights', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>image</td><td></td><td>/images/7.jpg</td></tr></tbody></table>', 1, '2020-02-21 11:53:59', NULL),
(1279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/highlights/edit-save/3', 'Update data sample at Highlights', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>image</td><td></td><td>/images/8.jpg</td></tr></tbody></table>', 1, '2020-02-21 11:54:26', NULL),
(1280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/products/add-save', 'Add New Data sample at Products', '', 1, '2020-02-21 12:06:45', NULL),
(1281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/products/add-save', 'Add New Data sample2 at Products', '', 1, '2020-02-21 12:07:15', NULL),
(1282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/products/add-save', 'Add New Data sample3 at Products', '', 1, '2020-02-21 12:07:55', NULL),
(1283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/products/edit-save/3', 'Update data sample3 at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>image</td><td></td><td>/images/1379408251_IDHDy.jpg</td></tr></tbody></table>', 1, '2020-02-21 12:12:27', NULL),
(1284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-21 17:48:42', NULL),
(1285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/add-save', 'Add New Data project 1 at Projects', '', 1, '2020-02-21 17:56:47', NULL),
(1286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/add-save', 'Add New Data project 2 at Projects', '', 1, '2020-02-21 17:58:13', NULL),
(1287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/add-save', 'Add New Data project 3 at Projects', '', 1, '2020-02-21 17:58:30', NULL),
(1288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/add-save', 'Add New Data project 4 at Projects', '', 1, '2020-02-21 17:58:55', NULL),
(1289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/add-save', 'Add New Data project 5 at Projects', '', 1, '2020-02-21 17:59:25', NULL),
(1290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/add-save', 'Add New Data project 6 at Projects', '', 1, '2020-02-21 17:59:49', NULL),
(1291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/edit-save/1', 'Update data project 1 at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/slider-4.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 18:03:34', NULL),
(1292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/edit-save/2', 'Update data project 2 at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/600x450-web.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 18:03:42', NULL),
(1293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/edit-save/3', 'Update data project 3 at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/404Page.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 18:03:52', NULL),
(1294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/edit-save/4', 'Update data project 4 at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/1369316502_uYpBE.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 18:04:05', NULL),
(1295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/edit-save/5', 'Update data project 5 at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/600x450-web.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 18:04:19', NULL),
(1296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/projects/edit-save/6', 'Update data project 6 at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>/images/catalogpicture.jpg</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-21 18:04:36', NULL),
(1297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-22 09:39:26', NULL),
(1298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 1 at Distributors', '', 1, '2020-02-22 09:40:26', NULL),
(1299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 2 at Distributors', '', 1, '2020-02-22 09:40:45', NULL),
(1300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 3 at Distributors', '', 1, '2020-02-22 09:41:01', NULL),
(1301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 4 at Distributors', '', 1, '2020-02-22 09:41:22', NULL),
(1302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 5 at Distributors', '', 1, '2020-02-22 09:41:37', NULL),
(1303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 6 at Distributors', '', 1, '2020-02-22 09:41:52', NULL),
(1304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/distributors/add-save', 'Add New Data sample 6 at Distributors', '', 1, '2020-02-22 09:42:11', NULL),
(1305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/news/add-save', 'Add New Data sample 1 at News', '', 1, '2020-02-22 09:45:44', NULL),
(1306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/news/edit-save/1', 'Update data sample 1 at News', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>image</td><td></td><td>/images/404Page.jpg</td></tr></tbody></table>', 1, '2020-02-22 09:48:26', NULL),
(1307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/news/add-save', 'Add New Data sample 2 at News', '', 1, '2020-02-22 09:48:59', NULL),
(1308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/news/add-save', 'Add New Data sample 3 at News', '', 1, '2020-02-22 09:49:37', NULL),
(1309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/count_projects/add-save', 'Add New Data Water Fan Coil Units at count projects', '', 1, '2020-02-22 09:59:04', NULL),
(1310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/count_projects/add-save', 'Add New Data Washing Machines at count projects', '', 1, '2020-02-22 09:59:13', NULL),
(1311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/count_projects/add-save', 'Add New Data Ceiling & Floor at count projects', '', 1, '2020-02-22 09:59:25', NULL),
(1312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data Home at Menu Management Client', '', 1, '2020-02-22 10:13:41', NULL),
(1313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data products at Menu Management Client', '', 1, '2020-02-22 10:13:57', NULL),
(1314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data about us at Menu Management Client', '', 1, '2020-02-22 10:14:30', NULL),
(1315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data contact us at Menu Management Client', '', 1, '2020-02-22 10:14:54', NULL),
(1316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data news at Menu Management Client', '', 1, '2020-02-22 10:15:43', NULL),
(1317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data FAQ at Menu Management Client', '', 1, '2020-02-22 10:19:04', NULL),
(1318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/edit-save/146', 'Update data about us at Menu Management Client', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>about_us/1</td><td>about_us/</td></tr><tr><td>color</td><td></td><td></td></tr><tr><td>icon</td><td></td><td></td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-02-22 12:07:09', NULL),
(1319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data projects at Menu Management Client', '', 1, '2020-02-22 16:41:53', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/info_site/add-save', 'Add New Data  at Info Site', '', 1, '2020-02-22 17:31:14', NULL),
(1321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/add-save', 'Add New Data projects at Footer Links', '', 1, '2020-02-22 18:03:20', NULL),
(1322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/add-save', 'Add New Data news at Footer Links', '', 1, '2020-02-22 18:03:30', NULL),
(1323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/add-save', 'Add New Data catalogs at Footer Links', '', 1, '2020-02-22 18:03:51', NULL),
(1324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/add-save', 'Add New Data about_us at Footer Links', '', 1, '2020-02-22 18:04:08', NULL),
(1325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/add-save', 'Add New Data contact us at Footer Links', '', 1, '2020-02-22 18:04:27', NULL),
(1326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/add-save', 'Add New Data supports at Footer Links', '', 1, '2020-02-22 18:05:02', NULL),
(1327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/edit-save/3', 'Update data catalogues at Footer Links', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>name_en</td><td>catalogs</td><td>catalogues</td></tr><tr><td>name_fr</td><td>catalogs</td><td>catalogues</td></tr><tr><td>link</td><td>/catalogs</td><td>/catalogues</td></tr></tbody></table>', 1, '2020-02-22 18:05:24', NULL),
(1328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/footer_links/edit-save/4', 'Update data about us at Footer Links', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-22 18:08:37', NULL),
(1329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/catalogue_type/add-save', 'Add New Data user Guide at Catalogue Type', '', 1, '2020-02-22 18:09:45', NULL),
(1330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/logout', 'superadmin@voila.digital logout', '', 1, '2020-02-22 18:10:40', NULL),
(1331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/login', 'superadmin@voila.digital login with IP Address 127.0.0.1', '', 1, '2020-02-22 18:10:42', NULL),
(1332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/catalogues/add-save', 'Add New Data catalogs 1 at Catalogues', '', 1, '2020-02-22 18:11:08', NULL),
(1333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/catalogues/delete-image', 'Delete the image of catalogs 1 at Catalogues', '', 1, '2020-02-22 18:11:43', NULL),
(1334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/catalogues/edit-save/2', 'Update data catalogs 1 at Catalogues', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr><tr><td>image</td><td></td><td>/images/600x450-web.jpg</td></tr><tr><td>file</td><td></td><td>uploads/1/2020-02/mshroaa_aaz_aldyn.txt</td></tr></tbody></table>', 1, '2020-02-22 18:11:55', NULL),
(1335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/menu_management_client/add-save', 'Add New Data catalogues at Menu Management Client', '', 1, '2020-02-22 18:12:51', NULL),
(1336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/faq/add-save', 'Add New Data  at FAQ', '', 1, '2020-02-22 19:19:39', NULL),
(1337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/faq/add-save', 'Add New Data  at FAQ', '', 1, '2020-02-22 19:19:55', NULL),
(1338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/faq/add-save', 'Add New Data  at FAQ', '', 1, '2020-02-22 19:20:09', NULL),
(1339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/modules/products/edit-save/1', 'Update data sample at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-22 19:47:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `is_front` tinyint(4) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `is_front`, `id_cms_privileges`, `sorting`, `lang_id`, `created_at`, `updated_at`) VALUES
(121, 'Pages', 'Route', 'AdminLandingPagesControllerGetIndex', 'normal', 'fa fa-list-alt', 115, 1, 0, NULL, 1, 1, NULL, '2019-11-13 06:04:34', '2019-11-14 08:33:55'),
(116, 'Forms', 'Module', 'forms', 'normal', 'fa fa-files-o', 115, 1, 0, NULL, 1, 2, NULL, '2019-11-11 09:16:30', NULL),
(115, 'Pages and Forms', 'URL', '#', 'normal', 'fa fa-th-list', 0, 1, 0, NULL, 1, 3, NULL, '2019-11-11 09:15:53', NULL),
(100, 'Labels Translation', 'URL', '/modules/languages', 'normal', 'fa fa-pencil', 138, 1, 0, NULL, 1, 3, NULL, '2019-09-17 04:58:27', '2019-09-29 06:04:17'),
(112, 'Email Receivers', 'Route', 'AdminEmailReceiverControllerGetIndex', 'normal', 'fa fa-glass', 137, 1, 0, NULL, 1, 8, NULL, '2019-10-13 11:15:18', '2019-10-27 08:16:03'),
(62, 'Menus', 'Module', 'menu_management_client', 'normal', 'fa fa-list-ul', 137, 1, 0, NULL, 1, 9, NULL, '2019-09-09 12:20:25', '2019-09-29 06:06:48'),
(37, 'SEO', 'URL', '/modules/seo/home', 'normal', 'fa fa-globe', 138, 1, 0, NULL, 1, 2, NULL, '2019-08-07 03:41:35', '2019-09-09 12:33:42'),
(67, 'Social media', 'Route', 'AdminSocialMediaControllerGetIndex', 'normal', 'fa fa-glass', 138, 1, 0, NULL, 1, 4, NULL, '2019-09-09 12:29:05', '2019-10-27 08:15:30'),
(124, 'Catalogue Type', 'Route', 'AdminCatalogueTypeControllerGetIndex', NULL, 'fa fa-tasks', 136, 1, 0, NULL, 1, 2, NULL, '2020-02-19 06:26:37', NULL),
(125, 'Catalogues', 'Route', 'AdminCataloguesControllerGetIndex', NULL, 'fa fa-tasks', 136, 1, 0, NULL, 1, 1, NULL, '2020-02-19 06:30:27', NULL),
(126, 'Categories', 'Route', 'AdminCategoriesControllerGetIndex', NULL, 'fa fa-product-hunt', 136, 1, 0, NULL, 1, 3, NULL, '2020-02-19 06:38:07', NULL),
(127, 'Clients', 'Route', 'AdminClientsControllerGetIndex', NULL, 'fa fa-user-plus', 137, 1, 0, NULL, 1, 1, NULL, '2020-02-19 06:48:00', NULL),
(128, 'Continents', 'Route', 'AdminContinentsControllerGetIndex', NULL, 'fa fa-flag', 137, 1, 0, NULL, 1, 3, NULL, '2020-02-19 06:54:38', NULL),
(129, 'Dealers', 'Route', 'AdminDealersControllerGetIndex', NULL, 'fa fa-user-times', 136, 1, 0, NULL, 1, 6, NULL, '2020-02-19 06:57:46', NULL),
(130, 'FAQ', 'Route', 'AdminFaqControllerGetIndex', NULL, 'fa fa-file-text-o', 137, 1, 0, NULL, 1, 7, NULL, '2020-02-19 07:07:06', NULL),
(131, 'Footer Links', 'Route', 'AdminFooterLinksControllerGetIndex', NULL, 'fa fa-star', 137, 1, 0, NULL, 1, 11, NULL, '2020-02-19 07:22:24', NULL),
(132, 'Highlights', 'Route', 'AdminHighlightsControllerGetIndex', NULL, 'fa fa-star', 137, 1, 0, NULL, 1, 2, NULL, '2020-02-19 07:27:12', NULL),
(133, 'News', 'Route', 'AdminNewsControllerGetIndex', NULL, 'fa fa-file-o', 137, 1, 0, NULL, 1, 4, NULL, '2020-02-19 07:38:53', NULL),
(134, 'Products', 'Route', 'AdminProductsControllerGetIndex', NULL, 'fa fa-product-hunt', 136, 1, 0, NULL, 1, 5, NULL, '2020-02-19 07:41:38', NULL),
(135, 'Specifications', 'Route', 'AdminSpecificationsControllerGetIndex', NULL, 'fa fa-product-hunt', 136, 1, 0, NULL, 1, 4, NULL, '2020-02-19 07:45:33', NULL),
(136, 'Products', 'URL', '#', 'normal', 'fa fa-th-list', 0, 1, 0, NULL, 1, 1, NULL, '2020-02-19 12:41:19', NULL),
(137, 'add ons', 'URL', '#', 'normal', 'fa fa-th-large', 0, 1, 0, NULL, 1, 2, NULL, '2020-02-19 12:43:46', '2020-02-19 12:46:12'),
(138, 'site settings', 'URL', '#', 'normal', 'fa fa-th-large', 0, 1, 0, NULL, 1, 4, NULL, '2020-02-19 12:45:29', NULL),
(139, 'Why Us', 'Route', 'AdminWhyUsControllerGetIndex', NULL, 'fa fa-glass', 137, 1, 0, NULL, 1, 10, NULL, '2020-02-20 13:50:16', NULL),
(140, 'about us', 'Route', 'AdminAboutUsControllerGetIndex', NULL, 'fa fa-glass', 137, 1, 0, NULL, 1, 12, NULL, '2020-02-20 14:06:32', NULL),
(141, 'Projects', 'Route', 'AdminProjectsControllerGetIndex', NULL, 'fa fa-gear', 137, 1, 0, NULL, 1, 5, NULL, '2020-02-21 17:50:03', NULL),
(142, 'Distributors', 'Route', 'AdminDistributorsControllerGetIndex', NULL, 'fa fa-glass', 137, 1, 0, NULL, 1, 6, NULL, '2020-02-21 18:10:42', NULL),
(143, 'count projects', 'Route', 'AdminCountProjectsControllerGetIndex', NULL, 'fa fa-home', 137, 1, 0, NULL, 1, 13, NULL, '2020-02-22 09:57:48', NULL),
(144, 'Home', 'URL', '/', NULL, NULL, 0, 1, 0, 1, 1, 1, 1, '2020-02-22 10:13:41', NULL),
(145, 'products', 'Module', 'products/', NULL, NULL, 0, 1, 0, 1, 1, 3, 1, '2020-02-22 10:13:57', NULL),
(146, 'about us', 'Module', 'about_us/', NULL, NULL, 0, 1, 0, 1, 1, 4, 1, '2020-02-22 10:14:30', '2020-02-22 12:07:09'),
(147, 'contact us', 'URL', '/contact_us', NULL, NULL, 0, 1, 0, 1, 1, 7, 1, '2020-02-22 10:14:54', NULL),
(148, 'news', 'Module', 'news/', NULL, NULL, 0, 1, 0, 1, 1, 6, 1, '2020-02-22 10:15:43', NULL),
(149, 'FAQ', 'Module', 'faq/', NULL, NULL, 146, 1, 0, 1, 1, 1, 1, '2020-02-22 10:19:04', NULL),
(150, 'projects', 'Module', 'projects/', NULL, NULL, 0, 1, 0, 1, 1, 5, 1, '2020-02-22 16:41:53', NULL),
(151, 'Info Site', 'Route', 'AdminInfoSiteControllerGetIndex', NULL, 'fa fa-glass', 138, 1, 0, NULL, 1, 1, NULL, '2020-02-22 16:59:09', NULL),
(152, 'catalogues', 'Module', 'catalogues/', NULL, NULL, 0, 1, 0, 1, 1, 2, 1, '2020-02-22 18:12:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(259, 125, 1),
(258, 124, 1),
(257, 123, 1),
(256, 122, 1),
(255, 121, 1),
(254, 121, 2),
(250, 117, 1),
(249, 117, 2),
(248, 116, 1),
(247, 116, 2),
(246, 115, 1),
(245, 115, 2),
(251, 114, 2),
(252, 114, 1),
(242, 61, 1),
(240, 112, 1),
(238, 105, 1),
(236, 104, 1),
(234, 68, 1),
(232, 67, 1),
(230, 59, 1),
(228, 57, 1),
(226, 64, 1),
(224, 65, 1),
(220, 55, 1),
(218, 56, 1),
(216, 54, 1),
(214, 66, 1),
(212, 63, 1),
(210, 58, 1),
(208, 60, 1),
(206, 113, 1),
(239, 112, 2),
(237, 105, 2),
(235, 104, 2),
(202, 62, 1),
(200, 102, 1),
(199, 102, 2),
(198, 100, 1),
(197, 100, 2),
(196, 74, 1),
(195, 73, 1),
(194, 73, 2),
(193, 72, 1),
(192, 71, 1),
(221, 70, 2),
(222, 70, 1),
(189, 69, 1),
(188, 69, 2),
(187, 37, 1),
(186, 37, 2),
(233, 68, 2),
(231, 67, 2),
(213, 66, 2),
(223, 65, 2),
(225, 64, 2),
(211, 63, 2),
(201, 62, 2),
(241, 61, 2),
(207, 60, 2),
(229, 59, 2),
(209, 58, 2),
(227, 57, 2),
(217, 56, 2),
(219, 55, 2),
(215, 54, 2),
(260, 126, 1),
(261, 127, 1),
(262, 128, 1),
(263, 129, 1),
(264, 130, 1),
(265, 131, 1),
(266, 132, 1),
(267, 133, 1),
(268, 134, 1),
(269, 135, 1),
(270, 136, 2),
(271, 136, 1),
(277, 137, 1),
(276, 137, 2),
(274, 138, 2),
(275, 138, 1),
(278, 139, 1),
(279, 140, 1),
(280, 141, 1),
(281, 142, 1),
(282, 143, 1),
(283, 151, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `hasImage` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `has_page_client` tinyint(4) DEFAULT '0',
  `main_field` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_effected` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `hasImage`, `created_at`, `updated_at`, `deleted_at`, `has_page_client`, `main_field`, `lang_effected`) VALUES
(57, 'Pages', 'fa fa-glass', 'landing_pages', 'landing_pages', 'AdminLandingPagesController', 0, 0, 0, '2019-11-13 06:04:34', NULL, NULL, 0, NULL, NULL),
(55, 'Email Receivers', 'fa fa-glass', 'email_receiver', 'email_receiver', 'AdminEmailReceiverController', 0, 0, 0, '2019-10-13 11:15:12', NULL, NULL, 0, NULL, NULL),
(52, 'Menu Management Client', 'fa fa-bars', 'menu_management_client', 'cms_menus', 'MenusClientController', 0, 1, 0, '2019-05-29 22:06:58', NULL, NULL, 0, NULL, NULL),
(29, 'FormFields', 'fa fa-glass', 'form_field', 'form_field', 'AdminFormFieldController', 0, 0, 0, '2019-09-10 16:16:31', NULL, NULL, 0, NULL, NULL),
(28, 'Forms', 'fa fa-mail-forward', 'forms', 'forms', 'AdminFormsController', 0, 0, 0, '2019-09-10 10:42:22', NULL, NULL, 0, NULL, NULL),
(25, 'Social media', 'fa fa-glass', 'social_media', 'social_media', 'AdminSocialMediaController', 0, 0, 0, '2019-09-09 12:29:05', NULL, NULL, 0, NULL, NULL),
(20, 'Menus', 'fa fa-list-ul', 'menu', 'menu', 'AdminMenuController', 0, 0, 0, '2019-09-09 12:20:25', NULL, NULL, 0, NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, 0, '2019-05-30 04:06:58', NULL, NULL, 0, NULL, NULL),
(58, 'Test', 'fa fa-glass', 'tbl_test', 'tbl_test', 'AdminTblTestController', 0, 0, 0, '2019-11-28 09:41:44', NULL, '2019-11-28 09:42:57', 1, 'name', 'record'),
(59, 'Test', 'fa fa-glass', 'tbl_test59', 'tbl_test', 'AdminTblTest59Controller', 0, 0, 0, '2019-11-28 09:43:25', NULL, '2020-02-19 07:48:35', 1, 'name', 'record'),
(60, 'Catalogue Type', 'fa fa-tasks', 'catalogue_type', 'catalogue_type', 'AdminCatalogueTypeController', 0, 0, 0, '2020-02-19 06:26:37', NULL, NULL, 1, 'name_en', 'field'),
(61, 'Catalogues', 'fa fa-tasks', 'catalogues', 'catalogues', 'AdminCataloguesController', 0, 0, 0, '2020-02-19 06:30:27', NULL, NULL, 1, 'name_en', 'field'),
(62, 'Categories', 'fa fa-product-hunt', 'categories', 'categories', 'AdminCategoriesController', 0, 0, 0, '2020-02-19 06:38:06', NULL, NULL, 1, 'name_en', 'field'),
(63, 'Clients', 'fa fa-user-plus', 'clients', 'clients', 'AdminClientsController', 0, 0, 0, '2020-02-19 06:48:00', NULL, NULL, 1, 'name_en', 'field'),
(64, 'Continents', 'fa fa-flag', 'continents', 'continents', 'AdminContinentsController', 0, 0, 0, '2020-02-19 06:54:38', NULL, NULL, 1, NULL, 'field'),
(65, 'Dealers', 'fa fa-users', 'dealers', 'dealers', 'AdminDealersController', 0, 0, 0, '2020-02-19 06:57:46', NULL, NULL, 1, 'country_en', 'field'),
(66, 'FAQ', 'fa fa-file-text-o', 'faq', 'faq', 'AdminFaqController', 0, 0, 0, '2020-02-19 07:07:06', NULL, NULL, 1, 'question_en', 'field'),
(67, 'Footer Links', 'fa fa-star', 'footer_links', 'footer_links', 'AdminFooterLinksController', 0, 0, 0, '2020-02-19 07:22:24', NULL, NULL, 1, 'name_en', 'field'),
(68, 'Highlights', 'fa fa-star', 'highlights', 'highlights', 'AdminHighlightsController', 0, 0, 0, '2020-02-19 07:27:12', NULL, NULL, 1, 'name_en', 'field'),
(69, 'News', 'fa fa-file-o', 'news', 'news', 'AdminNewsController', 0, 0, 0, '2020-02-19 07:38:52', NULL, NULL, 1, 'name_en', 'field'),
(70, 'Products', 'fa fa-product-hunt', 'products', 'products', 'AdminProductsController', 0, 0, 0, '2020-02-19 07:41:37', NULL, NULL, 1, 'name_en', 'field'),
(71, 'Specifications', 'fa fa-product-hunt', 'specifications', 'specifications', 'AdminSpecificationsController', 0, 0, 0, '2020-02-19 07:45:33', NULL, NULL, 1, 'name_en', 'field'),
(72, 'Why Us', 'fa fa-glass', 'why_us', 'why_us', 'AdminWhyUsController', 0, 0, 0, '2020-02-20 13:50:16', NULL, NULL, 1, 'desc_en', 'field'),
(73, 'about us', 'fa fa-glass', 'about_us', 'about_us', 'AdminAboutUsController', 0, 0, 1, '2020-02-20 14:06:32', NULL, NULL, 1, 'id', 'field'),
(74, 'Projects', 'fa fa-gear', 'projects', 'projects', 'AdminProjectsController', 0, 0, 1, '2020-02-21 17:50:03', NULL, NULL, 1, 'name_en', 'field'),
(75, 'Distributors', 'fa fa-glass', 'distributors', 'distributors', 'AdminDistributorsController', 0, 0, 0, '2020-02-21 18:10:42', NULL, NULL, 0, 'name_en', 'field'),
(76, 'count projects', 'fa fa-home', 'count_projects', 'count_projects', 'AdminCountProjectsController', 0, 0, 0, '2020-02-22 09:57:47', NULL, NULL, 0, 'name_en', 'field'),
(77, 'Info Site', 'fa fa-glass', 'info_site', 'info_site', 'AdminInfoSiteController', 0, 0, 0, '2020-02-22 16:59:09', NULL, NULL, 0, 'email', 'field');

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-05-30 06:06:58', NULL),
(2, 'normal user', 0, 'skin-red', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(2, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(3, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(4, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(5, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(6, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(7, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(8, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(9, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(10, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(11, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(12, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 53, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 54, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 55, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 56, NULL, NULL),
(56, 1, 1, 1, 1, 1, 1, 59, NULL, NULL),
(55, 1, 1, 1, 1, 1, 1, 58, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(52, 1, 1, 1, 1, 1, 2, 57, NULL, NULL),
(51, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(50, 1, 1, 1, 1, 1, 2, 52, NULL, NULL),
(49, 1, 1, 1, 1, 1, 2, 28, NULL, NULL),
(48, 1, 1, 1, 1, 1, 2, 29, NULL, NULL),
(47, 1, 1, 1, 1, 1, 2, 55, NULL, NULL),
(46, 1, 1, 1, 1, 1, 1, 57, NULL, NULL),
(57, 1, 1, 1, 1, 1, 1, 60, NULL, NULL),
(58, 1, 1, 1, 1, 1, 1, 72, NULL, NULL),
(59, 1, 1, 1, 1, 1, 1, 73, NULL, NULL),
(60, 1, 1, 1, 1, 1, 1, 74, NULL, NULL),
(61, 1, 1, 1, 1, 1, 1, 75, NULL, NULL),
(62, 1, 1, 1, 1, 1, 1, 76, NULL, NULL),
(63, 1, 1, 1, 1, 1, 1, 77, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-05-30 06:06:58', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-05-30 06:06:58', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'info@domdomta.com', 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2019-05-30 06:06:58', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'mail.voilahost.com', 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '465', 'text', NULL, 'default 25', '2019-05-30 06:06:58', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'info@domdomta.com', 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'iQFhoZ6m12', 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CMS Voila', 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-05-30 06:06:58', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-11/bc8434249b214a4bf1cf55c8671f38f1.png', 'upload_image', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-11/001d874b14a004be36933953e0f56e81.png', 'upload_image', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'false', 'select', 'true,false', NULL, '2019-05-30 06:06:58', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-05-30 06:06:58', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 2, 'e43e265a2e3a22218477d1bbca62ef97', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Events Request\",\"icon\":\"ion-bag\",\"color\":\"bg-red\",\"link\":\"\\/admin\\/request_event\",\"sql\":\"select count(*) from request_events\"}', '2019-06-20 08:45:33', NULL),
(3, 2, '2ab24cc96db3a09f3efb8b7007125e00', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Contact Us Requests\",\"icon\":\"ion-bag\",\"color\":\"bg-aqua\",\"link\":\"\\/admin\\/contact_us\",\"sql\":\"select count(*)  from contact_us\"}', '2019-06-20 08:53:35', NULL),
(4, 2, '5cfc7783207ae24ac240114a13521ea6', 'table', 'area5', 0, NULL, '{\"name\":\"Events\",\"sql\":\"select title_en as Title ,country,location, start_date as \'start Date\' , end_date as \'End Date\'  from events order by start_date desc\"}', '2019-06-26 07:53:31', NULL),
(5, 2, '40436fbc84fba971792d2a59862a03c5', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Course Requests\",\"icon\":\"ion-bag\",\"color\":\"bg-yellow\",\"link\":\"\\/admin\\/request_course\",\"sql\":\"SELECT count( *) FROM `request_course`\"}', '2019-11-05 14:18:10', NULL),
(6, 2, '683394552c8f25051cfb7fdbbfeeafd3', 'chartarea', NULL, 0, 'Untitled', NULL, '2019-11-05 14:20:09', NULL),
(7, 2, '125b2f4fb803a4da9bfc3397232de911', 'chartarea', NULL, 0, 'Untitled', NULL, '2019-11-05 14:20:13', NULL),
(8, 2, '8cf4705d0d16ef23e7d44dffda63d471', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Courses Count\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"\\/admin\\/courses\",\"sql\":\"SELECT count( *) FROM `courses`\"}', '2019-11-05 14:21:56', NULL),
(9, 2, '453235bcffcd5413269a2f37b5b7dfcd', 'chartarea', NULL, 0, 'Untitled', NULL, '2019-11-05 14:26:28', NULL),
(10, 2, 'c4b8bc5f16781681008bf7aab61400e8', 'chartarea', NULL, 0, 'Untitled', NULL, '2019-11-05 14:26:33', NULL),
(11, 2, '0268139a72f13ef8fe4077a1940af5c5', 'chartarea', 'area5', 0, NULL, '{\"name\":\"statistic\",\"sql\":\"select count(*) as value, b.title_en as label  from request_course a , courses b  where a.course_id=b.id group by label  Order by label\",\"area_name\":\"label\",\"goals\":null}', '2019-11-05 14:26:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', '/images/portfolio1_logo.png', 'superadmin@voila.digital', '$2y$10$zUf73J0YOPbLH/fIHgC.wOIA2ADWJxxleMm4RJjvuC3AA6VtNC.U6', 1, '2019-05-30 06:06:58', '2019-10-27 10:10:45', 'Active'),
(2, 'admin taiba', '/images/portfolio1_logo.png', 'admin@voila.com', '$2y$10$zWJKFoTd0T/HKnXGUJJRyObPAyKR.mUbryT4nGWdlkHyFeaz8gf5e', 2, '2019-06-18 06:02:41', '2019-11-13 07:34:57', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `count_projects`
--

CREATE TABLE `count_projects` (
  `id` int(11) NOT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `name_fr` varchar(250) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `count_projects`
--

INSERT INTO `count_projects` (`id`, `name_en`, `name_fr`, `count`, `active`, `sorting`) VALUES
(1, 'Water Fan Coil Units', 'Water Fan Coil Units', 22, 1, NULL),
(2, 'Washing Machines', 'Washing Machines', 10, 1, NULL),
(3, 'Ceiling & Floor', 'Ceiling & Floor', 67, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `continent_id` int(4) DEFAULT NULL,
  `country_en` varchar(1000) DEFAULT NULL,
  `country_fr` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `location_lat` float DEFAULT NULL,
  `location_lon` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` int(11) NOT NULL,
  `name_en` varchar(500) DEFAULT NULL,
  `name_fr` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `distributors`
--

INSERT INTO `distributors` (`id`, `name_en`, `name_fr`, `image`, `link`, `active`, `sorting`) VALUES
(1, 'sample 1', 'sample 1', '/images/blog-2.jpg', 'http://google.com', 1, NULL),
(2, 'sample 2', 'sample 2', '/images/portfolio1_logo.png', 'http://google.com', 1, NULL),
(3, 'sample 3', 'sample 3', '/images/portfolio1_logo.png', 'http://google.com', 1, NULL),
(4, 'sample 4', 'sample 4', '/images/portfolio1_logo.png', 'http://google.com', 1, NULL),
(5, 'sample 5', 'sample 5', '/images/portfolio1_logo.png', 'http://google.com', 1, NULL),
(6, 'sample 6', 'sample 6', '/images/portfolio1_logo.png', 'http://google.com', 1, NULL),
(7, 'sample 6', 'sample 6', '/images/portfolio1_logo.png', 'http://google.com', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_receiver`
--

CREATE TABLE `email_receiver` (
  `id` int(11) NOT NULL,
  `email` longtext,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_receiver`
--

INSERT INTO `email_receiver` (`id`, `email`, `active`, `sorting`) VALUES
(2, 'balkis@voila.digital', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `question_en` text,
  `question_fr` text,
  `response_en` text,
  `response_fr` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `active`, `sorting`, `question_en`, `question_fr`, `response_en`, `response_fr`) VALUES
(1, 1, NULL, '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Question 1</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Question 1</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Response&nbsp;</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Response&nbsp;</span><br></p>'),
(2, 1, NULL, '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Question 2</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Question 2</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Response 2</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Response 2</span><br></p>'),
(3, 1, NULL, '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Question 3</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Question 3</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Response 3</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Response 3</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `multi` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `title`, `multi`) VALUES
(1, 'text', 0),
(2, 'email', 0),
(3, 'radio', 1),
(4, 'checkbox', 1),
(5, 'select', 1);

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(500) DEFAULT NULL,
  `name_fr` varchar(500) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `active`, `sorting`, `name_en`, `name_fr`, `link`) VALUES
(1, 1, NULL, 'projects', 'projects', '/projects'),
(2, 1, NULL, 'news', 'news', '/news'),
(3, 1, NULL, 'catalogues', 'catalogues', '/catalogues'),
(4, 1, NULL, 'about us', 'about_us', '/about_us'),
(5, 1, NULL, 'contact us', 'contact us', '/contact_us'),
(6, 1, NULL, 'supports', 'supports', '/supports');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `response` longtext,
  `send_to` varchar(500) DEFAULT NULL,
  `row_type` varchar(500) DEFAULT NULL,
  `sorting` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `response`, `send_to`, `row_type`, `sorting`, `active`) VALUES
(1, 'First Form Aviation taiba', 'thank you for your submit ..', 'fesalali05@gmai.com', 'col-lg-12', NULL, 1),
(2, 'Test Form', 'Thanks', 'eman@voila.digital', 'col-lg-12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE `form_field` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `required_filed` varchar(10) DEFAULT NULL,
  `label_filed` varchar(20) DEFAULT NULL,
  `values` varchar(500) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_field`
--

INSERT INTO `form_field` (`id`, `form_id`, `field_id`, `required_filed`, `label_filed`, `values`, `active`, `sorting`) VALUES
(10, 1, 3, 'No', 'Gender', 'female , male', 1, 1),
(11, 1, 5, 'No', 'Country', 'syria,lebanon', 1, 2),
(12, 1, 4, 'Yes', 'lang', 'ar , en', 1, 3),
(13, 1, 1, 'Yes', 'First Name', NULL, 1, 4),
(14, 1, 2, 'Yes', 'Email  Address', NULL, 1, 5),
(15, 1, 1, 'Yes', 'age', NULL, 1, 6),
(16, 2, 1, 'Yes', 'Name', NULL, 1, 1),
(17, 2, 4, 'Yes', 'Email', 'eman , test', 1, 2),
(18, 2, 2, 'Yes', 'email', NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `highlights`
--

CREATE TABLE `highlights` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL,
  `description_en` longtext,
  `description_fr` longtext,
  `link` varchar(1000) DEFAULT NULL,
  `label_en` varchar(500) DEFAULT NULL,
  `label_fr` varchar(500) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highlights`
--

INSERT INTO `highlights` (`id`, `active`, `sorting`, `name_en`, `name_fr`, `description_en`, `description_fr`, `link`, `label_en`, `label_fr`, `image`) VALUES
(1, 1, NULL, 'Sample', 'Sample', '<p>Sample<br></p>', '<p>Sample<br></p>', 'http://localhost:8000/en', '<p>Get A free Qoute</p>', '<p>Get A free Qoute<br></p>', '/images/4_(2).jpg'),
(2, 1, NULL, 'sample', 'sample', '<p>sample&nbsp;<br></p>', '<p>sample<br></p>', 'http://localhost:8000/en', '<p>sample<br></p>', '<p>sample<br></p>', '/images/7.jpg'),
(3, 1, NULL, 'sample', 'sample', '<p>sample<br></p>', '<p>sample<br></p>', 'http://localhost:8000/en', '<p>sample<br></p>', '<p>sample<br></p>', '/images/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image_model`
--

CREATE TABLE `image_model` (
  `id` int(11) NOT NULL,
  `model` enum('product','news') DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info_site`
--

CREATE TABLE `info_site` (
  `id` int(11) NOT NULL,
  `address_en` longtext,
  `address_fr` longtext,
  `open_hours_en` longtext,
  `open_hours_fr` longtext,
  `email` varchar(500) DEFAULT NULL,
  `about_footer_en` longtext,
  `phone` varchar(500) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL,
  `about_footer_fr` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_site`
--

INSERT INTO `info_site` (`id`, `address_en`, `address_fr`, `open_hours_en`, `open_hours_fr`, `email`, `about_footer_en`, `phone`, `active`, `sorting`, `about_footer_fr`) VALUES
(1, 'West Highway San Dimas, USA', 'West Highway San Dimas, USA', 'Mon-Sat: 9am - 6pm', 'Mon-Sat: 9am - 6pm', 'help@americanpro.com', 'At American Pro, We don’t just provide resi-dential and commercial heating and air conditioning services; we make people’s lives easier. Better.', '0019095995533', 1, NULL, 'At American Pro, We don’t just provide resi-dential and commercial heating and air conditioning services; we make people’s lives easier. Better.');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `background` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` longtext COLLATE utf8mb4_unicode_ci,
  `from_scratch` tinyint(1) DEFAULT NULL,
  `background_color` longtext COLLATE utf8mb4_unicode_ci,
  `sorting` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `title`, `code`, `is_active`, `created_at`, `updated_at`, `background`, `background_image`, `from_scratch`, `background_color`, `sorting`, `active`) VALUES
(70, 'Landing Title', '<section class=\"ge-sect\"><div class=\"container bs-container\"><div class=\"row ge-row ui-sortable\"><div class=\"col-sm-12 col-xs-12 column ui-sortable col-md-9\" style=\"\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\" data-fe-type=\"form\" data-form-id=\"1\"><div class=\"col-xs-12\"><form method=\"POST\" data-form=\"1\" action=\"/request/form/1\" class=\"col-lg-12 well\" style=\"background:#FFF\">1</form></div></div></div><div class=\"col-md-3 col-sm-3 col-xs-12 column ui-sortable\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\" data-fe-type=\"image\"><img src=\"/images/service6.jpg\" alt=\"/images/service6.jpg\" class=\"img-responsive\"></div></div><div class=\"col-md-3 col-sm-3 col-xs-12 column ui-sortable\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\"></div></div></div></div></section>', 1, '2019-11-21 12:36:41', '2019-11-21 12:36:41', 'rgba(0, 0, 0, 0) none repeat scroll 0% 0% / auto padding-box border-box', NULL, 1, NULL, NULL, 1),
(69, 'Landing Title', '<section class=\"ge-sect\"><div class=\"container bs-container\"><div class=\"row ge-row ui-sortable\"><div class=\"col-md-6 col-sm-6 col-xs-12 column ui-sortable\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\" data-fe-type=\"form\" data-form-id=\"1\"><div class=\"col-xs-12\"><form method=\"POST\" data-form=\"1\" action=\"/request/form/1\" class=\"col-lg-12 well\" style=\"background:#FFF\">1</form></div></div></div><div class=\"col-md-6 col-sm-6 col-xs-12 column ui-sortable\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\"></div></div></div></div></section>', 1, '2019-11-17 04:48:43', '2019-11-17 04:48:43', 'rgba(0, 0, 0, 0) none repeat scroll 0% 0% / auto padding-box border-box', NULL, 1, NULL, NULL, 1),
(68, 'Landing Title', '<section class=\"ge-sect\"><div class=\"container bs-container\"></div></section><section class=\"ge-sect\"><div class=\"container bs-container\"><div class=\"row ge-row ui-sortable\"><div class=\"col-md-5 col-sm-5 col-xs-12 column ui-sortable\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\" data-fe-type=\"form\" data-form-id=\"2\"><div class=\"col-xs-12\"><form method=\"POST\" data-form=\"2\" action=\"/request/form/2\" class=\"col-lg-12 well\" style=\"background: rgb(255, 255, 255);\">2</form></div></div></div><div class=\"col-sm-3 col-xs-12 column ui-sortable col-md-7\" style=\"\"><div class=\"ge-content ge-content-type-tinymce ui-droppable\" data-ge-content-type=\"tinymce\" style=\"background-color: inherit;\" data-fe-type=\"form\" data-form-id=\"1\"><div class=\"col-xs-12\"><form method=\"POST\" data-form=\"1\" action=\"/request/form/1\" class=\"col-lg-12 well\" style=\"background:#FFF\">1</form></div></div></div></div></div></section>', 1, '2019-11-14 10:34:58', '2019-11-14 11:49:29', 'rgba(0, 0, 0, 0) none repeat scroll 0% 0% / auto padding-box border-box', NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`, `active`, `sorting`) VALUES
(1, 'English', 'en', NULL, NULL, 1, NULL),
(2, 'franch', 'fr', '2020-02-04 22:00:00', '2020-02-25 22:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title_en` varchar(200) DEFAULT NULL,
  `title_ar` varchar(200) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cms_moduls_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `order_item` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL,
  `breif_en` text,
  `breif_fr` text,
  `date` date DEFAULT NULL,
  `description_en` longtext,
  `description_fr` longtext,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `active`, `sorting`, `name_en`, `name_fr`, `breif_en`, `breif_fr`, `date`, `description_en`, `description_fr`, `image`) VALUES
(1, 1, NULL, 'sample 1', 'sample 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '2020-02-19', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '/images/404Page.jpg'),
(2, 1, NULL, 'sample 2', 'sample 2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '2020-02-12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '/images/1379408251_IDHDy.jpg'),
(3, 1, NULL, 'sample 3', 'sample 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '2020-02-21', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div><br></div>', '/images/blog-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL,
  `breif_en` text,
  `breif_fr` text,
  `model_en` varchar(1000) DEFAULT NULL,
  `model_fr` varchar(1000) DEFAULT NULL,
  `serial_number` text,
  `keywords_en` longtext,
  `keywords_fr` longtext,
  `features_en` longtext,
  `features_fr` longtext,
  `catalogue_id` int(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` text,
  `technical` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `active`, `sorting`, `name_en`, `name_fr`, `breif_en`, `breif_fr`, `model_en`, `model_fr`, `serial_number`, `keywords_en`, `keywords_fr`, `features_en`, `features_fr`, `catalogue_id`, `category_id`, `image`, `technical`) VALUES
(1, 1, NULL, 'sample', 'sample', '<p>sample<br></p>', '<p>sample<br></p>', '<p>sample<br></p>', '<p>sample<br></p>', 'sample', 'asdad|adada', '<p>sample<br></p>', '<p>sample<br></p>', '<p>sample<br></p>', 1, 10, '/images/600x450-web.jpg', '<p>sample<br></p>'),
(2, 1, NULL, 'sample2', 'sample2', '<p>sample2<br></p>', '<p>sample2<br></p>', '<p>sample2<br></p>', '<p>sample2<br></p>', 'sample2', '<p>sample2<br></p>', '<p>sample2<br></p>', '<p>sample2<br></p>', '<p>sample2<br></p>', 1, 18, '/images/404Page.jpg', '<p>sample2<br></p>'),
(3, 1, NULL, 'sample3', 'sample3', '<p>sample3<br></p>', '<p>sample3<br></p>', '<p>sample3<br></p>', '<p>sample3<br></p>', 'sample3', '<p>sample3<br></p>', '<p>sample3<br></p>', '<p>sample3<br></p>', '<p>sample3<br></p>', 1, 18, '/images/1379408251_IDHDy.jpg', '<p>sample3<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `name_fr` varchar(250) DEFAULT NULL,
  `desc_en` longtext,
  `desc_fr` longtext,
  `count_item` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name_en`, `name_fr`, `desc_en`, `desc_fr`, `count_item`, `location`, `company_name`, `image`, `active`, `sorting`) VALUES
(1, 'project 1', 'project 1', '<p>project 1<br></p>', '<p>project 1<br></p>', '4', 'project 1', 'project 1', '/images/slider-4.jpg', 1, NULL),
(2, 'project 2', 'project 2', '<p>project 2<br></p>', '<p>project 2<br></p>', '12', 'project 2', 'project 2', '/images/600x450-web.jpg', 1, NULL),
(3, 'project 3', 'project 3', '<p>project 3<br></p>', '<p>project 3<br></p>', '11', 'project 3', 'project 3', '/images/404Page.jpg', 1, NULL),
(4, 'project 4', 'project 4', '<p>project 4<br></p>', '<p>project 4<br></p>', '12', 'project 4', 'project 4', '/images/1369316502_uYpBE.jpg', 1, NULL),
(5, 'project 5', 'project 5', '<p>project 5<br></p>', '<p>project 5<br></p>', '10', 'project 5', 'project 5', '/images/600x450-web.jpg', 1, NULL),
(6, 'project 6', 'project 6', '<p>project 6<br></p>', '<p>project 6<br></p>', '11', 'project 6', 'project 6', '/images/catalogpicture.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `description_en` varchar(3000) DEFAULT NULL,
  `description_ar` varchar(3000) DEFAULT NULL,
  `keywords_en` varchar(3000) DEFAULT NULL,
  `keywords_ar` varchar(3000) DEFAULT NULL,
  `author_en` varchar(3000) DEFAULT NULL,
  `author_ar` varchar(3000) DEFAULT NULL,
  `title_ar` varchar(3000) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `title_en` varchar(300) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `description_en`, `description_ar`, `keywords_en`, `keywords_ar`, `author_en`, `author_ar`, `title_ar`, `model`, `model_id`, `title_en`, `created_at`, `updated_at`, `image`) VALUES
(42, 'Horizons Taiba Aviation Support and Services launched operation on January 2015. It is a company owned by knowledgeable and well-experienced individuals who also have extensive experience in the aviation industry.', 'Horizons Taiba Aviation Support and Services launched operation on January 2015. It is a company owned by knowledgeable and well-experienced individuals who also have extensive experience in the aviation industry.', 'Horizons Taiba Aviation Support and Services launched operation on January 2015. It is a company owned by knowledgeable and well-experienced individuals who also have extensive experience in the aviation industry.', 'Horizons Taiba Aviation Support and Services launched operation on January 2015. It is a company owned by knowledgeable and well-experienced individuals who also have extensive experience in the aviation industry.', 'Horizons Taiba', 'Horizons Taiba', 'Horizons Taiba Aviation Support and Services launched operation on January 2015. It is a company owned by knowledgeable and well-experienced individuals who also have extensive experience in the aviation industry.', 'course', NULL, 'Horizons Taiba Aviation Support and Services launched operation on January 2015. It is a company owned by knowledgeable and well-experienced individuals who also have extensive experience in the aviation industry.', '2019-09-10', '2019-09-10', NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'event', NULL, NULL, '2019-11-05', '2019-11-05', NULL),
(46, 'bvsdfvsfd', NULL, 'sds , qewr', 'ewrfqwef , rewqew', 'Maysaa Al Ahmar', NULL, 'svdfvsdfbv', 'news', NULL, 'csvsfv', '2019-11-12', '2019-11-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `title_en` varchar(200) DEFAULT NULL,
  `title_ar` varchar(200) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title_en`, `title_ar`, `icon`, `value`, `sorting`, `active`) VALUES
(1, 'facebook', NULL, 'fa fa-facebook-f', 'https://www.facebook.com', 1, 1),
(2, 'twitter', NULL, 'fa fa-twitter', 'https://twitter.com', 5, 1),
(3, 'instagram', NULL, 'fa fa-instagram', 'https://www.instagram.com/', 3, 1),
(4, 'youtube', NULL, 'fa fa-youtube-play', 'https://www.youtube.com', 4, 1),
(5, 'linkedin', NULL, 'fa fa-linkedin', 'https://www.linkedin.com/', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` int(8) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `sorting` int(4) DEFAULT NULL,
  `name_en` varchar(1000) DEFAULT NULL,
  `name_fr` varchar(1000) DEFAULT NULL,
  `value_en` varchar(1000) DEFAULT NULL,
  `value_fr` varchar(1000) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE `tbl_test` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `why_us`
--

CREATE TABLE `why_us` (
  `id` int(11) NOT NULL,
  `desc_en` text,
  `desc_fr` text,
  `image` varchar(500) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `why_us`
--

INSERT INTO `why_us` (`id`, `desc_en`, `desc_fr`, `image`, `active`, `sorting`) VALUES
(1, 'Online Catalogue', 'Online Catalogue', '/images/small-shape.png', 1, NULL),
(2, 'sample', 'sample', '/images/small-shape.png', 1, NULL),
(3, 'sample', 'sample', '/images/small-shape.png', 1, NULL),
(4, 'sample', 'sample', '/images/small-shape.png', 1, NULL),
(5, 'sample', 'sample', '/images/small-shape.png', 1, NULL),
(6, 'sample', 'sample', '/images/small-shape.png', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogue_type`
--
ALTER TABLE `catalogue_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `count_projects`
--
ALTER TABLE `count_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_receiver`
--
ALTER TABLE `email_receiver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highlights`
--
ALTER TABLE `highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_model`
--
ALTER TABLE `image_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_site`
--
ALTER TABLE `info_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_test`
--
ALTER TABLE `tbl_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_us`
--
ALTER TABLE `why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalogue_type`
--
ALTER TABLE `catalogue_type`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1340;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `count_projects`
--
ALTER TABLE `count_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_receiver`
--
ALTER TABLE `email_receiver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `highlights`
--
ALTER TABLE `highlights`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image_model`
--
ALTER TABLE `image_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_site`
--
ALTER TABLE `info_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_test`
--
ALTER TABLE `tbl_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_us`
--
ALTER TABLE `why_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
