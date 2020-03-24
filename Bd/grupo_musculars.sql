-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql01-farm62.kinghost.net
-- Tempo de geração: 28/10/2017 às 16:11
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
-- Estrutura para tabela `grupo_musculars`
--

CREATE TABLE IF NOT EXISTS `grupo_musculars` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `grupo_musculars`
--
ALTER TABLE `grupo_musculars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
