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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
