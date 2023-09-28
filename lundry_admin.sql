-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2023 at 06:55 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lundry_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionals`
--

CREATE TABLE `additionals` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `additional_orders`
--

CREATE TABLE `additional_orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `additional_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `additional_services`
--

CREATE TABLE `additional_services` (
  `service_id` bigint UNSIGNED NOT NULL,
  `additional_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `address_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_district_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_note` text COLLATE utf8mb4_unicode_ci,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_device_keys`
--

CREATE TABLE `admin_device_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_banner` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_infos`
--

CREATE TABLE `card_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_no` int DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_month` int NOT NULL,
  `exp_year` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` enum('percent','amount') COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `min_amount` double(8,2) NOT NULL,
  `started_at` timestamp NOT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_users`
--

CREATE TABLE `coupon_users` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_costs`
--

CREATE TABLE `delivery_costs` (
  `id` bigint UNSIGNED NOT NULL,
  `cost` double(8,2) NOT NULL,
  `fee_cost` double(8,2) NOT NULL,
  `minimum_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_keys`
--

CREATE TABLE `device_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_approve` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_device_keys`
--

CREATE TABLE `driver_device_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_histories`
--

CREATE TABLE `driver_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_notifications`
--

CREATE TABLE `driver_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_orders`
--

CREATE TABLE `driver_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `is_accept` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pick-up'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_manages`
--

CREATE TABLE `invoice_manages` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `type` enum('image','audio','video','docs','excel','pdf','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extention` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `type`, `name`, `src`, `extention`, `description`, `path`, `created_at`, `updated_at`) VALUES
(1, 'image', 'numquam', 'images/dummy/dummy-placeholder.png', 'png', 'Quis dignissimos quia aut aliquam consequuntur magnam.', 'images/dummy/', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(2, 'image', 'quibusdam', 'images/dummy/dummy-placeholder.png', 'png', 'Labore aliquam autem voluptate voluptas quia ad nihil consequatur.', 'images/dummy/', '2023-07-23 06:54:24', '2023-07-23 06:54:24'),
(3, 'image', 'ipsa', 'images/dummy/dummy-placeholder.png', 'png', 'Fugit inventore perspiciatis sapiente est aut eos.', 'images/dummy/', '2023-07-23 06:54:24', '2023-07-23 06:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2021_09_01_000000_create_media_table', 1),
(7, '2021_09_01_100000_create_users_table', 1),
(8, '2021_09_01_200000_create_password_resets_table', 1),
(9, '2021_09_02_131940_create_failed_jobs_table', 1),
(10, '2021_09_02_131953_create_permission_tables', 1),
(11, '2021_09_08_162725_create_services_table', 1),
(12, '2021_09_11_085103_create_customers_table', 1),
(13, '2021_09_13_171450_create_variants_table', 1),
(14, '2021_09_15_064533_create_products_table', 1),
(15, '2021_09_20_052130_create_addresses_table', 1),
(16, '2021_09_21_045821_create_banners_table', 1),
(17, '2021_09_21_045849_create_coupons_table', 1),
(18, '2021_09_21_045910_create_orders_table', 1),
(19, '2021_09_22_051934_create_order_products_table', 1),
(20, '2021_10_20_105127_create_verification_codes_table', 1),
(21, '2021_10_24_090519_create_service_variants_table', 1),
(22, '2021_10_26_163146_create_settings_table', 1),
(23, '2021_11_02_115237_create_ratings_table', 1),
(24, '2021_11_20_072845_create_coupon_users_table', 1),
(25, '2021_12_20_085405_add_column_instraction_to_order_table', 1),
(26, '2022_01_13_070755_add_position_columns_in_variants_table', 1),
(27, '2022_02_05_141204_add_bangla_columns_to_variants_table', 1),
(28, '2022_02_05_194335_add_bangla_columns_to_services_table', 1),
(29, '2022_02_05_201107_add_bangla_columns_to_products_table', 1),
(30, '2022_02_12_000220_add_remove_status_colmun_orders_table', 1),
(31, '2022_02_12_000230_add_change_status_to_orders_table', 1),
(32, '2022_02_27_213854_add_order_colmun_to_products_table', 1),
(33, '2022_03_05_120307_create_additionals_table', 1),
(34, '2022_03_05_120500_create_additional_services_table', 1),
(35, '2022_03_06_103410_create_additional_orders_table', 1),
(36, '2022_04_13_123324_create_contacts_table', 1),
(37, '2022_06_06_211817_create_delivery_costs_table', 1),
(38, '2022_06_30_152555_create_mobile_app_urls_table', 1),
(39, '2022_07_05_123925_create_payments_table', 1),
(40, '2022_07_19_101634_add_description_to_products_table', 1),
(41, '2022_08_03_114942_create_device_keys_table', 1),
(42, '2022_08_10_160245_add_delete_at_addresses_table', 1),
(43, '2022_08_11_120358_create_notifications_table', 1),
(44, '2022_08_11_163235_create_admin_device_key_table', 1),
(45, '2022_08_21_180225_create_card_infos_table', 1),
(46, '2022_09_10_115554_add_stripe_customer_column_to_customers_table', 1),
(47, '2022_09_21_182517_create_drivers_table', 1),
(48, '2022_09_22_125851_create_driver_orders_table', 1),
(49, '2022_09_26_162755_create_driver_device_key_table', 1),
(50, '2022_09_28_170609_create_driver_notifications_table', 1),
(51, '2022_10_10_111423_add_driver_lience_and_brithday_column_to_user_table', 1),
(52, '2022_10_30_152931_create_social_link_table', 1),
(53, '2023_01_08_130313_add_device_type_column_to_device_key_table', 1),
(54, '2023_01_12_104744_create_stripe_keys_table', 1),
(55, '2023_01_12_114626_create_web_settings_table', 1),
(56, '2023_02_01_105110_add_title_column_to_notifications_table', 1),
(57, '2023_02_01_164032_create_order_schedules_table', 1),
(58, '2023_02_11_111232_add_address_column_to_web_setting_table', 1),
(59, '2023_02_11_122549_create_invoice_manages_table', 1),
(60, '2023_02_12_173746_add_signature_column_to_web_setting_table', 1),
(61, '2023_03_31_115106_create_areas_table', 1),
(62, '2023_04_01_111037_create_driver_histories_table', 1),
(63, '2023_04_01_111855_add_status_column_to_driver_orders_table', 1),
(64, '2023_04_01_114107_add_is_approve_to_drivers_table', 1),
(65, '2023_05_29_160539_add_is_show_column_to_order_table', 1),
(66, '2023_05_30_104843_add_soft_delete_to_product_table', 1),
(67, '2023_06_15_133341_change_mobile_number_colum_to_users_table', 1),
(68, '2023_06_15_170019_add_currency_column_to_web_setting_table', 1),
(69, '2023_07_10_160846_add_delivery_charge_to_order_table', 1),
(70, '2023_07_15_111724_add_product_id_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_urls`
--

CREATE TABLE `mobile_app_urls` (
  `id` bigint UNSIGNED NOT NULL,
  `android_url` text COLLATE utf8mb4_unicode_ci,
  `ios_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 1),
(35, 'App\\Models\\User', 1),
(36, 'App\\Models\\User', 1),
(37, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 1),
(39, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 1),
(51, 'App\\Models\\User', 1),
(52, 'App\\Models\\User', 1),
(53, 'App\\Models\\User', 1),
(54, 'App\\Models\\User', 1),
(55, 'App\\Models\\User', 1),
(56, 'App\\Models\\User', 1),
(57, 'App\\Models\\User', 1),
(58, 'App\\Models\\User', 1),
(59, 'App\\Models\\User', 1),
(60, 'App\\Models\\User', 1),
(61, 'App\\Models\\User', 1),
(62, 'App\\Models\\User', 1),
(63, 'App\\Models\\User', 1),
(64, 'App\\Models\\User', 1),
(65, 'App\\Models\\User', 1),
(66, 'App\\Models\\User', 1),
(67, 'App\\Models\\User', 1),
(68, 'App\\Models\\User', 1),
(69, 'App\\Models\\User', 1),
(70, 'App\\Models\\User', 1),
(71, 'App\\Models\\User', 1),
(72, 'App\\Models\\User', 1),
(73, 'App\\Models\\User', 1),
(74, 'App\\Models\\User', 1),
(75, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laundry Personal Access Client', 'BysnoQ8DnykH2zmf8cN7cAeeqibsHWKb4nIo5C2Y', NULL, 'http://localhost', 1, 0, 0, '2023-07-23 06:54:24', '2023-07-23 06:54:24'),
(2, NULL, 'Laundry Password Grant Client', 'FDRX5NGjoN0AYWfXV99gMXimpOqxLguSp2AYaKjr', 'users', 'http://localhost', 0, 1, 0, '2023-07-23 06:54:24', '2023-07-23 06:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-07-23 06:54:24', '2023-07-23 06:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `pick_date` date NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `pick_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `payment_status` enum('Pending','Paid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` enum('Cash on Delivery','Online Payment') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint UNSIGNED NOT NULL,
  `instruction` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_status` enum('Pending','Order confirmed','Picked your order','Processing','Cancelled','Delivered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_charge` double(8,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_schedules`
--

CREATE TABLE `order_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` int NOT NULL,
  `end_time` int NOT NULL,
  `per_hour` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` enum('pickup','delivery') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_schedules`
--

INSERT INTO `order_schedules` (`id`, `day`, `start_time`, `end_time`, `per_hour`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Sunday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(2, 'Monday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(3, 'Tuesday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(4, 'Wednesday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(5, 'Thursday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(6, 'Friday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(7, 'Saturday', 8, 16, 1, 1, 'pickup', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(8, 'Sunday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(9, 'Monday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(10, 'Tuesday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(11, 'Wednesday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(12, 'Thursday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(13, 'Friday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(14, 'Saturday', 8, 16, 1, 1, 'delivery', '2023-07-23 06:54:23', '2023-07-23 06:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp` date NOT NULL,
  `last_no` int NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'root', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(2, 'service.index', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(3, 'service.create', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(4, 'service.store', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(5, 'service.edit', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(6, 'service.update', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(7, 'service.status.toggle', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(8, 'additional.index', 'web', '2023-07-23 06:54:21', '2023-07-23 06:54:21'),
(9, 'additional.create', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(10, 'additional.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(11, 'additional.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(12, 'additional.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(13, 'additional.status.toggle', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(14, 'variant.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(15, 'variant.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(16, 'variant.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(17, 'variant.products', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(18, 'notification.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(19, 'notification.send', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(20, 'customer.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(21, 'customer.show', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(22, 'customer.create', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(23, 'customer.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(24, 'customer.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(25, 'customer.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(26, 'product.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(27, 'product.create', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(28, 'product.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(29, 'product.show', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(30, 'product.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(31, 'product.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(32, 'product.status.toggle', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(33, 'banner.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(34, 'banner.promotional', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(35, 'banner.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(36, 'banner.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(37, 'banner.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(38, 'banner.destroy', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(39, 'banner.status.toggle', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(40, 'order.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(41, 'order.show', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(42, 'order.status.change', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(43, 'order.print.labels', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(44, 'order.print.invioce', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(45, 'orderIncomplete.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(46, 'orderIncomplete.paid', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(47, 'revenue.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(48, 'revenue.generate.pdf', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(49, 'report.generate.pdf', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(50, 'coupon.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(51, 'coupon.create', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(52, 'coupon.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(53, 'coupon.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(54, 'coupon.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(55, 'contact', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(56, 'driver.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(57, 'driver.create', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(58, 'driver.store', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(59, 'driverAssign', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(60, 'driver.details', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(61, 'profile.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(62, 'profile.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(63, 'profile.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(64, 'profile.change-password', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(65, 'schedule.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(66, 'toggole.status.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(67, 'schedule.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(68, 'dashboard.calculation', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(69, 'dashboard.revenue', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(70, 'dashboard.overview', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(71, 'setting.show', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(72, 'setting.edit', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(73, 'setting.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(74, 'sms-gateway.index', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22'),
(75, 'sms-gateway.update', 'web', '2023-07-23 06:54:22', '2023-07-23 06:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `variant_id` bigint UNSIGNED NOT NULL,
  `thumbnail_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` bigint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'root', 'web', NULL, NULL),
(2, 'admin', 'web', NULL, NULL),
(3, 'customer', 'web', NULL, NULL),
(4, 'visitor', 'web', NULL, NULL),
(5, 'driver', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(41, 1),
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
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` bigint UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_variants`
--

CREATE TABLE `service_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `variant_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'privacy-policy', 'Esse modi vel saepe ut veniam laborum neque. Facilis inventore laudantium tenetur dolor explicabo molestiae. Enim et voluptatem eveniet quos omnis sit.\n\nNon similique quia ut enim rerum. In ab reprehenderit aut velit aut. Id facere assumenda dolor illum. Sunt in voluptatem recusandae et dolorem exercitationem.\n\nEligendi dolores rerum voluptas. Nulla quaerat fuga officia veniam. Assumenda aut nostrum enim est explicabo optio magnam dicta. At non deleniti ut vel minima.\n\nBlanditiis et voluptatem fugit est. Dolorum voluptas esse nihil doloremque officiis inventore. Blanditiis consequatur voluptatem officia qui aut nihil sed. Rerum eligendi sed ut quia.\n\nMinima temporibus dolor fugit aut alias. Aut eveniet officiis impedit neque tempora reprehenderit. Voluptatem non quisquam esse consequatur magnam voluptates. Unde natus voluptas sunt. Voluptatem laudantium omnis consequuntur nostrum atque sint.', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(2, 'Terms of Service', 'trams-of-service', 'Provident quibusdam est voluptatem ea et laboriosam eos. Dolores voluptatem cupiditate cum laborum quod expedita quia distinctio. Quibusdam illum odit necessitatibus et ut culpa ab quaerat.\n\nQuibusdam ullam consectetur similique aliquam. Possimus eos minima maiores distinctio. Nostrum quasi impedit non impedit odio quod saepe. Soluta ex rerum reprehenderit est nemo.\n\nVoluptate eum quia dolorem qui. Aperiam voluptatem magni minima. Facere nemo provident assumenda maxime consequatur. Est numquam sint corporis est iure.\n\nEligendi similique enim fugit ea. Qui consectetur itaque explicabo facere necessitatibus. Nulla id magnam modi et sequi. Eos tenetur reiciendis aut sit ea.\n\nDolore porro sequi voluptatem dolores officia. Quos dicta quasi debitis fuga voluptatibus. Nam autem nemo error fugit. Ut aspernatur ex porro est repudiandae illum eos.', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(3, 'Contact us', 'contact-us', 'Nihil culpa aut nobis reiciendis sunt. Omnis sapiente et neque at voluptatum ipsum libero excepturi. Vero et et error et repellat nisi ab. Excepturi necessitatibus repellendus accusamus omnis quaerat.\n\nVoluptates facilis quis excepturi expedita aut consectetur eos. Deserunt vel occaecati accusamus nisi quia.\n\nEt aspernatur ea ad magni quia sunt asperiores. Qui soluta enim iusto eos in veritatis.\n\nEarum accusamus omnis qui quia dignissimos sit quod. Aut quia dolorem maiores nam. Culpa sed ad soluta accusamus iste et enim sit.\n\nLaboriosam excepturi laborum et fugit harum dolore vero. Aut itaque excepturi accusantium est. Qui iste nihil praesentium fugiat.', '2023-07-23 06:54:23', '2023-07-23 06:54:23'),
(4, 'About Us', 'about-us', 'Laboriosam et dolorem voluptatem quo. Recusandae qui quibusdam ipsum velit ex ut natus.\n\nVero officia qui natus officiis est. Autem repudiandae quis aliquid accusantium dolores. Quis temporibus et impedit aut rerum velit. Ut excepturi harum ex quia aliquam itaque harum. Asperiores optio enim aut temporibus atque illo aliquid.\n\nDeserunt odit eos ut et dolorem ad consequatur. Nostrum repellat non natus eos. A ut dolor ducimus velit tempore.\n\nQuidem iure voluptas vel expedita distinctio molestiae fugit. Sint est et nisi natus. Quia ut vero sit voluptatem excepturi corrupti enim. Sunt aut voluptate a eligendi quia reprehenderit.\n\nIllo eos sunt amet iure doloremque. Numquam nesciunt aperiam aliquam consequatur quo accusantium. Quo illum atque impedit. Voluptate minus voluptatum recusandae eos.', '2023-07-23 06:54:23', '2023-07-23 06:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_keys`
--

CREATE TABLE `stripe_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo_id` bigint UNSIGNED DEFAULT NULL,
  `gender` enum('Male','Female','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driving_lience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile`, `email`, `email_verified_at`, `mobile_verified_at`, `is_active`, `password`, `profile_photo_id`, `gender`, `alternative_phone`, `remember_token`, `created_at`, `updated_at`, `driving_lience`, `date_of_birth`) VALUES
(1, 'Root', 'Schroeder', '01234567890', 'root@laundry.com', '2023-07-23 06:54:23', '2023-07-23 06:54:23', 1, '$2y$10$7Q/2uNQABOqA4Ari3Rusae3psNIqtoI56x/iPr2gX7ImNNcmz92Lq', 1, NULL, NULL, 'locxHYzj2B', '2023-07-23 06:54:23', '2023-07-23 06:54:23', NULL, NULL),
(2, 'Admin', 'Rogahn', '01234567891', 'admin@laundry.com', '2023-07-23 06:54:24', '2023-07-23 06:54:24', 1, '$2y$10$zdYauaG9Mom43zRMDfsfne9txto4Np/rYDO6KFDHD.MIboZgY1bWe', 2, NULL, NULL, 'N2Oe8elphC', '2023-07-23 06:54:24', '2023-07-23 06:54:24', NULL, NULL),
(3, 'Visitor', 'Lynch', '01000000000', 'visitor@laundry.com', '2023-07-23 06:54:24', '2023-07-23 06:54:24', 1, '$2y$10$GxOAErxHOZzDLg3SwNBhCerzvFtqbEK1kbvKNE/HlMHcEoS6hQiVa', 3, NULL, NULL, 'aBk4U5tUEu', '2023-07-23 06:54:24', '2023-07-23 06:54:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verification_codes`
--

CREATE TABLE `verification_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_id` bigint UNSIGNED DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionals`
--
ALTER TABLE `additionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additional_orders`
--
ALTER TABLE `additional_orders`
  ADD KEY `additional_orders_order_id_foreign` (`order_id`),
  ADD KEY `additional_orders_additional_id_foreign` (`additional_id`);

--
-- Indexes for table `additional_services`
--
ALTER TABLE `additional_services`
  ADD KEY `additional_services_service_id_foreign` (`service_id`),
  ADD KEY `additional_services_additional_id_foreign` (`additional_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `admin_device_keys`
--
ALTER TABLE `admin_device_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_device_keys_user_id_foreign` (`user_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Indexes for table `card_infos`
--
ALTER TABLE `card_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_infos_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_users_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `delivery_costs`
--
ALTER TABLE `delivery_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_keys`
--
ALTER TABLE `device_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_keys_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_device_keys`
--
ALTER TABLE `driver_device_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_device_keys_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `driver_histories`
--
ALTER TABLE `driver_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_histories_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_histories_order_id_foreign` (`order_id`);

--
-- Indexes for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_notifications_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `driver_orders`
--
ALTER TABLE `driver_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_orders_order_id_foreign` (`order_id`),
  ADD KEY `driver_orders_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoice_manages`
--
ALTER TABLE `invoice_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_app_urls`
--
ALTER TABLE `mobile_app_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_schedules`
--
ALTER TABLE `order_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_service_id_foreign` (`service_id`),
  ADD KEY `products_variant_id_foreign` (`variant_id`),
  ADD KEY `products_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`),
  ADD KEY `ratings_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Indexes for table `service_variants`
--
ALTER TABLE `service_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_variants_service_id_foreign` (`service_id`),
  ADD KEY `service_variants_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_links_media_id_foreign` (`media_id`);

--
-- Indexes for table `stripe_keys`
--
ALTER TABLE `stripe_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profile_photo_id_foreign` (`profile_photo_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verification_codes`
--
ALTER TABLE `verification_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verification_codes_otp_unique` (`otp`),
  ADD UNIQUE KEY `verification_codes_token_unique` (`token`);

--
-- Indexes for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additionals`
--
ALTER TABLE `additionals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_device_keys`
--
ALTER TABLE `admin_device_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_infos`
--
ALTER TABLE `card_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_users`
--
ALTER TABLE `coupon_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_costs`
--
ALTER TABLE `delivery_costs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_keys`
--
ALTER TABLE `device_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_device_keys`
--
ALTER TABLE `driver_device_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_histories`
--
ALTER TABLE `driver_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_orders`
--
ALTER TABLE `driver_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_manages`
--
ALTER TABLE `invoice_manages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `mobile_app_urls`
--
ALTER TABLE `mobile_app_urls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_schedules`
--
ALTER TABLE `order_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_variants`
--
ALTER TABLE `service_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_keys`
--
ALTER TABLE `stripe_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification_codes`
--
ALTER TABLE `verification_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additional_orders`
--
ALTER TABLE `additional_orders`
  ADD CONSTRAINT `additional_orders_additional_id_foreign` FOREIGN KEY (`additional_id`) REFERENCES `additionals` (`id`),
  ADD CONSTRAINT `additional_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `additional_services`
--
ALTER TABLE `additional_services`
  ADD CONSTRAINT `additional_services_additional_id_foreign` FOREIGN KEY (`additional_id`) REFERENCES `additionals` (`id`),
  ADD CONSTRAINT `additional_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `admin_device_keys`
--
ALTER TABLE `admin_device_keys`
  ADD CONSTRAINT `admin_device_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `card_infos`
--
ALTER TABLE `card_infos`
  ADD CONSTRAINT `card_infos_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD CONSTRAINT `coupon_users_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `coupon_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `device_keys`
--
ALTER TABLE `device_keys`
  ADD CONSTRAINT `device_keys_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_device_keys`
--
ALTER TABLE `driver_device_keys`
  ADD CONSTRAINT `driver_device_keys_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`);

--
-- Constraints for table `driver_histories`
--
ALTER TABLE `driver_histories`
  ADD CONSTRAINT `driver_histories_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `driver_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  ADD CONSTRAINT `driver_notifications_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`);

--
-- Constraints for table `driver_orders`
--
ALTER TABLE `driver_orders`
  ADD CONSTRAINT `driver_orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `driver_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `products_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `products_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `service_variants`
--
ALTER TABLE `service_variants`
  ADD CONSTRAINT `service_variants_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `service_variants_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `social_links`
--
ALTER TABLE `social_links`
  ADD CONSTRAINT `social_links_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_profile_photo_id_foreign` FOREIGN KEY (`profile_photo_id`) REFERENCES `media` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
