-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 27-Nov-2017 às 09:57
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrutor_id` int(10) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `name`, `lastname`, `email`, `instrutor_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Avellar', 'roavellarm@gmail.com', 3, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', 'vwwiis9cbohLBhNX2loBleMWpQ0KiD9AzP2pXoGahj5pEQo3AgpPUUPTgjX0', '2017-11-26 04:40:17', '2017-11-27 08:23:10'),
(4, 'Gabriela', 'Da Silva', 'gabriela@gmail.com', NULL, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(5, 'Renato', 'Borges', 'renato@gmail.com', NULL, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(7, 'Letícia', 'Bertagna', 'leticia@gmail.com', NULL, '$2y$10$nv5iWNnmuJVrW/68P46gmubDP2/krJ42NXZQIUhrd6eWTVkZ9FlTS', NULL, '2017-11-27 02:57:34', '2017-11-27 02:57:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_muscular_id` int(10) DEFAULT NULL,
  `ordem` tinyint(3) UNSIGNED NOT NULL,
  `carga` double(8,2) NOT NULL,
  `series` tinyint(3) UNSIGNED NOT NULL,
  `repeticoes` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome`, `grupo_muscular_id`, `ordem`, `carga`, `series`, `repeticoes`, `created_at`, `updated_at`) VALUES
(1, 'Leg Pres', 2, 4, 40.00, 3, 10, '2017-10-22 09:29:37', '2017-10-22 09:29:37'),
(2, 'Extensão', 2, 5, 2.00, 3, 10, '2017-10-22 09:32:30', '2017-10-22 09:32:30'),
(3, 'Flexão', 2, 2, 7.00, 3, 10, '2017-10-22 09:34:34', '2017-10-22 09:34:34'),
(4, 'Adução', 2, 9, 6.00, 3, 10, '2017-10-22 09:35:10', '2017-10-22 09:35:10'),
(5, 'Abdução', 2, 8, 6.00, 3, 10, '2017-10-22 09:35:56', '2017-10-22 09:35:56'),
(14, 'Rosca Roldana', 1, 10, 10.00, 3, 10, '2017-10-22 13:00:42', '2017-10-22 13:00:42'),
(15, 'Rosca Tríceps', 1, 0, 0.00, 0, 0, '2017-10-22 13:01:10', '2017-10-22 13:01:10'),
(16, 'Testa', 1, 0, 0.00, 0, 0, '2017-10-22 13:01:32', '2017-10-22 13:01:32'),
(17, 'Rosca Direta', 3, 3, 8.00, 3, 10, '2017-10-22 13:02:28', '2017-10-22 13:02:28'),
(18, 'Rosca Alternada', 3, 0, 0.00, 0, 0, '2017-10-22 13:03:10', '2017-10-22 13:03:10'),
(19, 'Supino Reto', 4, 0, 0.00, 0, 0, '2017-10-22 13:03:24', '2017-10-22 13:03:24'),
(20, 'Supino Inclinado', 4, 0, 0.00, 0, 0, '2017-10-22 13:03:37', '2017-10-22 13:03:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio_treino`
--

CREATE TABLE `exercicio_treino` (
  `id` int(10) UNSIGNED NOT NULL,
  `exercicio_id` int(11) NOT NULL,
  `treino_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `exercicio_treino`
--

INSERT INTO `exercicio_treino` (`id`, `exercicio_id`, `treino_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 14, 2, NULL, NULL),
(7, 15, 2, NULL, NULL),
(8, 16, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo_musculars`
--

CREATE TABLE `grupo_musculars` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `grupo_musculars`
--

INSERT INTO `grupo_musculars` (`id`, `nome`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Tríceps', 'A', '2017-10-22 18:53:18', '2017-10-23 01:28:05'),
(2, 'Membros Inferiores', 'A', '2017-10-22 19:02:35', '2017-10-22 19:02:35'),
(3, 'Bíceps', 'A', '2017-10-22 19:39:00', '2017-10-22 19:39:00'),
(4, 'Peitoral', 'B', '2017-10-22 20:08:48', '2017-10-22 20:08:48'),
(5, 'Dorsais', 'B', '2017-10-22 20:09:04', '2017-10-22 20:09:04'),
(6, 'Deltóides', 'B', '2017-10-22 20:09:34', '2017-10-22 20:09:34'),
(7, 'Trapézio', 'B', '2017-10-22 20:09:52', '2017-10-22 20:09:52'),
(8, 'Abdominais', 'C', '2017-10-22 20:10:29', '2017-10-22 20:10:29'),
(9, 'Lombar', 'C', '2017-10-22 20:10:47', '2017-10-22 20:10:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrutors`
--

CREATE TABLE `instrutors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `instrutors`
--

INSERT INTO `instrutors` (`id`, `name`, `lastname`, `registro`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Avellar', '123123', 'roavellarm@gmail.com', '$2y$10$PsO5M32pjPc/d8Fdz.TFPOuxA6eaolpeUQaTDbQBjgQBccortxh0i', 'dRebef8w6foXAuBnEHYCo7aVClTRcHB4X5whePEQchcgZXZhbwSdWg2MUBkg', '2017-11-26 04:40:00', '2017-11-27 08:01:57'),
(2, 'Patricia', 'Machado', '123123', 'patricia@gmail.com', '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(3, 'Elenita', 'Santana', '321321', 'elenita@gmail.com', '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2017_11_25_210440_Tabela_alunos', 1),
(16, '2017_11_25_210502_Tabela_instrutors', 1),
(17, '2017_10_22_032003_create_exercicios_table', 2),
(18, '2017_10_22_161356_create_grupo_musculars_table', 2),
(19, '2017_10_30_134106_create_treinos_table', 2),
(20, '2017_11_27_065653_Pivot_exercicio_treino', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinos`
--

CREATE TABLE `treinos` (
  `id` int(10) UNSIGNED NOT NULL,
  `instrutor_id` int(10) DEFAULT NULL,
  `aluno_id` int(10) DEFAULT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `treinos`
--

INSERT INTO `treinos` (`id`, `instrutor_id`, `aluno_id`, `titulo`, `comentario`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Hypertrofia', NULL, NULL, NULL),
(2, 2, 1, 'Reforço Muscular', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$bQWKGZnU9CHlj8VcbEXjs.Pk3AYoXN3mIbZ9jSzhkHx65SEB9NbIm', 'TLYgiSy4AWlfnRJtjeXdMQa53lxXet07AC29lh58Pf6ZCmiAxLBtHe0i799L', '2017-11-26 04:39:38', '2017-11-26 04:39:38'),
(2, 'Rodrigo', 'roavellarm@gmail.com', '$2y$10$pKWIalw4eklll0FRadK2A.blHgZxyuqaF6fMYI3LtiUfBxLbCwMFq', '0VKmd6bMGg9jsEMrlkm3WmQDwLvDfoLmGLlwbYHSAvuwJwpPgooafAfgZcGM', '2017-11-26 04:42:43', '2017-11-26 04:43:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alunos_email_unique` (`email`);

--
-- Indexes for table `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercicio_treino`
--
ALTER TABLE `exercicio_treino`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrutors`
--
ALTER TABLE `instrutors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instrutors_email_unique` (`email`);

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
-- Indexes for table `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `exercicio_treino`
--
ALTER TABLE `exercicio_treino`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instrutors`
--
ALTER TABLE `instrutors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
