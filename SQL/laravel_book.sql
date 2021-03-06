-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 06:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `classroom`, `created_at`, `updated_at`) VALUES
(2, 'G123', '2020-05-01 05:55:35', '2020-05-01 05:55:35'),
(3, 'TCS123', '2020-05-02 06:20:37', '2020-05-02 06:20:37'),
(4, 'TCS2003', '2020-05-02 21:13:15', '2020-05-02 21:13:15');

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `created_at`, `updated_at`, `class_id`, `user_id`) VALUES
(14, 'test.pdf', '966', '2020-05-02 04:29:41', '2020-05-02 04:29:41', 2, 45),
(15, 'test1.pdf', '966', '2020-05-02 06:34:19', '2020-05-02 06:34:19', 2, 4),
(16, 'test.pdf', '966', '2020-05-02 06:56:26', '2020-05-02 06:56:26', 3, 45),
(17, 'test2.pdf', '966', '2020-05-02 07:00:23', '2020-05-02 07:00:23', 3, 40),
(18, 'test3.pdf', '966', '2020-05-02 07:03:51', '2020-05-02 07:03:51', 2, 44),
(19, 'test.pdf', '966', '2020-05-02 06:34:19', '2020-05-02 06:34:19', 2, 12),
(20, 'COMP1640_Ngo Nguyen Song Nguyen_TCS2003_testIndividual.pdf', '81322', '2020-05-02 21:16:31', '2020-05-02 21:16:31', 4, 47),
(21, 'COMP1640_Ngo Nguyen Song Nguyen_TCS2003_testIndividual.pdf', '81322', '2020-05-02 21:26:13', '2020-05-02 21:26:13', 4, 46),
(22, 'COMP1787_Ngo Nguyen Song Nguyen_TCS2003_test.pdf', '81322', '2020-05-02 21:26:33', '2020-05-02 21:26:33', 4, 46);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(255) NOT NULL,
  `classroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_id`, `classroom`, `student_id`, `student_name`, `teacher_id`, `teacher_name`, `created_at`, `updated_at`) VALUES
(9, 2, 'G123', 3, 'Ava Nitzsche', 8, 'Miss Kelly Reynolds', NULL, NULL),
(10, 3, 'TCS123', 3, 'Ava Nitzsche', 45, 'Duy02', NULL, NULL),
(11, 3, 'TCS123', 40, 'Test3', 45, 'Duy02', NULL, NULL),
(12, 3, 'TCS123', 44, 'Duy03', 45, 'Duy02', NULL, NULL),
(13, 2, 'G123', 4, 'Miss Francesca Kris III', 45, 'Duy02', NULL, NULL),
(14, 2, 'G123', 44, 'Duy03', 45, 'Duy02', NULL, NULL),
(15, 2, 'G123', 44, 'Duy03', 12, 'Duy02', NULL, NULL),
(16, 4, 'TCS2003', 46, 'Will', 47, 'Johnathan', NULL, NULL),
(17, 4, 'TCS2003', 49, 'Rose', 47, 'Johnathan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 23, 3, 'Exercitationem temporibus voluptatem eligendi et debitis id.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(2, 23, 13, 'Libero facilis sed officiis eaque.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(3, 9, 18, 'Ut autem natus nobis commodi incidunt.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(4, 29, 23, 'Eum qui ullam ducimus praesentium incidunt.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(5, 8, 12, 'Ea a optio voluptatem amet omnis ea.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(6, 4, 7, 'Voluptate unde dolorem et est.', 1, '2020-04-13 03:38:34', '2020-05-03 07:04:38'),
(7, 30, 21, 'Quia possimus minus voluptate magni sed occaecati consequatur.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(8, 27, 10, 'Corrupti illo vel veritatis id et.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(9, 9, 10, 'Repudiandae aspernatur sunt aut id consequuntur laboriosam.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(10, 4, 7, 'Voluptates dicta voluptate minus.', 1, '2020-04-13 03:38:34', '2020-05-03 07:04:38'),
(11, 29, 4, 'Atque voluptatem incidunt reprehenderit blanditiis velit quis.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(12, 18, 26, 'Voluptatem repudiandae excepturi aut illo animi.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(13, 6, 23, 'Magnam vel dolore occaecati enim ullam sed libero.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(14, 2, 8, 'Aliquam esse reprehenderit illo.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(15, 24, 12, 'Earum reprehenderit minima corporis ipsam corrupti odio.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(16, 10, 3, 'Recusandae laboriosam officia et quam.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(17, 3, 19, 'Quaerat ab voluptatem ullam nobis alias quia quis.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(18, 21, 15, 'Voluptas voluptate id atque quaerat voluptatem nemo.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(19, 22, 26, 'Facilis tenetur suscipit adipisci nihil.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(20, 28, 16, 'Dolore ducimus dicta commodi harum distinctio.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(21, 26, 19, 'Occaecati ipsum fugit aut dignissimos corrupti mollitia.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(22, 21, 30, 'Repellendus quos corrupti sunt est placeat eaque sint.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(23, 1, 23, 'Ut cumque in maxime molestiae hic laudantium vero.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(24, 25, 10, 'Asperiores recusandae ea voluptatem dolorem doloribus ut ut et.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(25, 24, 18, 'Adipisci molestias voluptates sed architecto dolor sit aperiam.', 1, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(26, 12, 26, 'Omnis recusandae nostrum recusandae corporis qui consequatur dolorem.', 0, '2020-04-13 03:38:34', '2020-04-13 03:38:34'),
(27, 21, 23, 'Inventore temporibus perspiciatis in.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(28, 22, 4, 'Error voluptate natus laboriosam ut vero.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(29, 30, 20, 'Sed nulla voluptas omnis illo.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(30, 21, 6, 'Cum esse excepturi repellat dolor autem nihil autem perspiciatis.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(31, 24, 2, 'Voluptas dolores rerum laborum consequatur quos accusamus.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(32, 10, 22, 'Fugit soluta consectetur porro officiis.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(33, 14, 13, 'Et vero ex et.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(34, 15, 5, 'Et beatae unde tempora velit.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(35, 15, 16, 'Praesentium quis nobis quo qui maxime.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(36, 11, 24, 'Ut et suscipit debitis rerum ad provident perspiciatis.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(37, 9, 28, 'Quis molestias nihil et dignissimos vero totam dolorem et.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(38, 10, 12, 'Eos ad vero non distinctio voluptatem maxime ea.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(39, 20, 25, 'Ipsam et sed fuga unde est soluta.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(40, 29, 21, 'Non dolorem amet eligendi tempore.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(41, 5, 19, 'Officiis dolores et iusto ducimus quidem quia dolorem.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(42, 17, 20, 'Et a tenetur harum temporibus.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(43, 16, 5, 'Iusto quo facilis vero et nemo quibusdam.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(44, 1, 14, 'Ut autem ex aliquid.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(45, 3, 18, 'Qui non quos doloribus omnis atque minima.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(46, 6, 15, 'Sed rerum veritatis quis occaecati iusto harum distinctio.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(47, 25, 12, 'Reiciendis ipsam maiores doloremque dignissimos voluptas.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(48, 24, 28, 'Quos vel magnam nisi natus enim nihil.', 1, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(49, 17, 27, 'Id debitis adipisci maiores voluptatibus.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(50, 23, 29, 'Necessitatibus voluptas aut magnam modi voluptatem similique dolor.', 0, '2020-04-13 03:38:35', '2020-04-13 03:38:35'),
(51, 26, 9, 'Similique consequatur possimus temporibus eum iusto cumque.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(52, 13, 15, 'Iste autem cumque iste dolorum repudiandae atque.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(53, 8, 20, 'Voluptatem molestiae commodi aut earum aut.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(54, 10, 20, 'Ab corporis rerum unde commodi dolorem minus.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(55, 21, 28, 'Omnis et dignissimos et quaerat assumenda quae.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(56, 2, 15, 'Animi sit accusamus est hic pariatur neque.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(57, 9, 17, 'Harum eum architecto voluptatem voluptas.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(58, 23, 7, 'Voluptate molestiae et molestiae sapiente odio fuga nisi.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(59, 27, 12, 'Delectus nobis commodi nesciunt dolor quisquam.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(60, 6, 5, 'Ut adipisci aliquid explicabo eligendi ut.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(61, 12, 2, 'Eius quia in sint cum adipisci.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(62, 25, 30, 'Maxime doloribus mollitia fugit.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(63, 1, 12, 'Assumenda eligendi alias ut incidunt quis et aut.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(64, 18, 25, 'Vero illo quis unde rerum ut.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(65, 20, 15, 'Corporis dolorum quibusdam nostrum omnis.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(66, 7, 24, 'Itaque nobis dolore voluptatem pariatur possimus qui.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(67, 25, 26, 'Facilis et ut voluptatem molestias est repudiandae dignissimos.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(68, 26, 9, 'Blanditiis explicabo sed voluptate earum maxime in omnis.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(69, 23, 2, 'Autem quasi dicta quis excepturi dolore nihil dolores libero.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(70, 5, 16, 'Ut laborum eligendi eaque cumque.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(71, 17, 7, 'Dolorem voluptatem aut nam numquam ullam enim sapiente.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(72, 8, 2, 'Magni est aliquam temporibus odio id.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(73, 17, 23, 'In rerum dolorem dolores pariatur quisquam consequuntur enim.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(74, 6, 3, 'Id nisi eum et consectetur porro.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(75, 25, 15, 'Accusantium quis eos voluptatibus.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(76, 27, 9, 'Facilis modi autem labore vitae qui.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(77, 15, 10, 'Ipsa rerum totam sed asperiores ut consequatur.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(78, 22, 11, 'Tenetur minus aut autem minus est quis.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(79, 28, 22, 'Et aperiam possimus ut quaerat incidunt tenetur dolore sint.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(80, 26, 30, 'Assumenda labore expedita autem voluptatum cupiditate rerum.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(81, 28, 9, 'Et aperiam soluta commodi vitae.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(82, 13, 24, 'Occaecati quia aliquid et quaerat iusto adipisci.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(83, 20, 15, 'Qui iure eum in iusto fugiat corporis quidem.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(84, 22, 4, 'Mollitia commodi ab tenetur et.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(85, 26, 4, 'Voluptatem laudantium ut error autem in fugiat.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(86, 14, 17, 'Assumenda sit et nihil aut facilis eveniet.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(87, 5, 11, 'Eum beatae fugiat sequi nostrum repellendus.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(88, 26, 27, 'Ducimus voluptatum dolorum itaque quod nihil aut.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(89, 10, 15, 'Beatae laboriosam corporis sint porro.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(90, 9, 13, 'Eum rerum in et culpa et.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(91, 25, 7, 'Veritatis suscipit voluptatem ipsum et.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(92, 12, 11, 'Itaque iste fugit sapiente libero animi quia.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(93, 20, 19, 'Vel eveniet ipsa aperiam et laboriosam voluptate maiores ipsum.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(94, 9, 2, 'Dolore asperiores amet quia qui magni unde.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(95, 9, 12, 'Voluptatem minima nisi quos iure sint.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(96, 10, 18, 'Sit qui quia illum.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(97, 2, 22, 'Voluptas aliquam est sint sint placeat odit aut.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(98, 4, 5, 'Tenetur eos aut praesentium modi molestias consequatur.', 1, '2020-04-13 04:11:37', '2020-05-03 07:04:38'),
(99, 30, 26, 'A deleniti enim rerum voluptatem velit omnis.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(100, 2, 22, 'Vel quia corrupti ut et.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(101, 19, 9, 'Laboriosam dicta eaque dignissimos enim alias sed necessitatibus.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(102, 14, 1, 'Et voluptatem voluptatibus aliquid et eius commodi.', 1, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(103, 18, 14, 'Dolore aut ipsa velit.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(104, 7, 14, 'Omnis architecto nulla animi.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(105, 3, 21, 'Odio quia quod et qui fuga quam.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(106, 11, 26, 'Hic error sequi delectus unde aut.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(107, 23, 21, 'Aut sed facilis cupiditate repellat rerum est voluptates.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(108, 18, 29, 'Neque vel odit quisquam eum sed minima laboriosam.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(109, 10, 21, 'Dolores ut praesentium aut perferendis tempore quibusdam.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(110, 10, 13, 'Enim ea aliquid repudiandae tenetur.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(111, 27, 26, 'Quas sit placeat facilis.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(112, 27, 15, 'Nostrum ipsam molestiae sint velit ut qui sed perspiciatis.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(113, 23, 5, 'Inventore non nisi a animi.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(114, 28, 19, 'Excepturi aspernatur quam voluptatem sint hic.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(115, 18, 1, 'Temporibus qui sit et iusto doloribus enim perferendis.', 1, '2020-04-13 04:11:37', '2020-04-13 05:30:48'),
(116, 17, 24, 'Doloremque rem reprehenderit ratione ab nihil earum quis.', 0, '2020-04-13 04:11:37', '2020-04-13 04:11:37'),
(117, 14, 3, 'Esse ut suscipit est architecto odit temporibus.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(118, 29, 22, 'Qui quam et eos tempore voluptatem sapiente.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(119, 7, 18, 'Quaerat impedit fugiat voluptas velit consectetur.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(120, 19, 3, 'Ducimus illum modi tenetur repudiandae harum nihil.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(121, 6, 10, 'Magnam quos at numquam neque impedit tenetur omnis.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(122, 5, 9, 'Distinctio possimus laboriosam repellendus sequi est commodi voluptas.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(123, 6, 27, 'Aut eveniet autem ut qui.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(124, 16, 26, 'Minus qui nostrum laudantium fugit.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(125, 23, 20, 'Consequatur eius ducimus mollitia similique error ducimus nam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(126, 20, 14, 'Deleniti nam quia magni laborum sed.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(127, 6, 24, 'Dolores voluptas sapiente perferendis.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(128, 8, 1, 'Dolores quo magni voluptates mollitia aut.', 1, '2020-04-13 04:11:38', '2020-04-13 04:19:06'),
(129, 9, 17, 'Laborum non maiores commodi aut commodi.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(130, 5, 30, 'Nihil et consequatur occaecati natus sequi qui.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(131, 16, 11, 'Repellendus optio laborum velit modi.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(132, 12, 26, 'Ut enim et amet.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(133, 4, 7, 'Distinctio ea ratione ea consequatur.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(134, 12, 23, 'Incidunt dolor ipsa non sit deleniti.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(135, 7, 15, 'Corporis dolorum quidem neque et enim quo quis.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(136, 9, 4, 'Quaerat quod eum quasi unde nam quia.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(137, 7, 10, 'Ipsum harum sed dolor.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(138, 9, 16, 'Consequuntur maiores ipsum quia sed nostrum.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(139, 11, 8, 'Consectetur quae doloribus et.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(140, 3, 5, 'Animi voluptatibus tenetur fugit aspernatur.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(141, 12, 27, 'Illum non saepe nam voluptatum.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(142, 22, 17, 'Nesciunt distinctio deleniti magni ea a aut sint.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(143, 22, 19, 'Qui aliquam earum dicta earum.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(144, 24, 20, 'Sint dolorum natus reprehenderit quam qui modi nihil.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(145, 27, 19, 'Reprehenderit aut ullam consequatur animi.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(146, 7, 30, 'Id fuga possimus cum dicta.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(147, 4, 13, 'Iure ad ut saepe iste dicta impedit unde.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(148, 15, 29, 'Totam nisi et dolorem ut.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(149, 27, 8, 'Earum et sequi omnis error possimus.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(150, 24, 28, 'Quam dolores commodi excepturi architecto explicabo ipsam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(151, 17, 15, 'Possimus et et sit ipsam at cum.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(152, 21, 1, 'Nihil dignissimos et ea est sunt dolore.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(153, 22, 29, 'Aperiam esse voluptatem aspernatur et et ut nostrum.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(154, 22, 4, 'Eveniet nihil ea qui unde repellendus voluptate soluta ut.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(155, 24, 4, 'Sint vitae soluta nesciunt non fugiat.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(156, 18, 23, 'Ullam aut occaecati voluptatem quisquam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(157, 21, 19, 'Hic sit minima sunt voluptate sed.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(158, 5, 23, 'Possimus et qui alias qui adipisci quae.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(159, 23, 8, 'Minima omnis et eius ut sunt voluptatem eaque.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(160, 2, 16, 'Occaecati sed dolor dolorem pariatur ipsa et.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(161, 6, 22, 'Omnis harum repudiandae sunt earum quia voluptatibus.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(162, 14, 18, 'Quas qui voluptatem reiciendis hic.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(163, 22, 4, 'Soluta quis est explicabo facilis earum.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(164, 13, 9, 'Non et occaecati veniam omnis voluptatem non sunt.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(165, 21, 7, 'Non possimus vel in veniam qui.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(166, 28, 12, 'Quaerat eos perferendis quam libero voluptates.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(167, 20, 4, 'Tempore et est omnis autem qui beatae est.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(168, 30, 29, 'Aut id accusamus incidunt.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(169, 22, 10, 'Eos sed qui molestiae nemo architecto veniam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(170, 2, 4, 'Incidunt aut ipsam sint eius temporibus qui et iure.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(171, 5, 17, 'Ab amet libero quas.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(172, 9, 1, 'Ut sed et rerum non non repudiandae.', 1, '2020-04-13 04:11:38', '2020-04-13 04:19:05'),
(173, 28, 9, 'Ut rerum porro sit velit.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(174, 15, 29, 'Ipsam veniam aut tempora.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(175, 5, 18, 'Beatae corporis consectetur quod culpa dolores aut numquam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(176, 10, 27, 'Et similique error harum fugiat quisquam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(177, 26, 18, 'Deleniti incidunt enim eligendi ipsam aut pariatur.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(178, 21, 19, 'Pariatur et explicabo qui provident.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(179, 11, 14, 'In nostrum est et quod est in.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(180, 8, 29, 'Unde doloribus maiores eligendi qui qui quam quia.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(181, 19, 24, 'Repellat aut odit velit.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(182, 19, 3, 'Nihil et officiis sed tenetur ut reprehenderit iure.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(183, 3, 11, 'Vel non commodi explicabo eveniet.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(184, 4, 19, 'Molestiae cum alias voluptate quis.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(185, 23, 1, 'Voluptas est tempore hic corrupti similique ut voluptatem.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(186, 30, 2, 'Sint eaque neque hic eius soluta perspiciatis dolorem.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(187, 2, 24, 'Alias deserunt voluptates rerum.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(188, 3, 12, 'Pariatur debitis autem sunt sint magni harum dolorem.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(189, 27, 16, 'Repudiandae fugit vitae reiciendis perferendis asperiores aspernatur.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(190, 26, 1, 'In iure neque ut alias mollitia unde.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(191, 9, 11, 'Unde ut enim minus corrupti explicabo nam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(192, 13, 7, 'Mollitia aut alias fugiat voluptatibus dolor.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(193, 27, 10, 'Aperiam vero sint incidunt repellat autem.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(194, 21, 10, 'Aut reprehenderit autem dolorem suscipit commodi et.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(195, 30, 27, 'Voluptas est et aperiam officiis qui sapiente ut.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(196, 4, 10, 'Reprehenderit velit occaecati quaerat ipsum ipsum fuga.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(197, 20, 13, 'Aut amet repudiandae quia in qui animi.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(198, 3, 8, 'Alias debitis et voluptate.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(199, 16, 12, 'Adipisci officia voluptas voluptas explicabo facere.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(200, 1, 16, 'Officia id explicabo non necessitatibus sed.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(201, 14, 17, 'Rem illo est consectetur eos.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(202, 21, 18, 'Consequatur veniam delectus doloremque ratione consequatur.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(203, 7, 23, 'Qui id quas quia eos totam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(204, 4, 14, 'Eum et ipsam odio atque rerum et ratione.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(205, 26, 10, 'Eaque et occaecati inventore exercitationem.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(206, 5, 6, 'Excepturi officiis quia delectus amet.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(207, 27, 17, 'Voluptas ipsam quis impedit ut adipisci quaerat enim.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(208, 16, 4, 'Error eius ipsum assumenda veniam libero dolore sed.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(209, 9, 23, 'Quos atque atque esse qui amet minima.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(210, 5, 18, 'Dolor et accusantium alias libero necessitatibus est.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(211, 16, 5, 'Doloribus omnis ex occaecati maiores.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(212, 27, 6, 'Dignissimos porro earum nobis et magni.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(213, 17, 21, 'Enim nesciunt et voluptas et officiis ut.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(214, 25, 6, 'Velit ut est est.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(215, 9, 12, 'Et quia nihil sint qui vel voluptas non.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(216, 17, 21, 'Ea libero aut atque aut molestias.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(217, 20, 14, 'Fugiat eum fugiat autem modi nemo pariatur ducimus.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(218, 15, 12, 'Consequatur optio inventore dolorem sint voluptatem distinctio nostrum dolor.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(219, 15, 18, 'Eos modi minus cum accusamus tempora.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(220, 9, 6, 'Inventore eos quia eum porro et sunt.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(221, 5, 19, 'Nemo maxime possimus ipsum quam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(222, 29, 4, 'Harum dolores sed hic numquam aut quasi aut iure.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(223, 11, 30, 'Blanditiis quisquam illum ducimus possimus.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(224, 4, 23, 'Repudiandae ut magnam et fugit.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(225, 23, 9, 'Reprehenderit ad ipsam alias excepturi ex eum consequatur.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(226, 20, 16, 'Vero aut provident temporibus debitis tenetur.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(227, 16, 23, 'Corporis voluptate culpa ut rerum.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(228, 18, 13, 'Ut architecto quod veniam aut veritatis dolore similique reiciendis.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(229, 4, 27, 'Fugit et eos corporis at iste.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(230, 12, 11, 'Et facilis velit enim inventore.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(231, 14, 5, 'Quis omnis et saepe ut.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(232, 20, 19, 'Nesciunt rerum magnam deserunt cumque quos mollitia unde.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(233, 21, 17, 'Quos quod et rerum et incidunt quos.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(234, 27, 5, 'Fuga cumque nostrum minus quo qui.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(235, 6, 3, 'Voluptates quaerat distinctio distinctio rerum et doloremque voluptas aut.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(236, 1, 15, 'Accusantium sit atque vel et consequuntur enim eius.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(237, 27, 3, 'Ipsa consectetur minus autem qui quo fugiat.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(238, 16, 10, 'Quo voluptatem mollitia illo veniam earum eum quidem.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(239, 6, 18, 'Consequatur corporis eligendi sit sed velit aut dolores.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(240, 18, 6, 'Cupiditate corporis placeat sed tenetur soluta quos aspernatur pariatur.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(241, 4, 9, 'Suscipit fuga omnis aliquam dolore provident.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(242, 9, 18, 'Et impedit minus et repellat incidunt esse esse cumque.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(243, 26, 14, 'Delectus in et ut recusandae molestiae.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(244, 17, 23, 'Vel ut laborum et corrupti.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(245, 21, 8, 'Aliquam repellat sunt animi non optio.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(246, 11, 24, 'Quia nulla tempore itaque sint animi sunt officia.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(247, 3, 9, 'Voluptatem qui quia quaerat sequi alias.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(248, 14, 1, 'Ipsa molestiae eum dignissimos natus rerum pariatur quam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(249, 12, 30, 'Quis excepturi quis temporibus dolor nisi est eos quibusdam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(250, 17, 28, 'Aliquid assumenda eum ut minus.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(251, 13, 20, 'Qui aut corrupti ex voluptatibus reiciendis numquam quo.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(252, 4, 2, 'Et illum hic repellendus.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(253, 3, 17, 'Quas ut vel sit quisquam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(254, 9, 1, 'Culpa quae explicabo nostrum nulla.', 1, '2020-04-13 04:11:38', '2020-04-13 04:19:05'),
(255, 21, 6, 'Corporis voluptatum quaerat aut eligendi sed ratione soluta.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(256, 5, 21, 'Esse qui harum repellendus non veritatis enim odio.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(257, 26, 22, 'Tempora ut aperiam consequatur iusto omnis numquam nemo rerum.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(258, 7, 1, 'Non ea atque autem aut voluptates accusantium.', 1, '2020-04-13 04:11:38', '2020-04-13 04:19:04'),
(259, 4, 2, 'Ex ipsa quidem magni cumque quam.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(260, 4, 30, 'Numquam non architecto rem nisi facere soluta.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(261, 9, 3, 'Eum soluta ea sed pariatur a.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(262, 17, 15, 'Dolor cumque esse hic dolores.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(263, 1, 7, 'Non ad omnis sed eaque quia est in molestias.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(264, 1, 9, 'Similique occaecati est nulla dolores rem.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(265, 15, 11, 'Eos molestias ut aliquid.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(266, 12, 25, 'Aut dolore reiciendis beatae consequatur.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(267, 8, 23, 'Nam nihil non tempora itaque quia et.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(268, 29, 30, 'Quas dolor omnis dolores porro id corrupti iure.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(269, 2, 14, 'Cumque asperiores ipsa in dolores.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(270, 11, 5, 'Sit repellat asperiores autem tempora quia.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(271, 21, 3, 'Recusandae molestiae laudantium et impedit et.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(272, 5, 24, 'Quo ipsam et ut quisquam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(273, 2, 17, 'Odio beatae excepturi sit sunt.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(274, 10, 2, 'Placeat in ut ipsum sed ducimus minus iusto.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(275, 27, 19, 'Ut eaque asperiores est voluptas saepe mollitia.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(276, 24, 12, 'Provident quod voluptatum consectetur rerum sit natus consectetur.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(277, 27, 12, 'Ut temporibus accusamus suscipit nesciunt non maxime voluptatem.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(278, 14, 29, 'Cum blanditiis dolorem omnis velit quia maiores.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(279, 30, 8, 'Ipsa animi illo libero et corporis magnam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(280, 5, 22, 'Nisi magnam id est.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(281, 6, 11, 'Velit dolor eos quia placeat.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(282, 29, 23, 'Quis exercitationem sint rerum.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(283, 9, 3, 'Error et autem exercitationem laboriosam.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(284, 4, 15, 'Necessitatibus aut explicabo corporis aut omnis iste.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(285, 29, 20, 'Enim voluptatem et dicta laboriosam quae eveniet.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(286, 3, 7, 'Fuga et perspiciatis iusto sit vel tenetur id.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(287, 24, 22, 'Nam est ut debitis culpa adipisci temporibus impedit nesciunt.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(288, 3, 8, 'Praesentium ipsum unde sed ratione.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(289, 8, 21, 'Itaque aut sunt culpa omnis exercitationem.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(290, 12, 2, 'Vero eligendi doloribus dolorem ab corrupti dolores at ab.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(291, 12, 13, 'Nihil eum doloribus ut assumenda dolorem dolorem optio.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(292, 16, 14, 'Neque ut et omnis veritatis.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(293, 20, 11, 'Tempora adipisci officiis in ab enim.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(294, 6, 17, 'Aperiam vel laborum aliquam.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(295, 21, 2, 'Optio nemo sequi natus optio sunt nostrum voluptatibus.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(296, 2, 17, 'Natus possimus numquam et natus praesentium non corporis consequuntur.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(297, 8, 9, 'Impedit et veritatis id et.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(298, 26, 6, 'Quia ab sint provident quas.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(299, 7, 1, 'Numquam quam illo suscipit iusto accusantium voluptas fugit.', 1, '2020-04-13 04:11:38', '2020-04-13 04:19:04'),
(300, 24, 12, 'Accusantium quos est ea voluptas eum nulla aliquid.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(301, 12, 26, 'Quia atque eaque vitae est facere.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(302, 21, 29, 'Quia aut et labore pariatur praesentium qui placeat.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(303, 10, 14, 'Odit dolor et aperiam et.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(304, 7, 3, 'Ad dolores quia dolore itaque sed.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(305, 17, 12, 'Similique rerum magnam qui reiciendis.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(306, 25, 9, 'At possimus dolor voluptas eveniet quo eum maxime accusamus.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(307, 8, 24, 'Voluptatem et at quod architecto expedita odio ratione.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(308, 20, 3, 'Nisi pariatur et fugit.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(309, 15, 26, 'Rem occaecati illo qui est alias odio.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(310, 7, 17, 'Id et repellat vitae nesciunt consequatur omnis.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(311, 4, 20, 'Est a omnis et asperiores reiciendis aut.', 1, '2020-04-13 04:11:38', '2020-05-03 07:04:38'),
(312, 5, 8, 'Quia dolores officia voluptatem sapiente non vero.', 1, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(313, 18, 13, 'Quo delectus iure necessitatibus exercitationem.', 0, '2020-04-13 04:11:38', '2020-04-13 04:11:38'),
(314, 24, 20, 'Non ut reiciendis id voluptates voluptas dolorem.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(315, 28, 3, 'Qui quam veritatis magnam nobis mollitia et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(316, 9, 14, 'Earum id accusantium vel aut non fugit aut.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(317, 17, 1, 'Voluptas omnis dolor ut autem non.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(318, 17, 25, 'Eaque ea nam reprehenderit aut aut voluptas.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(319, 13, 21, 'Assumenda amet quae accusantium quia.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(320, 25, 3, 'Quod sed dolore quibusdam nostrum unde culpa ipsam.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(321, 26, 3, 'Aut ab ut saepe minus libero nobis enim.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(322, 16, 6, 'Dolore minima rerum earum deleniti soluta.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(323, 26, 12, 'Consequatur et aliquam asperiores ad eos animi.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(324, 24, 26, 'Et perferendis ut aut possimus.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(325, 16, 15, 'Dolores minima iusto explicabo.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(326, 3, 1, 'Non voluptas explicabo ratione.', 1, '2020-04-13 04:11:39', '2020-04-13 07:45:25'),
(327, 14, 19, 'Esse ea soluta ab repellat qui.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(328, 5, 27, 'Vel iure atque illo recusandae.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(329, 12, 30, 'Omnis quod adipisci rerum eaque qui laboriosam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(330, 21, 30, 'Quam iste est voluptatem veniam.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(331, 9, 15, 'Exercitationem natus praesentium aut.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(332, 18, 26, 'Adipisci quidem et dolorem dolorem fugit aspernatur.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(333, 6, 12, 'Quo veniam sapiente pariatur et perspiciatis.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(334, 4, 1, 'Qui facilis ut aut sint.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(335, 30, 22, 'Ut excepturi officia ipsa dolorem aliquid.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(336, 23, 13, 'Velit aut suscipit iure sequi consectetur possimus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(337, 2, 22, 'Soluta sunt neque iusto temporibus.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(338, 16, 22, 'Harum commodi deleniti illum enim tenetur nobis expedita.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(339, 22, 1, 'Cumque quae quia quo doloribus quaerat.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(340, 13, 27, 'Iure dolores incidunt accusantium ducimus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(341, 12, 6, 'Sapiente et minima cum explicabo.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(342, 15, 28, 'Pariatur quaerat atque minima ut et excepturi.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(343, 3, 9, 'Qui dolores harum doloribus pariatur sequi molestiae.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(344, 6, 11, 'Sapiente dolores at aliquid accusantium.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(345, 18, 13, 'Consequatur nihil harum dolorum voluptatum eaque similique rerum.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(346, 13, 10, 'Maxime exercitationem possimus aut incidunt.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(347, 27, 2, 'Temporibus aliquam harum non voluptatibus.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(348, 24, 15, 'Esse doloremque hic natus ut ullam explicabo deserunt.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(349, 14, 12, 'Ipsa quo ut et quo architecto.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(350, 30, 26, 'Aliquid odio deleniti eum architecto nobis et dolores praesentium.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(351, 10, 4, 'Laboriosam nisi similique incidunt hic asperiores.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(352, 12, 23, 'Aperiam blanditiis accusamus porro nemo.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(353, 28, 12, 'Quaerat eum eos facilis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(354, 12, 28, 'Expedita quo facere consequatur modi pariatur sit.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(355, 10, 5, 'Sit reiciendis vel placeat voluptates ad.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(356, 18, 29, 'Odit sunt dicta quos aperiam ut repellendus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(357, 17, 7, 'Explicabo sit blanditiis maiores voluptatum.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(358, 27, 26, 'Veniam numquam voluptate et sequi qui rerum.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(359, 21, 19, 'Facere dolores ut sed est eum molestiae.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(360, 11, 28, 'Saepe dolore qui omnis error illo.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(361, 14, 6, 'Quisquam autem qui et nobis sit in unde.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(362, 21, 2, 'Facere perspiciatis cumque saepe velit eos consequatur.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(363, 15, 2, 'Sit voluptatibus accusantium doloribus ullam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(364, 8, 30, 'Est asperiores vero ut voluptas mollitia iste eveniet.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(365, 14, 16, 'Minus iusto corrupti error earum dolor perspiciatis.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(366, 11, 14, 'Quo perspiciatis molestias nostrum sunt.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(367, 19, 26, 'Optio molestiae tenetur magni sed omnis eius.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(368, 29, 4, 'Odio inventore minus amet rerum soluta omnis dolores.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(369, 22, 30, 'Consequatur et autem quia ea.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(370, 28, 30, 'Quaerat quasi magni aut incidunt.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(371, 16, 17, 'Necessitatibus dolorum rerum nihil qui officiis deserunt.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(372, 3, 8, 'Quod totam blanditiis quae quo voluptatum cupiditate aperiam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(373, 21, 23, 'Et est aliquam nam sed nihil ratione illum.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(374, 15, 2, 'Est saepe sit impedit sint.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(375, 7, 13, 'Minus molestiae praesentium quasi.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(376, 15, 20, 'Odio corporis maiores tempora fuga consequuntur vero iusto.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(377, 23, 25, 'Quasi quo asperiores sint nihil voluptas quo ullam qui.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(378, 11, 20, 'Omnis odit id omnis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(379, 16, 9, 'Reiciendis omnis consequatur non in quae excepturi.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(380, 25, 3, 'Rerum eveniet repudiandae distinctio et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(381, 29, 26, 'Dolore quo qui sapiente excepturi necessitatibus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(382, 24, 23, 'Aut voluptate odio similique.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(383, 21, 19, 'Voluptatem est esse omnis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(384, 3, 5, 'Expedita possimus vel ad sit consequuntur et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(385, 9, 27, 'Blanditiis qui non nihil fugit.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(386, 28, 3, 'Voluptas eligendi aliquid ea tempore.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(387, 25, 7, 'Pariatur aut voluptatem non incidunt.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(388, 9, 14, 'Veritatis illo aut autem sequi laboriosam magni.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(389, 17, 1, 'Voluptas asperiores dolores aspernatur assumenda.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(390, 10, 13, 'Occaecati qui sapiente esse inventore accusantium ex blanditiis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(391, 14, 27, 'Dolor illum nesciunt provident quis eos et.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(392, 1, 5, 'Suscipit ea enim sequi.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(393, 4, 29, 'Dolores ut eius architecto in molestias odit.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(394, 2, 14, 'Blanditiis optio molestiae accusamus consequatur ut asperiores ut.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(395, 15, 27, 'Ratione sed quo laudantium.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(396, 1, 23, 'Quo minus odit sunt ducimus ut doloremque.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(397, 29, 15, 'Reiciendis mollitia debitis placeat corporis amet molestias.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(398, 27, 30, 'Quia fugit asperiores dolore molestias ducimus facilis voluptas est.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(399, 5, 6, 'Iusto sed ea quos non aspernatur maiores labore.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(400, 15, 22, 'Enim pariatur libero et.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(401, 6, 23, 'Quisquam ullam tenetur dignissimos enim optio.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(402, 1, 20, 'Voluptatem autem dicta est minus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(403, 10, 26, 'Vitae velit ut laudantium impedit autem.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(404, 14, 26, 'Et sed et et et beatae earum sequi.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(405, 25, 13, 'Dolorem voluptas ut vel maxime.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(406, 4, 2, 'Eum deleniti porro qui sint.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(407, 28, 16, 'Voluptates dolor cum commodi quasi reiciendis neque.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(408, 14, 4, 'Id id et fugit laboriosam quia repellendus ab.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(409, 1, 2, 'Impedit sed ut voluptates.', 1, '2020-04-13 04:11:39', '2020-04-13 08:05:59'),
(410, 11, 13, 'Dolor dolores similique itaque ab quidem deleniti voluptas.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(411, 20, 16, 'Dolores dolorem est temporibus dolorem ducimus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(412, 25, 3, 'Voluptas iusto voluptatem exercitationem maxime hic dolor saepe.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(413, 18, 19, 'Porro aliquam voluptas consequatur corporis.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(414, 14, 27, 'Temporibus quo voluptates impedit fuga.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(415, 8, 30, 'Odio reprehenderit temporibus dolor est.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(416, 21, 12, 'Necessitatibus ut optio et qui molestias adipisci quas cupiditate.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(417, 27, 29, 'Qui vero placeat omnis dolorem quaerat iure.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(418, 4, 21, 'Non optio sapiente laboriosam.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(419, 3, 19, 'Consequatur qui perspiciatis consectetur ut ea.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(420, 29, 28, 'Quisquam dolores quas quia sit.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(421, 8, 20, 'Voluptates et iste accusantium quasi.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(422, 4, 1, 'Praesentium voluptatem dicta corporis in amet.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(423, 26, 11, 'Neque facere ea sit pariatur iusto.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(424, 7, 9, 'Qui qui voluptate non.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(425, 5, 15, 'Mollitia sed dolorem minima accusamus tempora itaque temporibus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(426, 2, 24, 'Perferendis nihil facilis earum non sint maiores.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(427, 9, 30, 'Autem quae voluptatem facere neque libero.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(428, 20, 24, 'Rerum inventore architecto sint in non mollitia.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(429, 6, 3, 'Incidunt aspernatur dicta consectetur ducimus aliquam sed nobis unde.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(430, 7, 19, 'Vero amet excepturi accusantium.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(431, 25, 30, 'Ipsa adipisci porro ex facere quis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(432, 11, 2, 'Quas exercitationem quod blanditiis accusamus rerum at eveniet.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(433, 12, 21, 'Expedita facere molestiae atque nam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(434, 9, 16, 'Sunt sed et consequatur sit corrupti ipsum sed incidunt.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(435, 19, 4, 'Alias sapiente asperiores in at aut molestiae laborum.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(436, 8, 25, 'Nobis optio in aliquam vitae voluptatum iste reiciendis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(437, 17, 13, 'Ducimus perferendis blanditiis aut nisi dolorem.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(438, 8, 20, 'Suscipit ut repudiandae et recusandae officia.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(439, 30, 28, 'Sit vitae blanditiis incidunt perferendis accusantium consectetur sunt.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(440, 11, 17, 'Vel quos a ab omnis sunt quisquam.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(441, 15, 27, 'Sed dolorum hic sit atque doloremque provident.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(442, 2, 13, 'Ut quasi ipsum qui nemo.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(443, 14, 22, 'Aspernatur repellendus quam eveniet non voluptatem.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(444, 24, 3, 'Enim ut et eum.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(445, 4, 12, 'Ea animi aut voluptas aut et et sit.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(446, 14, 26, 'Odio qui aspernatur molestiae exercitationem modi porro qui.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(447, 3, 15, 'Nihil perferendis laboriosam molestiae sint libero.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(448, 17, 3, 'Ipsam ratione consequatur nostrum.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(449, 12, 16, 'Non beatae minus est fugit.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(450, 20, 7, 'Qui consequatur corporis ducimus dolor.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(451, 20, 10, 'Ea eveniet dolor et.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(452, 10, 13, 'Et enim aut dolorum incidunt ad assumenda culpa maiores.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(453, 16, 10, 'Ipsum quia ipsam deserunt qui.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(454, 27, 12, 'Suscipit distinctio nostrum quod unde et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(455, 12, 22, 'Sit quibusdam non tenetur velit tenetur eius.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(456, 9, 11, 'Rerum error aut vel voluptate ex.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(457, 12, 10, 'Ratione odit eligendi fuga expedita optio et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(458, 13, 4, 'At beatae quisquam at ratione aut iure ut.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(459, 9, 10, 'Quibusdam recusandae architecto earum aut perspiciatis ipsum reprehenderit.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(460, 17, 12, 'Iure doloremque consectetur quas consequatur facilis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39');
INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(461, 15, 25, 'Alias ea quibusdam minus molestiae aspernatur dicta.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(462, 23, 9, 'Adipisci quasi aut et optio.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(463, 15, 18, 'Aut et veritatis consectetur placeat.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(464, 15, 14, 'Molestias sapiente consectetur soluta voluptas sint aperiam unde.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(465, 17, 4, 'Quo ex iste rerum ex et repudiandae nisi.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(466, 25, 8, 'Et corporis aperiam laboriosam explicabo.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(467, 25, 2, 'Ut optio molestiae accusamus et debitis iure est.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(468, 1, 26, 'Accusamus animi earum veniam assumenda iste.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(469, 25, 9, 'Maxime expedita dolorem consequatur consectetur sint omnis expedita nisi.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(470, 19, 12, 'Enim distinctio occaecati non et possimus.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(471, 12, 13, 'Eum omnis ipsam recusandae nihil esse voluptatem quo.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(472, 10, 12, 'Repudiandae blanditiis vel necessitatibus consequatur impedit.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(473, 10, 27, 'Enim molestiae dolor laboriosam et.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(474, 7, 28, 'Illum vel debitis quibusdam veniam animi et.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(475, 19, 9, 'Aut autem accusantium molestias aliquid et incidunt.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(476, 10, 1, 'Dicta quas eos magnam laudantium eius assumenda.', 1, '2020-04-13 04:11:39', '2020-04-13 04:19:07'),
(477, 24, 7, 'Qui animi qui nesciunt similique optio quam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(478, 2, 20, 'Voluptatum soluta ut perspiciatis omnis rerum sit enim ab.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(479, 28, 17, 'Accusantium sequi facere fugiat occaecati et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(480, 19, 6, 'Velit omnis quia distinctio accusantium pariatur qui quaerat.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(481, 20, 28, 'Deleniti autem ea rerum sunt illo dolorum qui labore.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(482, 14, 7, 'Natus recusandae minima ut sit nihil delectus similique.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(483, 30, 22, 'Est iusto totam delectus fugiat voluptatem numquam quo.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(484, 3, 11, 'Aperiam ea nulla similique dicta fuga.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(485, 3, 23, 'Amet voluptatum quos voluptas exercitationem rerum.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(486, 23, 25, 'Ad magni culpa libero.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(487, 28, 21, 'Ut vero culpa iste aliquid autem distinctio aut.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(488, 20, 4, 'Asperiores veniam architecto asperiores consequatur.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(489, 27, 2, 'Qui corporis excepturi sunt optio.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(490, 6, 11, 'Libero dolores recusandae mollitia optio est dolorum distinctio.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(491, 10, 26, 'Tempora aut est aperiam reiciendis.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(492, 16, 9, 'Architecto omnis velit dolor facilis culpa ut cumque.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(493, 6, 8, 'Eum facere nulla odit recusandae.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(494, 10, 30, 'Atque ad iste dolor veritatis cumque quidem.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(495, 10, 16, 'Occaecati doloribus inventore dolores doloribus quia doloribus iste.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(496, 10, 23, 'Id similique alias vitae aut sed possimus optio aut.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(497, 25, 11, 'Fuga nesciunt minima facilis et placeat et.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(498, 4, 10, 'Quia labore debitis omnis et magnam commodi.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(499, 15, 27, 'Rem reprehenderit aliquam et quia.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(500, 21, 26, 'Laudantium nulla adipisci et aut maiores laudantium sit.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(501, 18, 12, 'Amet voluptates enim aut est.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(502, 9, 21, 'Impedit et libero ullam sequi explicabo distinctio.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(503, 15, 21, 'Modi eos alias atque.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(504, 21, 24, 'Sequi corporis expedita occaecati nihil ex.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(505, 10, 9, 'Et velit rem blanditiis unde fuga.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(506, 3, 24, 'Consequatur adipisci iure in qui eveniet neque sed numquam.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(507, 6, 2, 'Id facilis illo sit voluptate odio.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(508, 10, 21, 'Eligendi recusandae dolores eum repudiandae mollitia aliquid.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(509, 13, 11, 'Laudantium quae eos ipsam quos nihil ut.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(510, 28, 27, 'Maiores libero animi consectetur nihil magnam eius voluptatem.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(511, 20, 21, 'Tempore consequatur et rerum sit id tempora.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(512, 7, 17, 'Ut hic mollitia autem quae est quae maiores.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(513, 9, 26, 'Aperiam odit molestias impedit atque repellat sit.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(514, 10, 14, 'Soluta iusto optio facere cumque dolores.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(515, 8, 21, 'Laborum numquam occaecati sit corrupti soluta.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(516, 30, 9, 'Aut qui nihil sed quos ut eum tempora nulla.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(517, 2, 9, 'Quaerat est impedit sed qui magnam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(518, 14, 1, 'Illum non quibusdam doloribus aspernatur et quia cupiditate officia.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(519, 5, 9, 'Animi dicta molestiae repellendus omnis voluptatem tenetur dignissimos.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(520, 26, 28, 'Similique officia quia est sit accusamus minima.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(521, 4, 1, 'Repellat aliquid quam labore sapiente autem beatae.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(522, 11, 18, 'Impedit eum sed rem rerum quibusdam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(523, 10, 26, 'Ut aut quae eaque.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(524, 30, 3, 'Perspiciatis quam harum sed provident ab dolor voluptatem.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(525, 15, 23, 'Ullam consectetur architecto occaecati distinctio qui nisi occaecati et.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(526, 1, 6, 'Nam ut maiores pariatur et aliquam totam.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(527, 16, 18, 'Eaque ducimus repudiandae facere.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(528, 7, 2, 'Modi fuga qui voluptas odit.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(529, 16, 28, 'Unde velit nemo consequatur non unde.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(530, 2, 5, 'Quod voluptatem velit odio perferendis.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(531, 4, 22, 'Vel hic non ullam.', 1, '2020-04-13 04:11:39', '2020-05-03 07:04:38'),
(532, 12, 2, 'Qui non id aut laborum molestiae quo autem.', 1, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(533, 24, 11, 'Ea nihil laboriosam voluptatem qui.', 0, '2020-04-13 04:11:39', '2020-04-13 04:11:39'),
(534, 10, 22, 'Voluptate fugit soluta ipsum.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(535, 10, 30, 'Odio voluptas quae quisquam illum.', 0, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(536, 11, 28, 'Ad consequatur sit distinctio qui.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(537, 13, 27, 'Laboriosam consequatur voluptatem consequatur.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(538, 23, 21, 'Omnis atque repellat pariatur quia laborum voluptatibus nostrum sed.', 0, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(539, 10, 16, 'Nisi corrupti unde aut autem voluptas molestias molestiae quisquam.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(540, 8, 5, 'Id voluptatem dolorem alias aut ea.', 0, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(541, 29, 17, 'Et ut voluptatem ducimus quas laudantium exercitationem.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(542, 6, 29, 'Et ut nemo adipisci facilis.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(543, 5, 9, 'Maxime ut ea est nemo facilis dolorum.', 0, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(544, 16, 22, 'Voluptates est vel ullam quia et quam impedit.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(545, 1, 2, 'Eveniet illum amet impedit voluptate illo.', 1, '2020-04-13 04:11:40', '2020-04-13 08:05:59'),
(546, 20, 16, 'Quam id quis quam doloribus perferendis nobis voluptas.', 0, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(547, 28, 21, 'Esse sint vel animi corporis eos dolorum.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(548, 18, 21, 'Laboriosam voluptatum nesciunt laboriosam vero et.', 0, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(549, 22, 20, 'Commodi iure vero voluptatem totam quae.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(550, 25, 1, 'Pariatur quam laborum id repudiandae ut nihil.', 1, '2020-04-13 04:11:40', '2020-04-13 04:11:40'),
(551, 1, 2, 'hello how are you', 1, '2020-04-13 05:40:27', '2020-04-13 08:05:59'),
(552, 2, 1, 'how', 1, '2020-04-13 05:54:31', '2020-04-13 08:09:17'),
(553, 1, 2, '123', 1, '2020-04-13 05:55:20', '2020-04-13 08:05:59'),
(554, 1, 2, 'what', 1, '2020-04-13 05:55:52', '2020-04-13 08:05:59'),
(555, 1, 2, 'rewrwe', 1, '2020-04-13 05:55:56', '2020-04-13 08:05:59'),
(556, 2, 1, 'dsadsa', 1, '2020-04-13 05:57:05', '2020-04-13 08:09:17'),
(557, 1, 2, 'hi', 1, '2020-04-13 05:59:22', '2020-04-13 08:05:59'),
(558, 1, 2, '2345235', 1, '2020-04-13 06:05:41', '2020-04-13 08:05:59'),
(559, 1, 2, 'dasd', 1, '2020-04-13 06:06:17', '2020-04-13 08:05:59'),
(560, 1, 2, '1', 1, '2020-04-13 06:10:46', '2020-04-13 08:05:59'),
(561, 1, 2, '2', 1, '2020-04-13 06:12:58', '2020-04-13 08:05:59'),
(562, 1, 2, 'dsad', 1, '2020-04-13 06:18:30', '2020-04-13 08:05:59'),
(563, 2, 1, '123', 1, '2020-04-13 06:18:38', '2020-04-13 08:09:17'),
(564, 2, 1, '5346', 1, '2020-04-13 06:18:47', '2020-04-13 08:09:17'),
(565, 2, 1, 'hi', 1, '2020-04-13 06:31:59', '2020-04-13 08:09:17'),
(566, 2, 1, 'fds', 1, '2020-04-13 06:33:34', '2020-04-13 08:09:17'),
(567, 1, 2, '212', 1, '2020-04-13 06:39:36', '2020-04-13 08:05:59'),
(568, 1, 2, '12', 1, '2020-04-13 06:41:32', '2020-04-13 08:05:59'),
(569, 1, 2, '45645', 1, '2020-04-13 06:46:22', '2020-04-13 08:05:59'),
(570, 1, 2, '43543', 1, '2020-04-13 06:46:30', '2020-04-13 08:05:59'),
(571, 1, 2, '124214', 1, '2020-04-13 06:47:04', '2020-04-13 08:05:59'),
(572, 1, 2, '4214', 1, '2020-04-13 06:47:21', '2020-04-13 08:05:59'),
(573, 1, 2, '13423', 1, '2020-04-13 06:49:27', '2020-04-13 08:05:59'),
(574, 1, 2, '312', 1, '2020-04-13 06:55:18', '2020-04-13 08:05:59'),
(575, 1, 2, '4234', 1, '2020-04-13 06:58:33', '2020-04-13 08:05:59'),
(576, 1, 2, '5325', 1, '2020-04-13 06:59:06', '2020-04-13 08:05:59'),
(577, 1, 2, '235', 1, '2020-04-13 07:04:00', '2020-04-13 08:05:59'),
(578, 1, 2, '432', 1, '2020-04-13 07:22:37', '2020-04-13 08:05:59'),
(579, 1, 2, '4214', 1, '2020-04-13 07:25:56', '2020-04-13 08:05:59'),
(580, 1, 2, '3213', 1, '2020-04-13 07:35:21', '2020-04-13 08:05:59'),
(581, 1, 2, '4234', 1, '2020-04-13 07:36:41', '2020-04-13 08:05:59'),
(582, 1, 2, '2453', 1, '2020-04-13 07:39:06', '2020-04-13 08:05:59'),
(583, 2, 1, '34', 1, '2020-04-13 07:39:52', '2020-04-13 08:09:17'),
(584, 1, 2, '354367', 1, '2020-04-13 07:44:15', '2020-04-13 08:05:59'),
(585, 1, 2, '6458568', 1, '2020-04-13 07:44:33', '2020-04-13 08:05:59'),
(586, 1, 2, 'fdgdfgdf', 1, '2020-04-13 07:44:42', '2020-04-13 08:05:59'),
(587, 2, 1, 'hello', 1, '2020-04-13 07:45:15', '2020-04-13 08:09:17'),
(588, 2, 1, 'sadsa', 1, '2020-04-13 07:45:29', '2020-04-13 08:09:17'),
(589, 2, 1, 'hello', 1, '2020-04-13 07:50:09', '2020-04-13 08:09:17'),
(590, 2, 1, '5346', 1, '2020-04-13 07:50:56', '2020-04-13 08:09:17'),
(591, 2, 1, '756765', 1, '2020-04-13 07:50:59', '2020-04-13 08:09:17'),
(592, 1, 2, 'yes', 1, '2020-04-13 07:51:46', '2020-04-13 08:05:59'),
(593, 1, 2, 'hello', 1, '2020-04-13 07:56:10', '2020-04-13 08:05:59'),
(594, 2, 1, 'hi', 1, '2020-04-13 07:56:32', '2020-04-13 08:09:17'),
(595, 2, 1, 'how are you', 1, '2020-04-13 07:56:41', '2020-04-13 08:09:17'),
(596, 2, 1, 'are', 1, '2020-04-13 07:58:14', '2020-04-13 08:09:17'),
(597, 1, 2, '222', 1, '2020-04-13 08:02:03', '2020-04-13 08:05:59'),
(598, 1, 2, '434534', 1, '2020-04-13 08:02:24', '2020-04-13 08:05:59'),
(599, 1, 2, '234234', 1, '2020-04-13 08:03:06', '2020-04-13 08:05:59'),
(600, 1, 2, '234567890', 1, '2020-04-13 08:05:05', '2020-04-13 08:05:59'),
(601, 1, 2, 'hello 2', 0, '2020-04-13 08:09:10', '2020-04-13 08:09:10'),
(602, 31, 32, 'Test', 1, '2020-04-17 19:57:34', '2020-04-17 19:59:55'),
(603, 31, 32, 'Hello', 1, '2020-04-17 19:57:57', '2020-04-17 19:59:55'),
(604, 31, 33, 'Hallo', 0, '2020-04-17 19:58:20', '2020-04-17 19:58:20'),
(605, 32, 31, 'Sup?', 1, '2020-04-17 19:59:15', '2020-04-17 20:08:49'),
(606, 32, 31, 'Im testing', 1, '2020-04-17 19:59:41', '2020-04-17 20:08:49'),
(607, 31, 32, 'Halo', 0, '2020-04-17 20:08:21', '2020-04-17 20:08:21'),
(608, 46, 4, 'hello', 0, '2020-05-02 21:15:07', '2020-05-02 21:15:07'),
(609, 47, 4, 'Hello everyone', 0, '2020-05-02 21:15:37', '2020-05-02 21:15:37'),
(610, 49, 4, 'Good afternoon teacher', 0, '2020-05-03 07:04:37', '2020-05-03 07:04:37');

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
(3, '2019_05_03_000001_create_customer_columns', 1),
(4, '2019_05_03_000002_create_subscriptions_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_03_03_134420_create_roles_table', 1),
(7, '2020_03_03_134718_create_role_user_table', 1),
(8, '2020_03_11_005659_create_plans_table', 1),
(9, '2020_03_11_010920_plan_user', 1),
(10, '2020_03_18_015902_create_bissues_table', 1),
(11, '2020_03_30_172254_books', 1),
(12, '2020_03_30_172435_categories', 1),
(13, '2020_04_26_141322_create_groups_table', 2),
(14, '2020_04_29_031134_class_table', 3);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-07 00:28:32', '2020-04-07 00:28:32'),
(2, 'staff', '2020-04-07 00:28:32', '2020-04-07 00:28:32'),
(3, 'student', NULL, NULL),
(4, 'teacher', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 1, 31, NULL, NULL),
(4, 2, 32, NULL, NULL),
(5, 2, 34, NULL, NULL),
(8, 4, 38, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 3, 4, NULL, NULL),
(11, 3, 5, NULL, NULL),
(12, 3, 6, NULL, NULL),
(13, 3, 7, NULL, NULL),
(14, 4, 8, NULL, NULL),
(15, 4, 9, NULL, NULL),
(16, 4, 10, NULL, NULL),
(17, 4, 11, NULL, NULL),
(18, 4, 12, NULL, NULL),
(19, 2, 39, NULL, NULL),
(20, 3, 40, NULL, NULL),
(23, 3, 43, NULL, NULL),
(24, 3, 44, NULL, NULL),
(25, 4, 45, NULL, NULL),
(26, 3, 46, NULL, NULL),
(27, 4, 47, NULL, NULL),
(28, 2, 48, NULL, NULL),
(29, 3, 49, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://via.placeholder.com/150',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'Hugh Gusikowski', 'https://via.placeholder.com/150', 'quigley.elsie@example.com', '2020-04-13 03:38:10', '$2y$10$LeZJQZkybwi8jG.KeIK0tuM9bg.9ukIx7Hu/N8z3JtSetYatJGzJW', 'VmLMH9Bw5mJXr9MPot7nExDOX6t80NTsnRy0KvOWKDeuVD8WmbXKdKoB8wKv', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(2, 'Palma Witting', 'https://via.placeholder.com/150', 'kdickens@example.com', '2020-04-13 03:38:10', '$2y$10$LeZJQZkybwi8jG.KeIK0tuM9bg.9ukIx7Hu/N8z3JtSetYatJGzJW', 'L4UpurSIQc', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(3, 'Ava Nitzsche', 'https://via.placeholder.com/150', 'cormier.amie@example.com', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bOhek8HqRf', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(4, 'Miss Francesca Kris III', 'https://via.placeholder.com/150', 'malika14@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I46Q8YoGnZ', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(5, 'Virginie Bradtke', 'https://via.placeholder.com/150', 'schuppe.earlene@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E1U43p24V5', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(6, 'Ms. Jaunita Hayes', 'https://via.placeholder.com/150', 'ustehr@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oi2twNMEWC', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(7, 'Robyn Quitzon DDS', 'https://via.placeholder.com/150', 'miller.eliza@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6NjJESL8Rf', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(8, 'Miss Kelly Reynolds', 'https://via.placeholder.com/150', 'mbailey@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wD2R6cLe6E', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(9, 'Cheyenne Kshlerin DVM', 'https://via.placeholder.com/150', 'mckenzie.gorczany@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JsGJ9AzkXI', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(10, 'Prof. Aleen Heaney PhD', 'https://via.placeholder.com/150', 'herzog.sarai@example.com', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CybGyTl2vw', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(11, 'Faye Batz', 'https://via.placeholder.com/150', 'alessandra.halvorson@example.com', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2lpI6uoCqu', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(12, 'Anastacio Bailey PhD', 'https://via.placeholder.com/150', 'eloise.little@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fmq3CDjT1b', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(13, 'Josue Roob', 'https://via.placeholder.com/150', 'emerson33@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QDjiVZkwud', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(14, 'Prof. Alysa Durgan', 'https://via.placeholder.com/150', 'hleffler@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wwao82XAAg', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(15, 'Odie Turcotte', 'https://via.placeholder.com/150', 'florence95@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3mIuj2lrRn', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(16, 'Aletha Mante', 'https://via.placeholder.com/150', 'millie45@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DUVwuKHcDm', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(17, 'Stanton Schuster', 'https://via.placeholder.com/150', 'batz.wendell@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v9rbgLXIRK', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(18, 'Randall Dibbert', 'https://via.placeholder.com/150', 'arianna56@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w6O5uz1SMM', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(19, 'Jordan Witting', 'https://via.placeholder.com/150', 'ramona88@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3meEiXgLKL', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(20, 'Keegan Gibson', 'https://via.placeholder.com/150', 'johan14@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jlK7HhaeYM', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(21, 'Prof. Deonte Ebert V', 'https://via.placeholder.com/150', 'eli12@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RJef1bZxs8', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(22, 'Dallas Walter', 'https://via.placeholder.com/150', 'rubye43@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UO26GTG23P', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(23, 'Regan Kilback', 'https://via.placeholder.com/150', 'baltenwerth@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '51Reaz1YTh', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(24, 'Dr. Gerda Swift', 'https://via.placeholder.com/150', 'hettinger.sandra@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Ivpp4xA7H', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(25, 'Demond Gleichner', 'https://via.placeholder.com/150', 'joelle.renner@example.com', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e25rJZ9PWH', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(26, 'Dr. Willy Monahan V', 'https://via.placeholder.com/150', 'kuphal.arielle@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2v5TQTxZkT', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(27, 'Dr. Maudie Heathcote II', 'https://via.placeholder.com/150', 'hilpert.emory@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '424itlj6z8', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(28, 'Dr. Olen Herman V', 'https://via.placeholder.com/150', 'zoila05@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lpVMl0fIkf', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(29, 'Mr. Sherwood Cole', 'https://via.placeholder.com/150', 'lula.nolan@example.org', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wB6y4thOht', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(30, 'Katarina Watsica', 'https://via.placeholder.com/150', 'vgottlieb@example.net', '2020-04-13 03:38:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EbMlkkwJxJ', '2020-04-13 03:38:10', '2020-04-13 03:38:10', NULL, NULL, NULL, NULL),
(31, 'admin', 'https://via.placeholder.com/150', 'admin@gmail.com', '2020-04-06 17:32:52', '$2y$10$LeZJQZkybwi8jG.KeIK0tuM9bg.9ukIx7Hu/N8z3JtSetYatJGzJW', 'qxbhBjashnRdkRdiTpdIte2aZCiLlw3g5PSalUBUkDbKFKmrput2CffatGpn', '2020-04-06 17:28:30', '2020-04-06 17:32:52', NULL, NULL, NULL, NULL),
(32, 'Test', 'https://via.placeholder.com/150', 'test@gmail.com', NULL, '$2y$10$dfqjQjfsnpPY3O3CGFwrKuTx4ijOMY7jXbnyB1ibbBOEtPqchCtt6', NULL, '2020-04-06 19:00:04', '2020-04-06 19:00:04', NULL, NULL, NULL, NULL),
(33, 'Duy', 'https://via.placeholder.com/150', 'duy@gmail.com', NULL, '$2y$10$SZL2oNi0r3ypi2M31NJ5Yu9oppXUj4OQnsoIKiD5396WGtbk0fBCC', NULL, '2020-04-14 03:21:32', '2020-04-14 03:21:32', NULL, NULL, NULL, NULL),
(34, 'Tom', 'https://via.placeholder.com/150', 'tom@gmail.com', NULL, '$2y$10$LMyZZ.ROKB/J/PAdHlXM/uMK/3f.VsHyrnwTfvx7dj1gZjJLQnPgO', NULL, '2020-04-20 05:28:57', '2020-04-20 05:28:57', NULL, NULL, NULL, NULL),
(35, 'Maes', 'https://via.placeholder.com/150', 'Maes@gmail.com', NULL, '$2y$10$VUbrnTLQEyiqLBVhDM/mJ.blr4tqB.5wkCo6G2wLFloQ.4W2IlcTa', NULL, '2020-04-20 05:34:11', '2020-04-20 05:34:11', NULL, NULL, NULL, NULL),
(38, 'Test', 'https://via.placeholder.com/150', 'lol@gmail.com', NULL, '$2y$10$kVXOYKGlXeOzBNG2PQ6axelPrZxiDWs9XO2JYiXH6fjWay8FBPDKq', NULL, '2020-04-20 12:07:11', '2020-04-20 12:07:11', NULL, NULL, NULL, NULL),
(39, 'Test3', 'https://via.placeholder.com/150', 'test03@gmail.com', NULL, '$2y$10$/H7JhpC.KJPALVvchkXvlOKhJSGNB.9.x9b4CczCTC/Rd8dn7SQGW', NULL, '2020-04-27 07:13:07', '2020-04-27 07:13:07', NULL, NULL, NULL, NULL),
(40, 'Test3', 'https://via.placeholder.com/150', 'test05@gmail.com', NULL, '$2y$10$TEmi1t.dWtiMfvIjG6rPWOZxMw.hgL0GGGTZxo9sRG0C.bEtBTx8i', NULL, '2020-04-28 20:04:36', '2020-04-28 20:04:36', NULL, NULL, NULL, NULL),
(43, 'Maes', 'https://via.placeholder.com/150', 'test99@gmail.com', NULL, '$2y$10$414gZTrsKDK6bfotdYT/fupm9dk2ZASazBvAap4RvzCMPQI1Tx4wq', NULL, '2020-05-01 08:12:18', '2020-05-01 08:12:18', NULL, NULL, NULL, NULL),
(44, 'Duy03', 'https://via.placeholder.com/150', 'duy03@gmail.com', NULL, '$2y$10$lTW2Y5QkEMz2jIRPHcvv3eEy8dLvQhekuOaCaF0mJJ6pjeqh7uUKu', NULL, '2020-05-02 04:29:03', '2020-05-02 04:29:03', NULL, NULL, NULL, NULL),
(45, 'Duy02', 'https://via.placeholder.com/150', 'duy02@gmail.com', NULL, '$2y$10$ETpI6sbN39voTcKSxwTy4OMa9m1k.A0D79RSqA5Pi03Ir9fd5/eL6', NULL, '2020-05-02 05:39:47', '2020-05-02 05:39:47', NULL, NULL, NULL, NULL),
(46, 'Will', 'https://via.placeholder.com/150', 'Will@gmail.com', NULL, '$2y$10$g8neQFVObgzfkwVuoYUNdehEvWLHQr9fDZR4RK3LJur9qSEZuORCi', NULL, '2020-05-02 21:11:17', '2020-05-02 21:11:17', NULL, NULL, NULL, NULL),
(47, 'Johnathan', 'https://via.placeholder.com/150', 'john@gmail.com', NULL, '$2y$10$pmof8js0FWUNDWDy8j8yMuFnMqO0mjstH3Oa328THXzo8.liGIlzK', NULL, '2020-05-02 21:12:53', '2020-05-02 21:12:53', NULL, NULL, NULL, NULL),
(48, 'Lily', 'https://via.placeholder.com/150', 'lily@gmail.com', NULL, '$2y$10$AlGAgAUl6PVMXOIGAmH1aO3viva1Ws5P7AYCPLjUcSeK5lt1sv8i6', NULL, '2020-05-02 21:49:04', '2020-05-02 21:49:04', NULL, NULL, NULL, NULL),
(49, 'Rose', 'https://via.placeholder.com/150', 'rose@gmail.com', NULL, '$2y$10$r4YIslazpbGACROWgu5S3eoogNMC5p7bQ6eHlBzxFuQZMt2Unp9LO', NULL, '2020-05-03 07:01:57', '2020-05-03 07:01:57', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
