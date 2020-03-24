-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql01-farm62.kinghost.net
-- Tempo de geração: 11/05/2018 às 06:46
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `alunos`
--

INSERT INTO `alunos` (`id`, `name`, `lastname`, `email`, `instrutor_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Avellar', 'roavellarm@gmail.com', 3, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, '2017-11-26 04:40:17', '2017-11-27 08:23:10'),
(2, 'Gabriela', 'Da Silva', 'gabriela@gmail.com', 1, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(3, 'Renato', 'Borges', 'renato@gmail.com', 1, '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(4, 'Maria', 'Beccon', 'maria@gmail.com', 2, '$2y$10$nv5iWNnmuJVrW/68P46gmubDP2/krJ42NXZQIUhrd6eWTVkZ9FlTS', NULL, '2017-11-27 02:57:34', '2017-12-04 06:35:01'),
(5, 'Carolina', 'Silveira', 'carolina@gmail.com', 1, '$2y$10$DkKU7oPw7DNJWgLksr3CFuDi6kQw7UrH.4WYwj2fMPMagvK.ATKCS', NULL, '2017-12-02 19:49:52', '2017-12-04 06:34:37'),
(6, 'Aurélio', 'Santana', 'aurelio.m.santana@hotmail.com', 2, '$2y$10$Djs4U1QIN7e9V4QZ5mCXTeuudAGsJsQUzK8XVyVyFbRIED4YMpBwS', 'R9oDqTPAXToQuJ1FiNObMnwrFhl47o4rg5qGtbSmK7m4ZoUqGPE3uIScHBdq', '2017-12-10 22:55:01', '2017-12-10 23:14:14'),
(7, 'Neimar', 'gobbi', 'neimarmg@hotmail.com2', 1, '$2y$10$TKjSvdZpen0emI9PB3ujeudfxR0.ANmHkWGbKYEGVCpce8U4RsBRO', NULL, '2017-12-11 05:04:30', '2017-12-11 05:05:02'),
(8, 'Aluna Aline', 'de Campos', 'acampos@senacrs.com.br', 1, '$2y$10$d7II7OLny85xyiSD.4cCse8lXdEg3MYTZ8joNt7D2wwScp4HlGM42', NULL, '2017-12-11 14:53:09', '2017-12-11 14:57:32'),
(9, 'Teste', 'teste sobrenome', 'teste@teste.com', 1, '$2y$10$WIcMAG/hAyohJE5Gw/AMeevgM1dGGh3dTftmkr.iuaAuK.Ceigt2a', NULL, '2017-12-14 05:05:42', '2017-12-14 05:06:22'),
(10, '\r\n25', '', '', NULL, '', NULL, NULL, NULL);

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
  `duracao` int(10) DEFAULT NULL,
  `comentario` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `atividades`
--

INSERT INTO `atividades` (`id`, `treino_id`, `exercicio_id`, `instrutor_id`, `aluno_id`, `ordem`, `carga`, `series`, `repeticoes`, `duracao`, `comentario`, `feedback`, `created_at`, `updated_at`) VALUES
(66, 77, 42, 1, 3, NULL, NULL, NULL, NULL, 20, '', NULL, '2017-12-10 16:00:55', '2017-12-10 16:00:55'),
(67, 77, 43, 1, 3, NULL, NULL, NULL, 20, NULL, NULL, NULL, '2017-12-10 16:10:33', '2017-12-10 16:10:33'),
(68, 77, 44, 1, 3, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2017-12-10 16:16:24', '2017-12-10 16:16:24'),
(69, 78, 1, 1, 5, 4, NULL, NULL, 4, NULL, NULL, 'Gostei da atividade', '2017-12-10 16:21:00', '2017-12-11 13:08:47'),
(70, 78, 19, 1, 5, NULL, NULL, NULL, NULL, NULL, 'Teste atividades', 'Cansei muito', '2017-12-10 16:29:04', '2017-12-11 13:09:04'),
(71, 79, 1, 1, 3, 4, NULL, NULL, 4, NULL, 'odkj flkosfj ;sdlkjf ;dskj fls', NULL, '2017-12-10 19:23:48', '2017-12-10 19:48:46'),
(72, 79, 19, 1, 3, NULL, NULL, NULL, NULL, NULL, 'Teste atividades', NULL, '2017-12-10 19:23:48', '2017-12-10 19:23:48'),
(75, 81, 41, 2, 6, NULL, NULL, NULL, NULL, 120, 'Para melhorar disposição física', NULL, '2017-12-10 23:18:44', '2017-12-10 23:18:44'),
(76, 81, 42, 2, 6, NULL, NULL, NULL, 4, 30, 'Segura fírme', NULL, '2017-12-10 23:19:14', '2017-12-10 23:19:14'),
(77, 81, 44, 2, 6, NULL, 12.00, NULL, 4, NULL, 'Cuidado pra não se machucar', 'Cansei muito, preciso de mais café', '2017-12-10 23:19:51', '2017-12-10 23:22:26'),
(78, 81, 43, 2, 6, NULL, 15.00, NULL, 4, NULL, 'Cuidado pra não capotar', 'Cansei', '2017-12-10 23:20:15', '2017-12-10 23:57:18'),
(79, 82, 41, 2, 4, NULL, NULL, NULL, NULL, NULL, 'Para melhorar disposição física', NULL, '2017-12-10 23:32:09', '2017-12-10 23:32:09'),
(80, 82, 42, 2, 4, NULL, NULL, NULL, 4, NULL, 'Segura fírme', NULL, '2017-12-10 23:32:09', '2017-12-10 23:32:09'),
(81, 82, 44, 2, 4, NULL, 12.00, NULL, 4, NULL, 'Cuidado pra não se machucar', NULL, '2017-12-10 23:32:09', '2017-12-10 23:32:09'),
(82, 82, 43, 2, 4, NULL, NULL, 15, 4, NULL, 'Cuidado pra não capotar', NULL, '2017-12-10 23:32:09', '2017-12-10 23:32:09'),
(83, 83, 2, 1, 7, 1, 80.00, 15, 4, NULL, 'Cuidado pra não se machucar...', NULL, '2017-12-11 13:05:42', '2017-12-11 13:05:42'),
(84, 83, 41, 1, 7, 4, 4.00, 4, 4, NULL, NULL, NULL, '2017-12-11 13:07:34', '2017-12-11 13:07:34'),
(85, 78, 44, 1, 5, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2017-12-11 13:09:50', '2017-12-11 13:09:50'),
(86, 84, 2, 1, 5, 1, 15.00, NULL, 4, NULL, 'Cuidado pra não se machucar...', 'Blablabla', '2017-12-11 13:11:05', '2017-12-23 03:24:34'),
(87, 84, 41, 1, 5, 4, 4.00, NULL, 4, NULL, NULL, 'oi!', '2017-12-11 13:11:05', '2017-12-11 15:03:06'),
(88, 85, 41, 5, 8, 1, 20.00, NULL, 20, 60, 'Vaiiiii', 'Quase morri!', '2017-12-11 14:54:54', '2017-12-11 14:56:00'),
(89, 86, 41, 1, 8, NULL, NULL, NULL, 200, 60, NULL, 'Quer me matar professor?! :(', '2017-12-11 14:58:55', '2017-12-11 14:59:15'),
(90, 86, 44, 1, 8, 3, 3.00, 3, 3, 3, 'kjsadhksajak', NULL, '2017-12-11 14:59:26', '2017-12-11 14:59:26'),
(91, 87, 2, 1, 8, 1, 80.00, 15, 4, NULL, 'Cuidado pra não se machucar...', NULL, '2017-12-11 14:59:57', '2017-12-11 14:59:57'),
(92, 87, 41, 1, 8, 4, 4.00, 4, 4, NULL, NULL, NULL, '2017-12-11 14:59:57', '2017-12-11 14:59:57'),
(93, 88, 41, 1, 5, NULL, NULL, NULL, 200, NULL, NULL, NULL, '2017-12-14 04:42:54', '2017-12-14 04:42:54'),
(94, 88, 44, 1, 5, 3, 3.00, 3, 3, NULL, 'kjsadhksajak', NULL, '2017-12-14 04:42:54', '2017-12-14 04:42:54'),
(95, 89, 41, 1, 9, NULL, NULL, NULL, 200, NULL, NULL, NULL, '2017-12-14 05:08:12', '2017-12-14 05:08:12'),
(96, 89, 44, 1, 9, 3, 3.00, 3, 3, NULL, 'kjsadhksajak', NULL, '2017-12-14 05:08:13', '2017-12-14 05:08:13'),
(97, 90, 41, 1, 9, NULL, NULL, NULL, 200, NULL, NULL, NULL, '2017-12-23 03:19:47', '2017-12-23 03:19:47'),
(98, 90, 44, 1, 9, 3, 3.00, 3, 3, NULL, 'kjsadhksajak', NULL, '2017-12-23 03:19:47', '2017-12-23 03:19:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicios`
--

CREATE TABLE IF NOT EXISTS `exercicios` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grupo_muscular_id` int(10) DEFAULT NULL,
  `imagem` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome`, `descricao`, `grupo_muscular_id`, `imagem`, `created_at`, `updated_at`) VALUES
(1, 'Leg Pres', 'Esticar as pernas...', 2, 'legpress.gif', '2017-10-22 09:29:37', '2017-12-10 19:07:52'),
(2, 'Extensão', '1 – Sente-se no aparelho e coloque os pés por baixo dos rolos.\r\n2 – Levante as pernas para cima, até que os joelhos estejam estendidos.\r\n3 – Abaixe as pernas de volta à posição inicial, com os joelhos dobrados em 90 graus.', 2, 'Extensao.gif', '2017-10-22 09:32:30', '2017-12-11 13:06:57'),
(3, 'Flexão', NULL, 2, 'Flexao.gif', '2017-10-22 09:34:34', '2017-12-08 06:29:04'),
(4, 'Adução', NULL, 2, 'Adução.gif', '2017-10-22 09:35:10', '2017-12-08 06:29:27'),
(5, 'Abdução', NULL, 2, 'Abdução.gif', '2017-10-22 09:35:56', '2017-12-08 06:38:31'),
(14, 'Cross Corda', NULL, 1, 'Triceps Cross corda.gif', '2017-10-22 13:00:42', '2017-12-08 06:54:14'),
(15, 'Francês', NULL, 1, 'triceps frances.gif', '2017-10-22 13:01:10', '2017-12-08 06:50:53'),
(16, 'Testa', NULL, 1, 'triceps testa.gif', '2017-10-22 13:01:32', '2017-12-08 06:48:50'),
(17, 'Rosca Direta', NULL, 3, 'Rosca direta.gif', '2017-10-22 13:02:28', '2017-12-08 06:43:50'),
(18, 'Rosca Alternada', NULL, 3, 'rosca alternada.gif', '2017-10-22 13:03:10', '2017-12-08 06:45:07'),
(19, 'Supino Reto', NULL, 4, 'Supino Reto.gif', '2017-10-22 13:03:24', '2017-12-08 06:45:55'),
(20, 'Supino Inclinado', NULL, 4, 'supino inclinado.gif', '2017-10-22 13:03:37', '2017-12-08 06:46:12'),
(35, 'Elevação Diagonal', NULL, 25, 'ombro.gif', '2017-12-04 10:54:37', '2017-12-08 06:57:04'),
(41, 'Polichinelo', NULL, 28, 'poli agacha.gif', '2017-12-10 15:13:55', '2017-12-10 15:54:47'),
(42, 'Prancha', 'Mantenha o seu corpo na posição horizontal, apoiando-se no antebraço e nos dedos dos pés. O corpo deve estar alinhado dos pés à cabeça.', 8, 'prancha-frontal.jpg', '2017-12-10 15:41:38', '2017-12-10 15:49:13'),
(43, 'Prancha lateral', 'Em posição lateral, coloque um antebraço no chão, alinhando-o com o seu ombro. Mantenha as pernas retas. Levante o corpo do chão, equilibrando-se no antebraço e nos pés, até que o corpo fique na diagonal.', 8, 'prancha latera.gif', '2017-12-10 15:51:08', '2017-12-10 15:51:08'),
(44, 'Levantamento do tronco', 'Deitando-se de costas, levante o tronco estendendo os braços para a frente. Contraia os músculos do abdome o mais que puder.', 8, 'abd levantamento.gif', '2017-12-10 15:52:44', '2017-12-10 15:52:44');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `grupo_musculars`
--

INSERT INTO `grupo_musculars` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Tríceps', '2017-10-22 18:53:18', '2017-10-23 01:28:05'),
(2, 'Membros Inferiores', '2017-10-22 19:02:35', '2017-10-22 19:02:35'),
(3, 'Bíceps', '2017-10-22 19:39:00', '2017-10-22 19:39:00'),
(4, 'Peitoral', '2017-10-22 20:08:48', '2017-10-22 20:08:48'),
(5, 'Dorsais', '2017-10-22 20:09:04', '2017-10-22 20:09:04'),
(6, 'Deltóides', '2017-10-22 20:09:34', '2017-10-22 20:09:34'),
(7, 'Trapézio', '2017-10-22 20:09:52', '2017-10-22 20:09:52'),
(8, 'Abdominais', '2017-10-22 20:10:29', '2017-10-22 20:10:29'),
(9, 'Lombar', '2017-10-22 20:10:47', '2017-10-22 20:10:47'),
(25, 'Ombros', '2017-12-08 06:56:18', '2017-12-08 06:56:18'),
(28, 'Outros', '2017-12-10 15:13:26', '2017-12-10 15:13:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `instrutors`
--

INSERT INTO `instrutors` (`id`, `name`, `lastname`, `registro`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Avellar', '123123', 'roavellarm@gmail.com', '$2y$10$PsO5M32pjPc/d8Fdz.TFPOuxA6eaolpeUQaTDbQBjgQBccortxh0i', 'dRebef8w6foXAuBnEHYCo7aVClTRcHB4X5whePEQchcgZXZhbwSdWg2MUBkg', '2017-11-26 04:40:00', '2017-11-27 08:01:57'),
(2, 'Robert', 'Viana', '123123', 'robert@gmail.com', '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(3, 'Elenita', 'Santana', '321321', 'elenita@gmail.com', '$2y$10$htjvAkz.FdfyXz8xexqs6eGBzshAm58DVUXGpVhhnsnZhZPmFaR3S', NULL, NULL, NULL),
(4, 'neimar', 'gobbi', 'gobbi', 'neimarmg@hotmail.com1', '$2y$10$Z7sqMpSLH.XSAc/weF/sVeP1UnOnjDy1coJ4sbRuOBE31QfDSXZD6', NULL, '2017-12-11 04:58:59', '2017-12-11 04:58:59'),
(5, 'Aline', 'de Campos', '7486', 'alinedecampos@gmail.com', '$2y$10$AIkB4PTV9Gm0Thgc.sVLoug6LI8QLbB.v7eC5MPJdHaDutym2JLqC', NULL, '2017-12-11 14:52:23', '2017-12-11 14:52:23');

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

--
-- Fazendo dump de dados para tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('roavellarm@gmail.com', '$2y$10$r0FmdA7JHSNuKK1ZJgcLVOmg44DEnu7/jMehqO7PoEY4ol3mAIPCu', '2017-12-10 23:10:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `treinos`
--

INSERT INTO `treinos` (`id`, `instrutor_id`, `aluno_id`, `titulo`, `comentario`, `created_at`, `updated_at`) VALUES
(77, 1, 3, 'Abdome Definido', 'Exercícios para ter um abdome bem definido.', '2017-12-10 15:59:16', '2017-12-10 16:09:37'),
(78, 1, 5, 'Hypertrofia', 'kjsdck djf jksdf kdsf sdhfk sdj flkajsd fkj flkkaj lkjf ldaskj flkajf lkdsajkf ldsjlfjsad', '2017-12-10 16:20:27', '2017-12-10 16:28:52'),
(79, 1, 3, 'Hypertrofia', NULL, '2017-12-10 19:23:48', '2017-12-10 19:23:48'),
(81, 2, 6, 'Abdominal tanquinho', 'Treinamento para ficar com tanquinho', '2017-12-10 23:18:25', '2017-12-10 23:18:25'),
(82, 2, 4, 'Abdominal tanquinho', NULL, '2017-12-10 23:32:09', '2017-12-10 23:32:09'),
(83, 1, 7, 'Hipertrofia', 'Vai lá Neimar!!!!', '2017-12-11 13:04:52', '2017-12-11 13:04:52'),
(84, 1, 5, 'Hipertrofia', NULL, '2017-12-11 13:11:05', '2017-12-11 13:11:05'),
(85, 5, 8, 'Polichinelo', '100 polichinelos até cair exausta no chão :D', '2017-12-11 14:54:15', '2017-12-11 14:54:15'),
(86, 1, 8, 'Pega Leve', NULL, '2017-12-11 14:58:12', '2017-12-11 14:58:12'),
(87, 1, 8, 'Hipertrofia', NULL, '2017-12-11 14:59:57', '2017-12-11 14:59:57'),
(88, 1, 5, 'Pega Leve', NULL, '2017-12-14 04:42:53', '2017-12-14 04:42:53'),
(89, 1, 9, 'Pega Leve', NULL, '2017-12-14 05:08:12', '2017-12-14 05:08:12'),
(90, 1, 9, 'Pega Leve', NULL, '2017-12-23 03:19:46', '2017-12-23 03:19:46');

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
(1, 'admin', 'admin@admin.com', '$2y$10$bQWKGZnU9CHlj8VcbEXjs.Pk3AYoXN3mIbZ9jSzhkHx65SEB9NbIm', '9Mk7nTEJREmbjHlTswEBgzTXvv2g1v9arWrLOndvXlDXMHp68E8oj9hqn49O', '2017-11-26 04:39:38', '2017-11-26 04:39:38'),
(2, 'Rodrigo', 'roavellarm@gmail.com', '$2y$10$pKWIalw4eklll0FRadK2A.blHgZxyuqaF6fMYI3LtiUfBxLbCwMFq', '38Nr0SCz4Za5DmKkFAFS3asMYkirKpFVfkvwu2yCEBRxZ5pCsaKE064DIRKe', '2017-11-26 04:42:43', '2017-11-26 04:43:17'),
(3, 'Neimar', 'neimarmg@hotmail.com', '$2y$10$1xe2DZ3RIzlRrbA91vlQCeaVY8PiSZp/Tti7YCoag5iReEhtezlQe', 'Ni0l0DCYLb30fpNqmUdBkIbHh7aSjbNlHcudIym2BgYjroLVUVqJ1a6lbTFa', '2017-11-27 12:07:30', '2017-11-27 12:07:30');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de tabela `exercicio_treino`
--
ALTER TABLE `exercicio_treino`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de tabela `instrutors`
--
ALTER TABLE `instrutors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
