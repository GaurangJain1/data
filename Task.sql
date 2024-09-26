-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2024 at 12:02 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Task`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sender` bigint UNSIGNED NOT NULL,
  `Receiver` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comments`, `Sender`, `Receiver`, `task_id`, `created_at`, `updated_at`) VALUES
(1, 'Good Morning Sir?!!!', 4, 7, 1, '2024-09-18 10:14:13', '2024-09-18 10:17:53'),
(2, 'Very Good Morning What is status', 7, 4, 1, '2024-09-18 07:52:54', '2024-09-18 10:18:43'),
(3, 'cssssbrg', 7, 6, 2, '2024-09-18 10:16:43', '2024-09-18 10:16:43'),
(4, 'All done!!', 4, 7, 1, '2024-09-18 08:53:12', '2024-09-18 10:19:31');

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
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `emp_id` bigint UNSIGNED NOT NULL,
  `task_idd` bigint UNSIGNED NOT NULL,
  `Comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_03_063703_create_tasks_table', 1),
(5, '2024_09_03_084158_update_history', 2),
(6, '2024_09_03_103338_create_progress_table', 2),
(7, '2024_09_05_043457_history_update', 2),
(8, '2024_09_09_124716_create_roles_table', 2),
(9, '2024_09_10_061638_create_roles_table', 3),
(10, '2024_09_10_112315_create_phns_table', 4),
(11, '2024_09_23_081345_create_usertasks_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phns`
--

CREATE TABLE `phns` (
  `id` bigint UNSIGNED NOT NULL,
  `phone_number` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phns`
--

INSERT INTO `phns` (`id`, `phone_number`, `user_id`) VALUES
(1, 1234567890, 6),
(2, 987654321, 7);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `percentage_done` float NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `today` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`percentage_done`, `task_id`, `today`) VALUES
(20.3, 1, '2024-09-01'),
(100, 2, '2024-09-02'),
(40.3, 4, '2024-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `Role` enum('Assioner','Assignee') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `Role`, `user_id`) VALUES
(1, 'Assioner', 4),
(2, 'Assignee', 7),
(3, 'Assignee', 4),
(4, 'Assioner', 25),
(5, 'Assioner', 35),
(6, 'Assignee', 35);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('wr2YcHta5uVvv4odeLuHyqbhvDJ85xNhzpfFnQxg', 4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkhqYVZUVExIUHpUbFFraFB0bEJEUnZPUW12TTNNQzVVOG1wd1U2TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjAxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvd2VsY29tZT9Sb2xlPTEtZGV2Jl90b2tlbj02SGphVlRUTEhQelRsUWtoUHRsQkRSdk9RbXZNM01DNVU4bXB3VTZOJmRlc2M9ZDEzdXZqeWgmZW5kZGF0ZT0yMDI0LTA5LTIzJTIwMDglM0ExMiUzQTU2JmZpbGVfdXBsb2FkPSZwcmlvcml0eT1IaWdoJnRhc2tuYW1lPXQxMyZ0YXNrc3RhdHVzPUluJTIwUHJvZ3Jlc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1727347446);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` bigint UNSIGNED NOT NULL,
  `task_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` enum('Medium','High','Low') COLLATE utf8mb4_unicode_ci NOT NULL,
  `attached_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deadline` date DEFAULT NULL,
  `current_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`, `task_description`, `priority`, `attached_file`, `deadline`, `current_status`, `created_at`, `updated_at`) VALUES
(1, 'task1', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\n', 'Medium', 'xxcc', '2024-09-11', 'Not Assigned', '0000-00-00 00:00:00', '2024-09-24 12:27:21'),
(2, 't2', 'd2', 'High', 'sssss', '2024-09-11', 'On Hold', '0000-00-00 00:00:00', '2024-09-24 12:27:33'),
(3, 'task3', 'd3', 'Low', 'aaa', '2024-09-11', 'In Progress', '0000-00-00 00:00:00', '2024-09-24 05:37:22'),
(4, 't4', 'd4', 'Low', '444', '2024-09-12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'task5', 'd5', 'High', 'dd5', '2024-09-11', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 't6', 'd6', 'High', '', '2024-09-11', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 't7', 'd7', 'Low', '', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 't8', 'd8', 'Medium', NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 't9', 'd9', 'Medium', NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 't10', 'd10', 'Low', NULL, '2024-09-11', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 't11', 'd11', 'Medium', NULL, '2024-09-12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 't12', 'd12', 'High', NULL, '2024-09-11', NULL, '2024-09-22 23:38:20', '2024-09-22 23:38:20'),
(13, 't13', 'd13', 'High', NULL, '2024-09-16', 'In Progress', '2024-09-23 02:42:56', '2024-09-25 11:21:34'),
(14, 't14', 'd14', 'Medium', NULL, '2024-09-09', NULL, '2024-09-23 03:08:15', '2024-09-23 03:08:15'),
(15, 't15', 'd15', 'Medium', NULL, '2024-09-09', NULL, '2024-09-23 03:09:13', '2024-09-23 03:09:13'),
(16, 't16', 'd16', 'Low', NULL, '2024-09-09', NULL, '2024-09-23 03:13:14', '2024-09-23 03:13:14'),
(17, 't17', 'd17', 'Low', NULL, '2024-09-09', NULL, '2024-09-25 07:22:57', '2024-09-26 09:07:02'),
(18, 't17', 'd16', 'Low', NULL, '2024-09-09', NULL, '2024-09-23 03:17:26', '2024-09-23 03:17:26'),
(20, 'jhjjkh', 'gfghfghg', 'High', NULL, '2024-09-09', NULL, '2024-09-23 03:38:14', '2024-09-23 03:38:14'),
(22, 'jhjjkh', 'gfghfghg', 'High', NULL, '2024-09-09', 'started', '2024-09-23 03:43:28', '2024-09-24 05:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`) VALUES
(1, 'dev\r\n', 'dd@dd.com', NULL, '$2y$12$5.8b48VJmT1LGMQ7TUPjqOrgSq64A3tryI7sW4EPsb3op8QI1MGVW', NULL),
(2, 'user1', 'user1@u.com', NULL, '$2y$12$AGb5hmI.gFEUoxYMKeH.I.Dppmvnj0oTO0avzfB418MVzf6pXLe.C', NULL),
(3, 'ved', 'ddd@dd.com', NULL, '$2y$12$alCJpwA9SeCqzXjI3Kx7DuRkUFQ2TiDcj1iILBYJU2BWjCqDaAFHm', NULL),
(4, 'g', 'g@g.com', NULL, '$2y$12$NlExZ5QhQfDHb7q0N.HLf.y03urifvLQgimsB2R2JFVTUsp428JxS', NULL),
(5, 'gems', 'gems@g.com', NULL, '$2y$12$u/m6f1.gKBioK6rAZmDTiudAKXLTDvXRhhogCi3JdibYkc3VCLLle', NULL),
(6, 'a', 'a@a.com', NULL, '$2y$12$2ZvyTRaHrFmmuUZzU7S.0u2G39HslXGQCEZe2H2IZaq7Q.8hHUbuG', NULL),
(7, 'britney', 'b@b.com', NULL, '$2y$12$RgtHhAK.chgPMDmmhyve..6Oi3GZ/Rz1/dpOWEoR23OVJKYD.cuX.', NULL),
(8, 'c', 'c@c.com', NULL, '$2y$12$k1IXhAaVIHWFQ0Qhw7vLZOLupzZ59yYTrzPc5.hK9qMrua.o/Ki82', NULL),
(9, 'test', 'teast@test.com', NULL, '$2y$12$D16n5sNvhYbdVevY4QDJb.iFLdFczWNoT/v/tkfnBXhJWe.33oLHO', NULL),
(12, 'test1', 'teast1@test.com', NULL, '$2y$12$Mazs12U4eTrF6gaSUE1CC.axviPHxYqEqc4PzywKIMXZ.5zB7OWI2', NULL),
(13, 'test12', 'teast12@test.com', NULL, '$2y$12$xB/Y1UqppkSvx02Bv1mPHuzfzTW3xbJXsoLDKvMUf22rzlTIrTVsq', NULL),
(14, 'test123', 'teast123@test.com', NULL, '$2y$12$l08ngKzYF4dBlItB4pikTuFLHa69SaM9roAtK.rYMpr7o76CxI0hq', NULL),
(15, 'test1234', 'teast1234@test.com', NULL, '$2y$12$8e98/TWmvkipIzs5DEMkWunGsxZeBYZ92T887e20gaI.Vzs7VSPVy', NULL),
(16, 'test12345', 'teast12345@test.com', NULL, '$2y$12$y10jdNKHlkSkOWhITfxCY.d2mU86TpEUhRz6salwpumrH.v4z9zqW', NULL),
(17, 'tes', 'tes@gmail.com', NULL, '$2y$12$jSHHxJGizP7yj7j3nkBxpOdTZYY3UL0yrMPgca911z8LkAY5Buyw2', NULL),
(18, 'tes1', 'tes1@gmail.com', NULL, '$2y$12$3zi5zmRYRP2EbbUVm0T9wuH9TII8xHo05G.VtCxBvfbpiwI8Caybe', NULL),
(20, 'tes12', 'tes12@gmail.com', NULL, '$2y$12$wnXitiOLsETq614Eyw6dvu858ugv8wZxyDLfLVn1nnvc73j8/NOEu', NULL),
(22, 'tes123', 'tes123@gmail.com', NULL, '$2y$12$Pvonw98nU1YYvk4Z70vBOudDctNkD4Dh6FQQrG/zlMye/7dRhHgae', NULL),
(24, 'tes1234', 'tes1234@gmail.com', NULL, '$2y$12$jTtuiFNxLMxbOZsORDu4veKWVg3o3nAnPubWNNcLh.tuzAPwd15ou', NULL),
(25, 'm', 'm@m.com', NULL, '$2y$12$x10kDrywcX9iQnhypNMGUeQsQideUIgKWTgDfclUZKFuPcCoOg2NW', NULL),
(26, 'z2', 'z2@z.com', NULL, '$2y$12$0A1sZ/DuTs82Qqx8d6q9eerLy.K1socIBYheAhZmZ3OL5v3i.YBjC', NULL),
(27, 'z', 'z@z.com', NULL, '$2y$12$aDEuNJrcHToHhFinemM5qewee/3xa2r3JDWzEfLS34Xe70u34wC72', NULL),
(30, 'a11', 'a11@a.com', NULL, '$2y$12$IsseG42CvhxtWIIdT7qGM.be.tqFMO42LUSP8ifmmwBLVtTQG4cee', NULL),
(31, 'a12', 'a12@a.com', NULL, '$2y$12$VnUtU9vAVLbtuAxtPlYtd.erMgri.b5rFNsObB3Awprm4WCbNfITK', NULL),
(32, 'a13', 'a13@a.com', NULL, '$2y$12$JBCRpxrPEN5nIbloN4IXl.k/vw.sjgq4t.1bTnrlMVKvDHfFRGvTK', NULL),
(33, 'a15', 'a15@a.com', NULL, '$2y$12$47QLm0Izb7bBlfm2JSCbK.GzY9Oqny2C16cpnw6dMksCnBq/qel0a', NULL),
(35, 'a16', 'a16@a.com', NULL, '$2y$12$1t/LTWl3nvGmSkXENcJP7.j0RcyCFUTxE87WT6BS2f7HVV1n4mQuC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertasks`
--

CREATE TABLE `usertasks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usertasks`
--

INSERT INTO `usertasks` (`id`, `user_id`, `task_id`) VALUES
(2, 2, 2),
(3, 3, 3),
(4, 1, 22),
(5, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN KEY` (`Receiver`),
  ADD KEY `fk` (`Sender`),
  ADD KEY `FKEY` (`task_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_emp_id_foreign` (`emp_id`),
  ADD KEY `histories_task_idd_foreign` (`task_idd`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `phns`
--
ALTER TABLE `phns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phns_phone_number_unique` (`phone_number`),
  ADD KEY `phns_user_id_foreign` (`user_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD KEY `progress_task_id_foreign` (`task_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usertasks`
--
ALTER TABLE `usertasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertasks_user_id_foreign` (`user_id`),
  ADD KEY `usertasks_task_id_foreign` (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phns`
--
ALTER TABLE `phns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `usertasks`
--
ALTER TABLE `usertasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Sender`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FKEY` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`Receiver`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `histories_task_idd_foreign` FOREIGN KEY (`task_idd`) REFERENCES `tasks` (`task_id`);

--
-- Constraints for table `phns`
--
ALTER TABLE `phns`
  ADD CONSTRAINT `phns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `usertasks`
--
ALTER TABLE `usertasks`
  ADD CONSTRAINT `usertasks_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`),
  ADD CONSTRAINT `usertasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
