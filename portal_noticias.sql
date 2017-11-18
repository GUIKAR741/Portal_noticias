-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 18-Nov-2017 às 13:58
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_noticias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `noticia` text,
  `data_noticia` date DEFAULT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(30) DEFAULT NULL,
  `resumo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `noticia`, `data_noticia`, `data_criacao`, `autor`, `resumo`) VALUES
(1, 'titulo da noticia', 'conteudo da noticia', '2017-11-17', '2017-11-15 23:06:48', 'qwe', 'aisfydfbhuihssvfil'),
(2, 'outra noticia', 'conteudo da outra noticia', '2017-11-17', '2017-11-15 23:21:39', 'wer', 'jkldfhvukjdufklisvujndfvli'),
(3, 'nova noticia', 'tdfyghjk', '2017-11-17', '2017-11-16 21:34:23', 'ert', 'oslgvlkdjsuvfklijndfv'),
(4, 'titulo', 'fghjkadhj', '2017-11-16', '2017-11-16 21:50:30', 'autor', 'resumo'),
(5, 'titulo', 'shjdkfbshk', '2015-09-14', '2017-11-16 22:16:37', 'autor', 'resumoqsdoauhsdou'),
(6, 'titulo', 'saikdflj', '2017-11-16', '2017-11-16 23:33:02', 'laksdjf', 'jladfasddfa'),
(7, 'nova noticiaa', 'osakldufnhsoflukgjolsifjglosdfçvsildvnfçpn', '2016-10-16', '2017-11-17 22:36:06', 'guilheme ', 'shkfgslfgasdjk,fhdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
