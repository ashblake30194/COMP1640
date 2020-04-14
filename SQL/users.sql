-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 12:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

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
(31, 'admin', 'https://via.placeholder.com/150', 'admin@gmail.com', '2020-04-06 17:32:52', '$2y$10$LeZJQZkybwi8jG.KeIK0tuM9bg.9ukIx7Hu/N8z3JtSetYatJGzJW', '4G0pQbjYAgZLaatHIYZDsyc56niShPley6MqbpVzUiNEzfwLU2Tyrd43kgzQ', '2020-04-06 17:28:30', '2020-04-06 17:32:52', NULL, NULL, NULL, NULL),
(32, 'Test', 'https://via.placeholder.com/150', 'test@gmail.com', NULL, '$2y$10$dfqjQjfsnpPY3O3CGFwrKuTx4ijOMY7jXbnyB1ibbBOEtPqchCtt6', NULL, '2020-04-06 19:00:04', '2020-04-06 19:00:04', NULL, NULL, NULL, NULL),
(33, 'Duy', 'https://via.placeholder.com/150', 'duy@gmail.com', NULL, '$2y$10$SZL2oNi0r3ypi2M31NJ5Yu9oppXUj4OQnsoIKiD5396WGtbk0fBCC', NULL, '2020-04-14 03:21:32', '2020-04-14 03:21:32', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
