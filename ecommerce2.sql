-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 11:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce2`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(8, 5, 2, 1, '2022-12-10 02:35:56', '2022-12-10 02:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baju', NULL, NULL),
(2, 'Celana', NULL, NULL),
(3, 'Hoodie', NULL, NULL),
(4, 'Topi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_28_015701_create_categories_table', 1),
(5, '2022_09_28_023636_create_products_table', 1),
(6, '2022_10_26_032938_create_carts_table', 1),
(7, '2022_11_09_034430_create_transactions_table', 1),
(8, '2022_11_09_034608_create_transaction_details_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Devon', 370879, 'Iste ipsa iure ea autem non mollitia. Animi nihil voluptatum repudiandae quo minima ut quos quia. Voluptatem non consequatur ab optio.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(2, 2, 'Ulices', 694745, 'Voluptate non et similique maiores praesentium. Dolorum rerum commodi magni. Perspiciatis molestiae pariatur quia sit fugit minus est.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(3, 3, 'Aaron', 473166, 'Dolores nam facilis aut aut et. Vero officiis sint sint minima et. Aut aliquam sapiente non similique fugit vel suscipit nihil.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(4, 1, 'Orland', 801107, 'Optio recusandae alias necessitatibus sint perspiciatis totam quia. Atque tempora aut pariatur veniam. Qui et porro laudantium quia aliquid tempore.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(5, 4, 'Garnet', 223449, 'Dolore fuga animi enim nostrum nulla. Quaerat maiores facilis ducimus est dolor. Beatae non aut sunt eveniet totam nemo eius.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(6, 3, 'Maxime', 612522, 'Ut praesentium cumque sunt omnis omnis sapiente consequatur. Voluptatem eum similique suscipit nulla. Numquam iusto quis eius non.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(7, 1, 'Vaughn', 263729, 'Dignissimos pariatur inventore debitis tempore occaecati non. Impedit sit non similique voluptatem dolor qui repellat dolor. Corporis non blanditiis hic.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(8, 4, 'Maynard', 279125, 'Quibusdam tenetur ut aliquid eveniet esse earum blanditiis modi. Et ipsam totam aut neque aut dolor eaque.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(9, 1, 'Harley', 735859, 'Sed deleniti quia natus deleniti dolorum corporis. Quibusdam similique nobis expedita nemo dolore aut voluptates. Assumenda rerum nisi rerum vero odio.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(10, 4, 'Deondre', 857056, 'Rerum rerum fuga omnis impedit sit. Est quam nesciunt assumenda.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(11, 1, 'Laurel', 386786, 'Dicta dicta quae voluptatem placeat nulla blanditiis. Iure quo odit in totam vel architecto est.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(12, 4, 'Alessandro', 671939, 'Voluptatibus nam perspiciatis aliquid inventore dicta. Iure quia facere accusamus consequuntur et officia.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(13, 1, 'Reggie', 519690, 'Provident numquam dolor veniam deleniti aut iste. Aut incidunt sed ullam nihil amet eaque accusamus.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(14, 3, 'Kelley', 136444, 'Reprehenderit et nobis fugiat suscipit laboriosam corporis aliquam labore. Iure voluptas commodi in.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(15, 4, 'Loy', 171798, 'Eos tempora sunt quia dolorem a velit. Ut eius alias quaerat minima dolorum qui fugit.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(16, 4, 'Eliseo', 136509, 'Ut repudiandae incidunt harum. Voluptate nostrum omnis culpa fuga et cum non atque. Et recusandae quo est quo.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(17, 1, 'Dejuan', 855590, 'Tenetur ducimus deserunt enim aliquid libero. Veritatis dicta non non illo non.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(18, 4, 'Gonzalo', 853854, 'Voluptate dolor et id. Enim magnam enim ducimus vel quam. Qui et est aliquam repellat amet vero ipsum.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(19, 2, 'Pierce', 281875, 'Aut vel est sed quisquam. Dolorum id sit animi quo maiores ullam. Sed ea ut et maxime.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(20, 2, 'Jasper', 397522, 'Sed nisi dolore natus. Omnis voluptatem cumque enim dolor vitae reiciendis laudantium recusandae. Omnis est dolorum et magnam eum.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(21, 1, 'Colt', 635642, 'Aut iusto sit totam saepe. Qui et vel est blanditiis voluptatem beatae aperiam. Asperiores labore quia mollitia perspiciatis et quos.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(22, 2, 'Tyson', 274050, 'Ea quasi animi odio non ea. Eum natus illum reiciendis tempore autem sapiente. Est et deserunt et nesciunt error consequatur.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(23, 2, 'Tobin', 833775, 'Et pariatur molestiae quod sint earum provident quisquam. Aliquid voluptas nihil ratione rerum voluptatem. Mollitia magni eos at et ducimus.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(24, 3, 'Tyrel', 469927, 'In et doloremque ad ut optio explicabo. Aperiam reprehenderit ullam numquam sit quibusdam minima explicabo exercitationem. Eius aut omnis quos et rem quasi provident.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(25, 3, 'Oda', 903124, 'Vel recusandae expedita ex nihil aut exercitationem adipisci. Incidunt eos voluptatibus aspernatur repellat veniam ducimus a.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(26, 4, 'Kelley', 966854, 'Autem adipisci et laboriosam soluta est. Sed architecto alias ab ex magnam placeat perferendis. Nostrum nam fugiat repudiandae autem inventore reiciendis.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(27, 4, 'Garrett', 234705, 'Quo qui id rerum libero repellendus. Aut atque tenetur alias. Repellat non et consequuntur quae ipsa qui ducimus officiis.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(28, 4, 'Orion', 363864, 'Dicta sint porro autem blanditiis corporis delectus amet. At nihil maxime in et ipsum odit laboriosam cupiditate. Veniam odio aut eveniet animi.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(29, 4, 'Stanley', 778528, 'Velit quos necessitatibus dolorem aperiam. Voluptate aliquid laudantium id quia possimus. Enim nobis quia et in quam omnis explicabo.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(30, 2, 'Sofia', 415461, 'Voluptatem a sequi qui voluptatibus quia. Rerum qui sit non. Quia laborum et veniam modi omnis totam.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(31, 3, 'Shawn', 902284, 'Dignissimos quaerat dolorem recusandae qui et corporis quis. Ducimus dolorem sed totam vero aut.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(32, 2, 'Joshua', 430010, 'Fugit ea dolor in tenetur hic quasi. Ut odit qui labore consectetur ut.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(33, 2, 'Josue', 648156, 'Vel rem blanditiis ratione totam. Blanditiis mollitia aut soluta.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(34, 1, 'Dayton', 696280, 'Ea consectetur magnam voluptates inventore explicabo dolore. Est cum qui eos aut possimus. Tempora voluptatibus dolore officiis error soluta aperiam sed.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(35, 3, 'Riley', 340001, 'Beatae ex omnis eum est asperiores ut. Quo sunt accusantium nihil sed quaerat voluptate et.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(36, 1, 'Monte', 899191, 'Itaque et omnis deserunt ea sapiente consequatur tempore. Aut maiores eos aut odit nam qui illo aut.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(37, 4, 'Harry', 969257, 'Beatae voluptas recusandae rerum debitis impedit. Eum aut officia quo. Qui vel et iusto laudantium.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(38, 2, 'Efrain', 317323, 'Vero accusamus ratione delectus sed sed corporis ducimus. Quae voluptatibus qui ea eius.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(39, 3, 'Cooper', 576213, 'Et quia esse mollitia nihil sunt sint cumque commodi. Sapiente officiis est ut officia. Quis tempora est optio.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(40, 2, 'Jo', 710419, 'Ut reiciendis qui ex error iusto. Aut impedit quia repellat rem est. Odio dicta natus ducimus consequatur aut numquam necessitatibus.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(41, 4, 'Makenna', 251087, 'Id nam et quis ullam vel quae nam. Voluptatem nemo ut consequatur earum et maiores nesciunt. Nam omnis veniam sint nemo quo.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(42, 2, 'Terence', 707740, 'Doloremque aut perferendis quae molestiae. Sit iure facilis eaque molestias ipsa architecto. Sed ut voluptas ut id ut.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(43, 3, 'Rhett', 696457, 'Architecto consequuntur quibusdam sit consequuntur placeat. Est repellat beatae at ullam.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(44, 4, 'Robbie', 155025, 'Nulla quo molestiae deserunt consequatur culpa voluptas dolorum. Et ex dicta cumque enim reiciendis harum adipisci.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(45, 3, 'Norwood', 122403, 'Et quis sit labore enim nobis delectus. Consequatur rerum magni ut.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(46, 2, 'Ignatius', 176907, 'Quisquam porro sit voluptas adipisci laborum laudantium quia voluptatibus. Error sapiente inventore impedit.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(47, 4, 'Cullen', 569267, 'Necessitatibus asperiores aut provident quia quasi. Cupiditate ut voluptatem culpa corrupti. Quas perferendis sint dolores nemo.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(48, 3, 'Laverne', 835194, 'Omnis aliquid qui doloremque consequatur. Quaerat dolore numquam repudiandae voluptatem modi facere.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(49, 1, 'Franz', 891063, 'Ut ut amet officiis perferendis. Quia est suscipit tenetur ex eum.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37'),
(50, 1, 'Stevie', 735889, 'Magni qui sit voluptatem facilis non sit. Velit nam et ea commodi tempora.', '/storage/images/product.jpg', '2022-11-08 21:09:37', '2022-11-08 21:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2022-11-16 20:52:55', '2022-11-16 20:52:55'),
(2, 2, '2022-11-16 21:16:46', '2022-11-16 21:16:46'),
(3, 3, '2022-11-30 06:10:58', '2022-11-30 06:10:58'),
(4, 4, '2022-12-10 00:28:07', '2022-12-10 00:28:07'),
(5, 4, '2022-12-10 00:51:15', '2022-12-10 00:51:15'),
(6, 4, '2022-12-10 01:18:06', '2022-12-10 01:18:06'),
(7, 4, '2022-12-10 01:33:36', '2022-12-10 01:33:36'),
(8, 4, '2022-12-10 01:33:48', '2022-12-10 01:33:48'),
(9, 4, '2022-12-10 01:40:44', '2022-12-10 01:40:44'),
(10, 4, '2022-12-10 01:42:44', '2022-12-10 01:42:44'),
(11, 4, '2022-12-10 01:48:04', '2022-12-10 01:48:04'),
(12, 4, '2022-12-10 01:51:43', '2022-12-10 01:51:43'),
(13, 4, '2022-12-10 01:57:19', '2022-12-10 01:57:19'),
(14, 4, '2022-12-10 02:02:13', '2022-12-10 02:02:13'),
(15, 4, '2022-12-10 02:02:23', '2022-12-10 02:02:23'),
(16, 4, '2022-12-10 02:04:17', '2022-12-10 02:04:17'),
(17, 5, '2022-12-10 02:24:26', '2022-12-10 02:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 4, '2022-11-16 20:52:55', '2022-11-16 20:52:55'),
(2, 2, 2, 4, '2022-11-16 21:16:46', '2022-11-16 21:16:46'),
(3, 3, 1, 1, '2022-11-30 06:10:59', '2022-11-30 06:10:59'),
(4, 4, 3, 1, '2022-12-10 00:28:07', '2022-12-10 00:28:07'),
(5, 5, 3, 1, '2022-12-10 00:51:15', '2022-12-10 00:51:15'),
(6, 5, 5, 1, '2022-12-10 00:51:15', '2022-12-10 00:51:15'),
(7, 6, 3, 1, '2022-12-10 01:18:06', '2022-12-10 01:18:06'),
(8, 6, 5, 1, '2022-12-10 01:18:06', '2022-12-10 01:18:06'),
(9, 7, 3, 1, '2022-12-10 01:33:36', '2022-12-10 01:33:36'),
(10, 7, 5, 1, '2022-12-10 01:33:36', '2022-12-10 01:33:36'),
(11, 8, 3, 1, '2022-12-10 01:33:48', '2022-12-10 01:33:48'),
(12, 8, 5, 1, '2022-12-10 01:33:48', '2022-12-10 01:33:48'),
(13, 9, 3, 1, '2022-12-10 01:40:44', '2022-12-10 01:40:44'),
(14, 9, 5, 1, '2022-12-10 01:40:44', '2022-12-10 01:40:44'),
(15, 10, 3, 1, '2022-12-10 01:42:44', '2022-12-10 01:42:44'),
(16, 10, 5, 1, '2022-12-10 01:42:44', '2022-12-10 01:42:44'),
(17, 11, 3, 1, '2022-12-10 01:48:04', '2022-12-10 01:48:04'),
(18, 11, 5, 1, '2022-12-10 01:48:04', '2022-12-10 01:48:04'),
(19, 12, 3, 1, '2022-12-10 01:51:43', '2022-12-10 01:51:43'),
(20, 12, 5, 1, '2022-12-10 01:51:43', '2022-12-10 01:51:43'),
(21, 13, 3, 1, '2022-12-10 01:57:19', '2022-12-10 01:57:19'),
(22, 13, 5, 1, '2022-12-10 01:57:19', '2022-12-10 01:57:19'),
(23, 14, 3, 1, '2022-12-10 02:02:13', '2022-12-10 02:02:13'),
(24, 14, 5, 1, '2022-12-10 02:02:13', '2022-12-10 02:02:13'),
(25, 15, 3, 1, '2022-12-10 02:02:23', '2022-12-10 02:02:23'),
(26, 15, 5, 1, '2022-12-10 02:02:23', '2022-12-10 02:02:23'),
(27, 16, 3, 1, '2022-12-10 02:04:17', '2022-12-10 02:04:17'),
(28, 16, 5, 1, '2022-12-10 02:04:17', '2022-12-10 02:04:17'),
(29, 17, 6, 1, '2022-12-10 02:24:26', '2022-12-10 02:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'h4itani', 'hddsghgds@gmail.com', NULL, '$2y$10$G9wMgRO5Il2MiFpXDWa/H.jrP3hNUiPQeCjDNijWtqRvyG/Gqq11m', 'Canada', '188888888888', NULL, '2022-11-16 20:30:41', '2022-11-16 20:30:41'),
(3, 'hait4ni', 'ryynareisha@gmail.com', NULL, '$2y$10$OCaLXpYLkHwkaesO2DkpH.qg92sz/KJDz7zxXgCoYsPOTvYh9POf6', 'disini', '00000', NULL, '2022-11-30 06:10:38', '2022-11-30 06:10:38'),
(4, 'osamumiyaa', 'zaahover@gmail.com', NULL, '$2y$10$4gcgGRtJg/.pH2aeKNioS.mFlZoWCUAxJgTTK8M7W./BJ9bqdzVtC', 'kjfh', '0878', NULL, '2022-12-10 00:05:15', '2022-12-10 00:05:15'),
(5, 'rin haitani', 'rinwatt356@gmail.com', NULL, '$2y$10$ePkyhkfyTjy79t0vsU6/1OmX97oJxemQmXid7h4pWx9ajV6oOxl6i', 'disini', '08575757', NULL, '2022-12-10 02:24:04', '2022-12-10 02:24:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
