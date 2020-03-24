-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql01-farm62.kinghost.net
-- Tempo de geração: 04/12/2017 às 08:34
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
-- Estrutura para tabela `alunos`
--

CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrutor_id` int(10) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `alunos`
--

INSERT INTO `alunos` (`id`, `name`, `lastname`, `email`, `instrutor_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Avellar', 'roavellarm@gmail.com', 3, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', 'vwwiis9cbohLBhNX2loBleMWpQ0KiD9AzP2pXoGahj5pEQo3AgpPUUPTgjX0', '2017-11-26 04:40:17', '2017-11-27 08:23:10'),
(2, 'Gabriela', 'Da Silva', 'gabriela@gmail.com', 1, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(3, 'Renato', 'Borges', 'renato@gmail.com', 1, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(4, 'Maria', 'Borges', 'maria@gmail.com', 1, '$2y$10$nv5iWNnmuJVrW/68P46gmubDP2/krJ42NXZQIUhrd6eWTVkZ9FlTS', NULL, '2017-11-27 02:57:34', '2017-12-04 06:35:01'),
(5, 'Carolina', 'Avellar', 'carolina@gmail.com', 1, '$2y$10$DkKU7oPw7DNJWgLksr3CFuDi6kQw7UrH.4WYwj2fMPMagvK.ATKCS', NULL, '2017-12-02 19:49:52', '2017-12-04 06:34:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atividades`
--

CREATE TABLE IF NOT EXISTS `atividades` (
  `id` int(10) unsigned NOT NULL,
  `treino_id` int(11) DEFAULT NULL,
  `exercicio_id` int(10) DEFAULT NULL,
  `instrutor_id` int(10) NOT NULL,
  `aluno_id` int(10) DEFAULT NULL,
  `ordem` tinyint(3) unsigned DEFAULT NULL,
  `carga` double(8,2) DEFAULT NULL,
  `series` tinyint(3) unsigned DEFAULT NULL,
  `repeticoes` tinyint(3) unsigned DEFAULT NULL,
  `comentario` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `atividades`
--

INSERT INTO `atividades` (`id`, `treino_id`, `exercicio_id`, `instrutor_id`, `aluno_id`, `ordem`, `carga`, `series`, `repeticoes`, `comentario`, `created_at`, `updated_at`) VALUES
(25, 55, 5, 1, 5, 6, 6.00, 6, 6, '978ybouhl ohj.', '2017-12-04 08:06:49', '2017-12-04 08:06:49'),
(26, 55, 17, 1, 5, 3, 50.00, 13, 4, 'When defining a child view, use the Blade @extends directive to specify which layout the child view should "inherit". Views which extend a Blade layout may inject content into the layout''s sections using @section directives. Remember, as seen in the example above, the contents of these sections will be displayed in the layout using @yield:', '2017-12-04 09:04:44', '2017-12-04 09:04:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicios`
--

CREATE TABLE IF NOT EXISTS `exercicios` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_muscular_id` int(10) DEFAULT NULL,
  `imagem` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome`, `grupo_muscular_id`, `imagem`, `created_at`, `updated_at`) VALUES
(1, 'Leg Pres', 2, 'legpress.gif', '2017-10-22 09:29:37', '2017-12-04 12:37:42'),
(2, 'Extensão', 2, NULL, '2017-10-22 09:32:30', '2017-10-22 09:32:30'),
(3, 'Flexão', 2, NULL, '2017-10-22 09:34:34', '2017-10-22 09:34:34'),
(4, 'Adução', 2, NULL, '2017-10-22 09:35:10', '2017-10-22 09:35:10'),
(5, 'Abdução', 2, NULL, '2017-10-22 09:35:56', '2017-10-22 09:35:56'),
(14, 'Rosca Roldana', 1, NULL, '2017-10-22 13:00:42', '2017-10-22 13:00:42'),
(15, 'Rosca Tríceps', 1, NULL, '2017-10-22 13:01:10', '2017-10-22 13:01:10'),
(16, 'Testa', 1, NULL, '2017-10-22 13:01:32', '2017-10-22 13:01:32'),
(17, 'Rosca Direta', 3, NULL, '2017-10-22 13:02:28', '2017-10-22 13:02:28'),
(18, 'Rosca Alternada', 3, NULL, '2017-10-22 13:03:10', '2017-10-22 13:03:10'),
(19, 'Supino Reto', 4, NULL, '2017-10-22 13:03:24', '2017-10-22 13:03:24'),
(20, 'Supino Inclinado', 4, NULL, '2017-10-22 13:03:37', '2017-10-22 13:03:37'),
(35, 'teste', 5, NULL, '2017-12-04 10:54:37', '2017-12-04 10:54:37'),
(36, 'fdsfdsdsfds', 3, NULL, '2017-12-04 11:03:14', '2017-12-04 11:03:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicio_treino`
--

CREATE TABLE IF NOT EXISTS `exercicio_treino` (
  `id` int(10) unsigned NOT NULL,
  `exercicio_id` int(11) NOT NULL,
  `treino_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `exercicio_treino`
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
-- Estrutura para tabela `grupo_musculars`
--

CREATE TABLE IF NOT EXISTS `grupo_musculars` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, 'Lombar', 'C', '2017-10-22 20:10:47', '2017-10-22 20:10:47'),
(24, 'lkjflkxj clvkxjclkv', 'lxk vlk.xcl kvcxjvlx', '2017-12-04 09:40:55', '2017-12-04 09:40:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrutors`
--

CREATE TABLE IF NOT EXISTS `instrutors` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `instrutors`
--

INSERT INTO `instrutors` (`id`, `name`, `lastname`, `registro`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Avellar', '123123', 'roavellarm@gmail.com', '$2y$10$PsO5M32pjPc/d8Fdz.TFPOuxA6eaolpeUQaTDbQBjgQBccortxh0i', 'dRebef8w6foXAuBnEHYCo7aVClTRcHB4X5whePEQchcgZXZhbwSdWg2MUBkg', '2017-11-26 04:40:00', '2017-11-27 08:01:57'),
(2, 'Robert', 'Viana', '123123', 'robert@gmail.com', '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(3, 'Elenita', 'Santana', '321321', 'elenita@gmail.com', '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2017_11_25_210440_Tabela_alunos', 1),
(16, '2017_11_25_210502_Tabela_instrutors', 1),
(17, '2017_10_22_032003_create_exercicios_table', 2),
(18, '2017_10_22_161356_create_grupo_musculars_table', 2),
(19, '2017_10_30_134106_create_treinos_table', 2),
(20, '2017_11_27_065653_Pivot_exercicio_treino', 3),
(21, '2017_12_01_223314_Tabela_atividades', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinos`
--

CREATE TABLE IF NOT EXISTS `treinos` (
  `id` int(10) unsigned NOT NULL,
  `instrutor_id` int(10) NOT NULL,
  `aluno_id` int(10) NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `treinos`
--

INSERT INTO `treinos` (`id`, `instrutor_id`, `aluno_id`, `titulo`, `comentario`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Reforço Muscular', 'Aluno ok', NULL, NULL),
(3, 2, 2, 'asd', 'asdasdasda', '2017-11-28 21:57:16', '2017-11-28 21:57:16'),
(5, 2, 4, 'Emagrecimento', 'O aluno foi muito bem', '2017-11-28 21:58:09', '2017-11-28 21:58:09'),
(55, 1, 5, 'Emagrecimento', 'Comentario para carol', '2017-12-04 08:06:34', '2017-12-04 08:17:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$bQWKGZnU9CHlj8VcbEXjs.Pk3AYoXN3mIbZ9jSzhkHx65SEB9NbIm', 'CX3G6THmUKw6JzImdOLKQvM6Kr9FKNd45d9QNcQZKxX8v7KWxBZ43HEgmTmJ', '2017-11-26 04:39:38', '2017-11-26 04:39:38'),
(2, 'Rodrigo', 'roavellarm@gmail.com', '$2y$10$pKWIalw4eklll0FRadK2A.blHgZxyuqaF6fMYI3LtiUfBxLbCwMFq', '38Nr0SCz4Za5DmKkFAFS3asMYkirKpFVfkvwu2yCEBRxZ5pCsaKE064DIRKe', '2017-11-26 04:42:43', '2017-11-26 04:43:17'),
(3, 'Neimar', 'neimarmg@hotmail.com', '$2y$10$1xe2DZ3RIzlRrbA91vlQCeaVY8PiSZp/Tti7YCoag5iReEhtezlQe', 'HA4p02dmlLn5CYgy9wejLBl6sbPYqaKcZcOqShMtdmLQBtMtPU3eEGQ8mQgj', '2017-11-27 12:07:30', '2017-11-27 12:07:30');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alunos_email_unique` (`email`);

--
-- Índices de tabela `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `exercicio_treino`
--
ALTER TABLE `exercicio_treino`
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
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de tabela `exercicio_treino`
--
ALTER TABLE `exercicio_treino`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de tabela `instrutors`
--
ALTER TABLE `instrutors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
