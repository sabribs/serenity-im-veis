-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/06/2023 às 19:19
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alugueis`
--

CREATE TABLE `alugueis` (
  `id` int(11) NOT NULL,
  `imovel` int(11) NOT NULL,
  `corretor` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `data_pgto` date DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `inquilino` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `alugueis`
--

INSERT INTO `alugueis` (`id`, `imovel`, `corretor`, `valor`, `ativo`, `data`, `data_pgto`, `data_inicio`, `data_final`, `inquilino`) VALUES
(1, 137, '555.555.555-66', 750.00, 'Sim', '2020-07-09', '2020-08-12', '2020-07-14', '2021-07-21', '111.111.111-20'),
(2, 170, '555.555.555-66', 1000.00, 'Não', '2020-07-14', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `cidade`) VALUES
(1, 'Vila Barros', 1),
(2, 'Vila Oeste', 1),
(3, 'Jardim Lis', 1),
(4, 'Jardim Serra Verde', 1),
(5, 'Ipiranga', 1),
(6, 'Jaboticabal', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`) VALUES
(1, 'Guarulhos'),
(2, 'São Paulo'),
(3, 'Jaboticatubas'),
(4, 'Ubatuba');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compradores`
--

CREATE TABLE `compradores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(20) NOT NULL,
  `doc` varchar(25) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `corretor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `compradores`
--

INSERT INTO `compradores` (`id`, `nome`, `tipo_pessoa`, `doc`, `telefone`, `endereco`, `corretor`) VALUES
(1, 'Marcos Campos', 'Fisica', '111.111.111-11', '(11) 11111-111', 'Rua CC', '555.555.555-66'),
(2, 'Matheus Silva', 'Fisica', '111.111.111-20', '(11) 11111-111', 'Rua C', '555.555.555-66'),
(3, 'Carla Silva', 'Fisica', '111.111.111-19', '(11) 11111-111', 'Rua X', '555.555.555-66'),
(8, 'Empresa X', 'Juridica', '58.588.888/8888-88', '(88) 88888-8888', 'Rua 5', '555.555.555-66'),
(10, 'Fabio Freita', 'Fisica', '789.999.999-99', '(33) 33333-3333', 'Rua C', '999.996.666-66');

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretores`
--

CREATE TABLE `corretores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `descricao` varchar(90) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `corretores`
--

INSERT INTO `corretores` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`, `descricao`, `twitter`, `facebook`) VALUES
(1, 'Sabrina Martinez', '502.946.848-44', '(22) 22222-2222', 'sabrinamartinez@gmail.com', 'Rua Paulino Moino', '1593540722860agent-1.jpg', NULL, NULL, NULL),
(2, 'Paloma Campos', '555.555.555-15', '(22) 22222-2233', 'paloma@hotmail.com', 'Rua Almeida Campos 150', '1686502725936ta-4.jpg', NULL, NULL, NULL),
(5, 'Marta SIlva', '645.555.555-55', '(99) 88888-8855', 'marta@hotmail.com', 'Rua XX', '1593544631752profile-agent.jpg', NULL, NULL, NULL),
(6, 'Fernando Lima', '594.555.454-54', '(65) 55555-5555', 'fernando@hotmail.com', 'Rua A', '1593544655113agent-4.jpg', '', NULL, NULL),
(7, 'Carlos Souza', '665.555.555-55', '(55) 55555-5555', 'carlos@hotmail.com', 'Rua C', '1593544683057agent-6.jpg', '', NULL, NULL),
(13, 'Corretor Teste', '555.555.555-66', '(31) 97527-5084', 'corretor@hotmail.com', 'Rua Almeida Campos 150', '1593546386210agent-2.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagens`
--

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL,
  `id_imovel` int(11) NOT NULL,
  `imagem` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `imagens`
--

INSERT INTO `imagens` (`id`, `id_imovel`, `imagem`) VALUES
(16, 135, '159439662148109.jpg'),
(17, 135, '159439662534808.jpeg'),
(18, 135, '159439662850207.jpeg'),
(19, 135, '159439663227606.jpg'),
(20, 170, '159439664278301.jpg'),
(21, 170, '159439664609002.jpg'),
(22, 170, '159439664910503.jpg'),
(23, 170, '159439665258404.jpg'),
(24, 137, '159439677338704.jpg'),
(25, 137, '159439677754306.jpg'),
(26, 137, '159439678133807.jpeg'),
(27, 138, '159449639273502.jpg'),
(28, 138, '159449639669705.jpg'),
(29, 138, '159449640017706.jpg'),
(30, 138, '159449640402507.jpeg'),
(31, 136, '159449650147605.jpg'),
(32, 136, '159449650497504.jpg'),
(33, 136, '159449650842206.jpg'),
(34, 171, '159449659000707.jpeg'),
(35, 171, '159449659347908.jpeg'),
(36, 171, '159449659803501.jpg'),
(37, 169, '159449661724402.jpg'),
(38, 169, '159449662008903.jpg'),
(39, 169, '159449662437705.jpg'),
(40, 174, '159469310813405.jpg'),
(41, 174, '159469311412906.jpg'),
(42, 174, '159469311922608.jpeg'),
(43, 174, '159469415524302.jpg'),
(44, 174, '159469417979201.jpg'),
(45, 174, '159469421130509.jpg'),
(46, 175, '159469448383208.jpeg'),
(47, 175, '159469448637101.jpg'),
(48, 175, '159469448947909.jpg'),
(49, 176, '1594694659282sitios.jpg'),
(50, 176, '159469466730705.jpg'),
(51, 177, '159469479840302.jpg'),
(53, 177, '159469481090206.jpg'),
(54, 178, '159469492777505.jpg'),
(55, 178, '159469493110807.jpeg'),
(56, 179, '159469502576801.jpg'),
(57, 179, '159469502887707.jpeg'),
(58, 179, '159469503188703.jpg'),
(59, 179, '159469503476109.jpg'),
(60, 180, '1594765274507lote.png'),
(61, 180, '1594765311731lotes.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int(11) NOT NULL,
  `vendedor` varchar(25) NOT NULL,
  `corretor` varchar(25) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `tipo` int(11) NOT NULL,
  `cidade` int(11) NOT NULL,
  `bairro` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `ano` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `quartos` int(11) NOT NULL,
  `banheiros` int(11) NOT NULL,
  `suites` int(11) NOT NULL,
  `garagens` int(11) NOT NULL,
  `piscinas` int(11) NOT NULL,
  `img_principal` varchar(100) NOT NULL,
  `img_planta` varchar(100) NOT NULL,
  `img_banner` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL,
  `condicao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `vendedor`, `corretor`, `titulo`, `descricao`, `tipo`, `cidade`, `bairro`, `valor`, `ano`, `visitas`, `area`, `quartos`, `banheiros`, `suites`, `garagens`, `piscinas`, `img_principal`, `img_planta`, `img_banner`, `endereco`, `status`, `condicao`) VALUES
(1, '99.999.999/9999-99', '555.555.555-66', 'Apartamento 3 Quartos', 'Apartamento com ....', 4, 1, 3, 180000.00, 1990, 0, 75, 3, 2, 1, 6, 0, '159439855577102apto.jpg', '159439659711600000000 floor-plan.jpg', '1594151051512hero-1.jpg', 'Rua Almeida Campos 150', 'Vendido', 'Usado'),
(2, '111.111.111-11', '555.555.555-66', 'Casa Grande', '', 3, 3, 6, 680000.00, 2010, 0, 850, 4, 4, 2, 6, 1, '1594496535404sitios.jpg', '159449651829000000000-floor-plan.jpg', '1594151110324hero-2.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Usado'),
(3, '111.111.111-11', '555.555.555-66', 'Apartamento Barato', '', 4, 1, 1, 750.00, 2015, 0, 65, 2, 1, 0, 1, 0, '159449690311603aptoal.jpg', '159439675615400000000 floor-plan.jpg', '159449790483502apto.jpg', '', 'Para Aluguel', 'Novo'),
(4, '99.999.999/9999-99', '555.555.555-66', 'Casa Germinada', '', 6, 1, 4, 550.00, 1990, 0, 69, 3, 1, 1, 1, 1, '1594496362611casa.jpg', '159449637504700000000-floor-plan.jpg', '1594395837724chacara.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Planta'),
(5, '99.999.999/9999-99', '555.555.555-66', 'Cobertura Luxuosa', 'fasfdasf', 4, 1, 1, 500000.00, 0, 0, 250, 4, 5, 3, 3, 1, '159469430110109.jpg', '159449663848400000000-floor-plan.jpg', '1594496830423cobertura.jpg', 'fdsfsaf', 'Para Venda', 'Usado'),
(6, '99.999.999/9999-99', '555.555.555-66', 'Apartamento 2 Quartos', 'Apartamento Localizado em uma das melhores regiões de Belo Horizonte...', 4, 1, 1, 1000.00, 2013, 0, 80, 2, 1, 0, 1, 0, '159439851252201apto.jpg', '159439629533700000000 floor-plan.jpg', '1594151082107hero-2.jpg', 'Rua Almeida Campos 150', 'Alugado', 'Usado'),
(7, '99.999.999/9999-99', '555.555.555-66', 'Casarão 5 Quartos', 'Casa com ....', 4, 1, 1, 980000.00, 2017, 4, 1400, 5, 4, 2, 4, 1, '1594496567912chacara.jpg', '159449657723600000000-floor-plan.jpg', '1594151094510hero-1.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Usado'),
(8, '887.888.888-99', '999.996.666-66', 'Cobertura Grande', 'Cobertura bem Luxuosa...', 4, 1, 5, 2300.00, 2018, 0, 190, 4, 4, 3, 4, 1, '1594692923901cobertura.jpg', '159469298510200000000-floor-plan.jpg', '1594692972184cobertura.jpg', 'Rua Almeida Campos 150', 'Para Aluguel', 'Usado'),
(9, '111.111.111-11', '555.555.555-66', 'Apartamento Ipiranga', '', 4, 1, 1, 380000.00, 2016, 0, 160, 4, 4, 3, 3, 0, '159469446607801.jpg', 'sem-img.jpg', '159469447535608.jpeg', '', 'Para Venda', 'Usado'),
(10, '99.999.999/9999-99', '555.555.555-66', 'Chácara Grande', 'Linda chácara..', 1, 3, 6, 490000.00, 1996, 0, 2500, 4, 5, 2, 10, 1, '1594694639714chacara.jpg', 'sem-img.jpg', '1594694649435chacara.jpg', '', 'Para Venda', 'Usado'),
(11, '99.999.999/9999-99', '555.555.555-66', 'Apartamento Serra Verde', '', 3, 1, 4, 125000.00, 1996, 0, 65, 3, 2, 1, 1, 0, '159469478878006.jpg', 'sem-img.jpg', '159469479382606.jpg', '', 'Para Venda', 'Usado'),
(12, '111.111.111-11', '555.555.555-66', 'Casa 4 Quartos', '', 3, 1, 3, 225000.00, 1998, 0, 120, 4, 2, 1, 3, 0, '1594694904726casa.webp', 'sem-img.jpg', '1594694917479casa.webp', '', 'Para Venda', 'Usado'),
(13, '111.111.111-11', '555.555.555-66', 'Casa 2 Quartos', '', 3, 1, 2, 750.00, 1991, 0, 65, 2, 1, 0, 1, 0, '159469501585608.jpeg', 'sem-img.jpg', '159469502090308.jpeg', '', 'Para Aluguel', 'Usado'),
(14, '99.999.999/9999-99', '555.555.555-66', 'Lote 2 Mil Metros', '', 7, 3, 6, 80000.00, 2020, 0, 2200, 0, 0, 0, 0, 0, '1594765258003lote.png', 'sem-img.jpg', '1594765267097lotes.jpg', '', 'Para Venda', 'Novo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `movimento` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `tesoureiro` varchar(20) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `valor`, `tesoureiro`, `data`) VALUES
(1, 'Entrada', 'Aluguel', 70.00, '777.777.777-77', '2020-07-13'),
(2, 'Entrada', 'Aluguel', 52.50, '777.777.777-77', '2020-07-14'),
(3, 'Entrada', 'Venda', 12950.00, '777.777.777-77', '2020-07-14'),
(4, 'Saída', 'Aluguel', 750.00, '777.777.777-77', '2020-07-14'),
(5, 'Saída', 'Aluguel', 75.00, '777.777.777-77', '2020-07-14'),
(6, 'Saída', 'Aluguel', 675.00, '777.777.777-77', '2020-07-14'),
(7, 'Saída', 'Compra de Vidro', 342.00, '777.777.777-77', '2020-07-14'),
(8, 'Saída', 'Compra de Vidro', 380.00, '777.777.777-77', '2020-07-14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tarefas`
--

CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `id_imovel` varchar(10) NOT NULL,
  `corretor` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tarefas`
--

INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `data`, `hora`, `id_imovel`, `corretor`, `status`) VALUES
(4, 'Visita a Imóvel', 'Cliente Paulo César', '2020-07-09', '15:21:00', '171', '555.555.555-66', ''),
(5, 'Visitar Imóvel', 'Cliente Camilo', '2020-07-09', '15:30:00', '171', '555.555.555-66', 'concluida'),
(19, 'dsdsddsa', 'dsdsadsadsad', '2020-07-13', '10:15:00', '', '999.996.666-66', ''),
(20, 'Visitar Imóvel', 'Cliente Pedro Silva', '2020-07-14', '16:30:00', '171', '555.555.555-66', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `imoveis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tipos`
--

INSERT INTO `tipos` (`id`, `nome`, `imagem`, `imoveis`) VALUES
(1, 'Chacara', '1594392956630chacara.jpg', 1),
(2, 'Sitios', '1594392980034sitios.jpg', 0),
(3, 'Casa', '1594392444601casa.jpg', 4),
(4, 'Apartamento', '1594392437195apartamento.jpg', 7),
(5, 'Cobertura', '1594392965147cobertura.jpg', 0),
(6, 'Casa Geminada', '1594494714499casa-geminada.jpg', 1),
(7, 'Lotes', '1594392973025lotes.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `nivel` varchar(35) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `foto`) VALUES
(1, 'Administrador', '000.000.000-00', 'sabrinamartinez@gmail.com', '123', 'admin', '1686502826062comment-2.jpg'),
(3, 'Corretor Teste', '555.555.555-66', 'corretor@hotmail.com', '123', 'corretor', '1593546386210agent-2.jpg'),
(8, 'Sabrina Martinez', '502.946.848-44', 'sabrinamartinez@gmail.com', '123', 'tesoureiro', '1594322256615agent-5.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `imovel` int(11) NOT NULL,
  `corretor` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `data_pgto` date DEFAULT NULL,
  `comprador` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `imovel`, `corretor`, `valor`, `pago`, `data`, `data_pgto`, `comprador`) VALUES
(2, 135, '555.555.555-66', 185000.00, 'Sim', '2020-07-09', '2020-07-13', '111.111.111-19'),
(3, 138, '555.555.555-66', 550.00, 'Não', '2020-07-09', NULL, NULL),
(4, 136, '555.555.555-66', 680000.00, 'Não', '2020-07-09', NULL, NULL),
(5, 171, '555.555.555-66', 980000.00, 'Não', '2020-07-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(20) NOT NULL,
  `doc` varchar(25) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `corretor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vendedores`
--

INSERT INTO `vendedores` (`id`, `nome`, `tipo_pessoa`, `doc`, `telefone`, `endereco`, `corretor`) VALUES
(9, 'Paula Campos', 'Fisica', '111.111.111-11', '(55) 55555-5555', 'Rua C', '555.555.555-66'),
(10, 'Empreza Zx', 'Juridica', '99.999.999/9999-99', '(99) 99999-9999', 'Rua Almeida Campos 150', '555.555.555-66'),
(15, 'Marcos Silva', 'Fisica', '887.888.888-99', '(33) 33333-3333', 'Rua Almeida Campos 150', '999.996.666-66');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alugueis`
--
ALTER TABLE `alugueis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `corretores`
--
ALTER TABLE `corretores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alugueis`
--
ALTER TABLE `alugueis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `compradores`
--
ALTER TABLE `compradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretores`
--
ALTER TABLE `corretores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tarefas`
--
ALTER TABLE `tarefas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
