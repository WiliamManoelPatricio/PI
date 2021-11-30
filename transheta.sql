-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Nov-2021 às 14:55
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `transheta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadodoproduto`
--

DROP TABLE IF EXISTS `dadodoproduto`;
CREATE TABLE IF NOT EXISTS `dadodoproduto` (
  `idDoProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomeDoProduto` varchar(60) DEFAULT NULL,
  `Fabricante` varchar(60) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `fabricacao` date DEFAULT NULL,
  `codigoDeBarra` int(14) DEFAULT NULL,
  `quantidade` int(20) DEFAULT NULL,
  `preco` decimal(20,0) DEFAULT NULL,
  `Cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idDoProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dadodoproduto`
--

INSERT INTO `dadodoproduto` (`idDoProduto`, `nomeDoProduto`, `Fabricante`, `validade`, `fabricacao`, `codigoDeBarra`, `quantidade`, `preco`, `Cliente`) VALUES
(1, 'Nutella 350g', 'Ferrero', '2021-09-10', '2021-11-25', 1232546985, 200, '0', NULL),
(2, 'Coca Cola 2L', 'Coca-Cola LLC', '2021-11-10', '2021-10-10', 2, 500, '6', NULL),
(3, 'Coca Cola 3L', 'Coca-Cola LLC', '2021-11-10', '2021-10-10', 2, 500, '8', 'Jose'),
(4, 'Chocolate Lactea 500g', 'Lactea', '2021-11-25', '2021-10-25', 4, 500, '5', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadoprivadosdoproduto`
--

DROP TABLE IF EXISTS `dadoprivadosdoproduto`;
CREATE TABLE IF NOT EXISTS `dadoprivadosdoproduto` (
  `dataDeEntrega` date DEFAULT NULL,
  `empresaResponsavel` varchar(45) DEFAULT NULL,
  `saidaParaOProduto` date DEFAULT NULL,
  `qntEstocada` varchar(45) DEFAULT NULL,
  `dadosProduto_idDoProduto` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(45) DEFAULT NULL,
  `preco` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`dadosProduto_idDoProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dadoprivadosdoproduto`
--

INSERT INTO `dadoprivadosdoproduto` (`dataDeEntrega`, `empresaResponsavel`, `saidaParaOProduto`, `qntEstocada`, `dadosProduto_idDoProduto`, `endereco`, `preco`) VALUES
('2021-10-06', 'Coca-Cola', '2021-10-06', '500', 1, 'Rua', '999'),
('2021-10-06', NULL, '2021-10-06', '400', 2, 'ALA', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosprivado`
--

DROP TABLE IF EXISTS `dadosprivado`;
CREATE TABLE IF NOT EXISTS `dadosprivado` (
  `salario` varchar(35) NOT NULL,
  `dataDeEntrada` varchar(45) NOT NULL,
  `bateuCartao` date DEFAULT NULL,
  PRIMARY KEY (`salario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dadosprivado`
--

INSERT INTO `dadosprivado` (`salario`, `dataDeEntrada`, `bateuCartao`) VALUES
('R$-01,00', '2021-10-07', '2021-10-07'),
('R$0,00', '2021-10-07', '2021-10-07'),
('R$1500,00', '2021-10-07', '2021-10-07'),
('R$5000,00', '2021-10-07', '2021-10-07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosusers`
--

DROP TABLE IF EXISTS `dadosusers`;
CREATE TABLE IF NOT EXISTS `dadosusers` (
  `idDoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `tipoDeUsuario` varchar(25) NOT NULL,
  `nomeDoUsuario` varchar(45) NOT NULL,
  PRIMARY KEY (`idDoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dadosusers`
--

INSERT INTO `dadosusers` (`idDoUsuario`, `tipoDeUsuario`, `nomeDoUsuario`) VALUES
(1, 'Operador', 'Wiliam'),
(2, 'Cliente', 'W'),
(3, 'Cliente', 'W'),
(4, 'Gerente', 'Jose'),
(5, 'Gerente', 'Jose');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
