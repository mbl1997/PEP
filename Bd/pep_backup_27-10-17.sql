-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql01-farm62.kinghost.net
-- Tempo de geração: 27/11/2017 às 06:20
-- Versão do servidor: 5.7.18-log
-- Versão do PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
 

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `pep`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@admin.com', '$2y$10$k6Ggdm9TNWWQHj/fdsHxde55EJOteVz3gd7H8yjeICqxn.eRXJ3au', 'hu30FVrJkhzbagKorQLlWVFFzzqJEMuKl1t5ajjdpqDN5G89S7SbxwMtJS2W', '2017-11-12 01:34:47', '2017-11-12 01:34:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicios`
--

CREATE TABLE IF NOT EXISTS `exercicios` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_muscular_id` int(10) DEFAULT NULL,
  `ordem` tinyint(3) unsigned DEFAULT NULL,
  `carga` double(8,2) DEFAULT NULL,
  `series` tinyint(3) unsigned DEFAULT NULL,
  `repeticoes` tinyint(3) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome`, `grupo_muscular_id`, `ordem`, `carga`, `series`, `repeticoes`, `created_at`, `updated_at`) VALUES
(1, 'Leg Pres', 0, 4, 40.00, 3, 10, '2017-10-22 09:29:37', '2017-10-22 09:29:37'),
(2, 'Extensão', 0, 5, 2.00, 3, 10, '2017-10-22 09:32:30', '2017-10-22 09:32:30'),
(3, 'Flexão', 0, 2, 7.00, 3, 10, '2017-10-22 09:34:34', '2017-10-22 09:34:34'),
(4, 'Adução', 0, 9, 6.00, 3, 10, '2017-10-22 09:35:10', '2017-10-22 09:35:10'),
(5, 'Abdução', 0, 8, 6.00, 3, 10, '2017-10-22 09:35:56', '2017-10-22 09:35:56'),
(14, 'Rosca Roldana', 0, 10, 10.00, 3, 10, '2017-10-22 13:00:42', '2017-10-22 13:00:42'),
(15, 'Rosca Tríceps', 0, 0, 0.00, 0, 0, '2017-10-22 13:01:10', '2017-10-22 13:01:10'),
(16, 'Testa', 0, 0, 0.00, 0, 0, '2017-10-22 13:01:32', '2017-10-22 13:01:32'),
(17, 'Rosca Direta', 0, 3, 8.00, 3, 10, '2017-10-22 13:02:28', '2017-10-22 13:02:28'),
(18, 'Rosca Alternada', 0, 0, 0.00, 0, 0, '2017-10-22 13:03:10', '2017-10-22 13:03:10'),
(19, 'Supino Reto', 0, 0, 0.00, 0, 0, '2017-10-22 13:03:24', '2017-10-22 13:03:24'),
(20, 'Supino Inclinado', 0, 0, 0.00, 0, 0, '2017-10-22 13:03:37', '2017-10-22 13:03:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_musculars`
--

CREATE TABLE IF NOT EXISTS `grupo_musculars` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `grupo_musculars`
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
-- Estrutura para tabela `instrutors`
--

CREATE TABLE IF NOT EXISTS `instrutors` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 4),
(9, '2014_10_12_100000_create_password_resets_table', 4),
(14, '2017_10_22_032003_create_exercicios_table', 5),
(15, '2017_10_22_161356_create_grupo_musculars_table', 5),
(20, '2017_10_30_134106_create_treinos_table', 7),
(21, '2017_11_11_213413_create_admins_table', 8),
(24, '2017_11_12_214336_create_Instrutores_tables', 9),
(26, '2017_11_23_012550_create_role_user_table', 10),
(27, '2017_11_23_012320_create_roles_table', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `roles`
--

INSERT INTO `roles` (`id`, `titulo`, `created_at`, `updated_at`) VALUES
(1, 'instrutor', NULL, NULL),
(2, 'aluno', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinos`
--

CREATE TABLE IF NOT EXISTS `treinos` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instrutor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `instrutor_id`, `created_at`, `updated_at`) VALUES
(1, 'Aline de Campos', 'alinedecampos@gmail.com', '$2y$10$xdydHSGvxLAYEdRQT6F2p.4GhMzKnYRk7YtIDk5hL.IQkIlx2S0aO', NULL, NULL, '2017-10-24 15:38:11', '2017-10-24 15:38:11'),
(4, 'neimar', 'neimarmg@hotmail.com', '$2y$10$8CqEjUy2bLS3ZzM0/eUhiuoht7BCQW8ZfxBxKHEiF7rMozhCpua8e', 'oAmfOQcUaWR0ieJgGiuIKIvVQlk3UdsiWGLHejx7Vc7wwtcoJB4FOz6iATIZ', NULL, '2017-11-06 11:17:57', '2017-11-06 11:17:57'),
(5, 'Rodrigo', 'roavellarm@gmail.com', '$2y$10$bbyXESC8SD5YnoujScmHCu/MPybaBQIBizl3KuYfg.SH3N0Y3HB0u', 'F4M6wiw7TD0zSBxjqvtJ7oWBRf8xhIXJ6D3czPQG3X7wJP9XNbsHmVqdvkUF', NULL, '2017-11-12 00:03:05', '2017-11-12 00:03:05'),
(12, 'asdasda', 'asdasda@asdasda.com', '$2y$10$i.1UKRJHRUsaXBIXN/wbIOJUGZIELzvrlBpVTYilT4XBGm7Inx/46', 'Mm1XjuDihIxOfMAC2KRhLMpL6NdMLPcSAEB3hD5bdYlz3O8pNizU85nw5LBD', NULL, '2017-11-13 09:25:58', '2017-11-13 09:25:58');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Índices de tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `instrutors`
--
ALTER TABLE `instrutors`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `instrutors_email_unique` (`email`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de tabela `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `instrutors`
--
ALTER TABLE `instrutors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
