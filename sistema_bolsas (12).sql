-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/10/2025 às 23:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_bolsas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_bolsa`
--

CREATE TABLE `avaliacao_bolsa` (
  `id_avaliacao` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_bolsa` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao_bolsa`
--

INSERT INTO `avaliacao_bolsa` (`id_avaliacao`, `id_usuario`, `id_bolsa`, `nota`) VALUES
(6, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bolsa`
--

CREATE TABLE `bolsa` (
  `id_bolsa` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `pais` varchar(100) NOT NULL,
  `universidade` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `tipo_bolsa` varchar(100) NOT NULL,
  `requisitos` text NOT NULL,
  `prazo_inscricao` date NOT NULL,
  `link_inscricao` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bolsa`
--

INSERT INTO `bolsa` (`id_bolsa`, `titulo`, `descricao`, `pais`, `universidade`, `curso`, `tipo_bolsa`, `requisitos`, `prazo_inscricao`, `link_inscricao`) VALUES
(1, ' Lester B. Pearson International Scholarship ', 'Bolsa integral que cobre mensalidade, materiais acadêmicos, moradia e despesas relacionadas durante toda a graduação.', 'Canadá', 'Universidade: University of Toronto ', ' Principais cursos:   Engenharia (Elétrica, Mecânica, Civil, Química, Computação)  , Ciência da Computação   , Negócios e Administração (Rotman School of Management) ,  Ciências da Saúde (Enfermagem, Ciências Biomédicas)  , Ciências Naturais ', 'Graduação', 'Excelente desempenho acadêmico, criatividade, potencial de liderança e indicação da escola.', '2025-10-10', 'https://www.estudarfora.org.br/universidade-de-toronto-bolsas-integrais/'),
(2, 'Bolsa QuestBridge National College Match ', 'Bolsa integral que cobre mensalidade, moradia, alimentação e despesas acadêmicas ', 'Estados Unidos', 'Diversas universidades parceiras de elite nos EUA (ex: Stanford, Yale, MIT) ', 'Engenharia, Ciências da Computação, Economia, Ciências Biológicas, Psicologia, Artes Liberais', 'Graduação', 'Excelente desempenho acadêmico, necessidade financeira, cartas de recomendação, ensaios', '2025-09-24', 'https://www.questbridge.org/'),
(3, ' Bolsa Rhodes Scholarship', 'Bolsa integral que cobre mensalidade, moradia, alimentação, seguro saúde e despesas pessoais', 'Reino Unido', 'University of Oxford', 'Ciências Sociais, Direito, Medicina, Ciências Naturais, Humanidades', 'Graduação', 'Excelência acadêmica excepcional, liderança, compromisso com serviço comunitário, ensaios e entrevistas', '2025-08-10', 'https://www.rhodeshouse.ox.ac.uk/'),
(4, 'Bolsa Australia Awards Scholarships ', 'Bolsa integral que cobre mensalidade, moradia, seguro saúde, passagem aérea e auxílio para livros e despesas de subsistência ', 'Austrália', 'University of Sydney, University of Melbourne)', 'Engenharia, Ciências Ambientais, Negócios, Saúde Pública, Educação, Agricultura', 'Graduação', ' Excelente desempenho acadêmico, relevância do curso para o desenvolvimento do país de origem, proficiência em inglês (IELTS/TOEFL), compromisso com retorno ao país natal', '2025-03-10', 'https://www.dfat.gov.au/people-to-people/australia-awards'),
(5, 'Bolsa DAAD Scholarships for International Students ', 'Bolsa integral que cobre mensalidade (geralmente gratuita), estipêndio mensal (€934), seguro saúde, passagem aérea e cursos de alemão', 'Alemanha', 'Technical University of Munich, Heidelberg University', ' Engenharia, Ciências da Computação, Ciências Naturais, Economia, Medicina', 'Graduação', ' Excelente desempenho acadêmico, proficiência em alemão ou inglês (TestDaF/IELTS), motivação para estudos na Alemanha, carta de aceitação universitária', '2025-09-26', 'https://www.daad.de/en/studying-in-germany/scholarships/daad-scholarships/'),
(6, 'Bolsa Eiffel Excellence Scholarship Program ', 'Bolsa integral com €1.181 mensais para graduação, passagem aérea, seguro saúde, subsídio cultural e francês', 'França', 'Sorbonne University, Sciences Po', ' Artes, Moda, Filosofia, Negócios, Engenharia, Direito Internacional', 'Graduação', 'Excelente desempenho acadêmico, nacionalidade não-francesa, proficiência em francês (DELF B2) ou inglês, indicação pela instituição francesa', '2025-01-01', 'https://www.campusfrance.org/en/france-excellence-eiffel-scholarship-program'),
(7, 'Bolsa MEXT (Monbukagakusho) Undergraduate Scholarship ', 'Bolsa integral que cobre mensalidade, moradia em dormitórios, estipêndio mensal (¥117.000), passagem aérea e curso preparatório de japonês', 'Japão', 'Universidades imperiais japonesas (ex: University of Tokyo, Kyoto University)', 'Engenharia, Ciências da Computação, Tecnologia, Ciências Sociais, Medicina', 'Graduação', 'Excelente desempenho acadêmico, exame de admissão EJU, proficiência em japonês ou inglês (JLPT/TOEFL), recomendação da embaixada', '2025-04-20', 'https://www.br.emb-japan.go.jp/itpr_pt/bolsas_programas.html'),
(8, 'Bolsa MAEC-AECID Scholarships ', 'Bolsa parcial ou integral com estipêndio, moradia e curso de espanhol', 'Espanha', 'Universidades públicas espanholas (ex: University of Granada, Autonomous University of Madrid)', ' Língua e Cultura Espanhola, História, Turismo, Direito, Engenharia', 'Graduação', 'Nacionalidade de país ibero-americano ou africano preferencial, bom acadêmico, DELE ou SIELE', '2025-04-01', 'https://www.aecid.es/'),
(9, 'Bolsa Holland Scholarship  ', 'Bolsa parcial de €5.000 para o primeiro ano de estudos, cobrindo mensalidade e despesas iniciais  ', 'Holanda', ' University of Amsterdam, Delft University of Technology', 'Engenharia, Sustentabilidade, Ciências Sociais, Negócios Internacionais, Design  ', 'Graduação', 'Estudante não-UE/EEE, excelente desempenho acadêmico, proficiência em inglês (IELTS 6.5+ ou TOEFL), carta de motivação  ', '2025-02-02', 'https://www.studyinnl.org/finances/nl-scholarship'),
(10, 'Bolsa Swiss Government Excellence Scholarships ', 'Bolsa integral com estipêndio mensal (CHF 1.920), seguro saúde, passagem aérea e suporte para pesquisa  ', 'Suiça', ' ETH Zurich, University of Genev', 'Engenharia, Finanças, Negócios Internacionais, Ciências, Direito  ', 'Graduação', 'Excelente desempenho acadêmico, nacionalidade estrangeira, proficiência em inglês ou francês/alemão (TOEFL/DELF), indicação pela autoridade do país de origem  ', '2025-09-30', 'https://www.sbfi.admin.ch/en/swiss-government-excellence-scholarships'),
(11, 'Bolsa Global Korea Scholarship (GKS) for Undergraduate  ', 'Bolsa integral que cobre mensalidade, moradia em dormitório, estipêndio mensal (KRW 900.000), passagem aérea, curso de coreano e seguro  ', 'Coreia do Sul', 'Universidades top coreanas (ex: Seoul National University, KAIST)   ', 'Engenharia, Tecnologia, K-Pop/Cultura, Negócios, Ciências da Computação  ', 'Graduação', 'Excelente desempenho acadêmico, TOPIK (nível 1+) ou TOEFL/IELTS, recomendação da embaixada, exame de aptidão  ', '2025-02-20', 'https://www.studyinkorea.go.kr/en/main.do'),
(12, 'Bolsa DSU Regional Scholarships (Diritto allo Studio Universitario)  ', 'Bolsa baseada em necessidade, cobrindo mensalidade, moradia em residências e refeições (até €5.000/ano)  ', 'Itália', 'Universidades regionais na Itália (ex: University of Milan, University of Padua)  ', 'História, Artes, Direito, Economia, Ciências Sociais   ', 'Graduação', ' Residência na Itália ou visto, ISEE (renda familiar baixa), bom acadêmico  ', '2025-06-07', 'https://www.universitaly.it/'),
(13, 'Bolsa Swedish Institute Scholarships for Global Professionals (adaptável a undergrad)  ', 'Bolsa integral que cobre mensalidade, estipêndio (SEK 10.000/mês), moradia, seguro e viagem  ', 'Suécia', 'Universidades suecas (ex: Uppsala University, Lund University)  ', 'Sustentabilidade, Design, Ciências Sociais, Inovação, Saúde Pública  ', 'Graduação', 'Liderança em desenvolvimento sustentável, proficiência em inglês (IELTS 6.5+), trabalho voluntário ou profissional relevante  ', '2025-04-30', 'https://si.se/en/apply/scholarships/swedish-institute-scholarships-for-global-professionals/'),
(14, 'Dr. Goh Keng Swee Scholarship', 'Bolsa integral que cobre mensalidades, passagens aéreas, seguro-saúde, hospedagem e uma ajuda anual para despesas pessoais.', 'Singapura', 'National University of Singapore (NUS), Nanyang Technological University (NTU), Singapore Management University (SMU) e Singapore University of Technology and Design (SUTD)', ' Engenharia (Elétrica, Mecânica, Civil, Computação)  Administração, Negócios e Economia  Ciência da Computação e Tecnologia da Informação  Ciências Naturais e Matemática  Ciências Sociais (Psicologia, Sociologia, Política)', 'Graduação', ' Excelência acadêmica, liderança, participação comunitária e proficiência em inglês (IELTS/TOEFL).', '2025-12-30', 'https://www.psc.gov.sg/scholarships/dr-goh-keng-swee-scholarship');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_bolsa` int(11) NOT NULL,
  `texto` text NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comentario`
--

INSERT INTO `comentario` (`id`, `id_usuario`, `id_bolsa`, `texto`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'olá', '2025-10-01 00:37:04', '2025-10-01 00:37:04'),
(12, 2, 1, 'olá', '2025-10-09 21:26:24', '2025-10-09 21:26:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentario_like`
--

CREATE TABLE `comentario_like` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL,
  `curtido` tinyint(1) DEFAULT 0,
  `descurtido` tinyint(1) DEFAULT 0,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comentario_like`
--

INSERT INTO `comentario_like` (`id`, `id_usuario`, `id_comentario`, `curtido`, `descurtido`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 0, 0, '2025-10-01 00:37:06', '2025-10-01 00:37:08'),
(2, 2, 1, 1, 0, '2025-10-06 18:49:38', '2025-10-09 21:26:26'),
(14, 2, 12, 1, 1, '2025-10-09 21:26:29', '2025-10-09 21:26:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `favorito`
--

CREATE TABLE `favorito` (
  `id_favorito` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_bolsa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `favorito`
--

INSERT INTO `favorito` (`id_favorito`, `id_usuario`, `id_bolsa`) VALUES
(1, 1, 1),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lembrete`
--

CREATE TABLE `lembrete` (
  `id_lembrete` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_bolsa` int(11) NOT NULL,
  `data_lembrete` date NOT NULL,
  `enviado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lembrete_pessoal`
--

CREATE TABLE `lembrete_pessoal` (
  `id_lembrete_pessoal` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `data_lembrete` date NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lembrete_pessoal`
--

INSERT INTO `lembrete_pessoal` (`id_lembrete_pessoal`, `id_usuario`, `titulo`, `descricao`, `data_lembrete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'hoje', 'teste', '2025-09-30', '2025-10-01 00:48:27', '2025-10-01 00:48:27'),
(2, 1, 'hoje', 'teste', '2025-09-30', '2025-10-01 01:03:52', '2025-10-01 01:03:52'),
(4, 2, 'hoje', 'teste', '2025-09-25', '2025-10-01 01:11:11', '2025-10-01 01:11:11'),
(5, 2, 'hoje', 'teste', '2025-10-06', '2025-10-06 18:22:25', '2025-10-06 18:22:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `simulador_custos`
--

CREATE TABLE `simulador_custos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `alimentacao` decimal(10,2) DEFAULT 0.00,
  `moradia` decimal(10,2) DEFAULT 0.00,
  `transporte` decimal(10,2) DEFAULT 0.00,
  `lazer` decimal(10,2) DEFAULT 0.00,
  `outros` decimal(10,2) DEFAULT 0.00,
  `total_mensal` decimal(10,2) NOT NULL,
  `total_semanal` decimal(10,2) NOT NULL,
  `total_diario` decimal(10,2) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `tipo_usuario`, `senha`, `foto`) VALUES
(1, 'Rayssa', 'admin@site.com', 'Administrador', '$2b$10$GJJ/n3ceI44HRzyIHK9q3unqXc590aBM.dWOtjyvvYghV2IZB1X3O', '/uploads/user_11759856250456.png'),
(2, 'Beatriz', 'Bia@gmail.com', 'usuario', '$2b$10$j/OYLJt8uCYHLS76mFLopOfMvbjcghVxg3B41TRn21xRrhNekdppq', '/uploads/user_21759866942025.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `avaliacao_bolsa`
--
ALTER TABLE `avaliacao_bolsa`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_bolsa` (`id_bolsa`);

--
-- Índices de tabela `bolsa`
--
ALTER TABLE `bolsa`
  ADD PRIMARY KEY (`id_bolsa`);

--
-- Índices de tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_bolsa` (`id_bolsa`);

--
-- Índices de tabela `comentario_like`
--
ALTER TABLE `comentario_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Índices de tabela `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`id_favorito`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_bolsa` (`id_bolsa`);

--
-- Índices de tabela `lembrete`
--
ALTER TABLE `lembrete`
  ADD PRIMARY KEY (`id_lembrete`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_bolsa` (`id_bolsa`);

--
-- Índices de tabela `lembrete_pessoal`
--
ALTER TABLE `lembrete_pessoal`
  ADD PRIMARY KEY (`id_lembrete_pessoal`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `simulador_custos`
--
ALTER TABLE `simulador_custos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao_bolsa`
--
ALTER TABLE `avaliacao_bolsa`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `bolsa`
--
ALTER TABLE `bolsa`
  MODIFY `id_bolsa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `comentario_like`
--
ALTER TABLE `comentario_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `favorito`
--
ALTER TABLE `favorito`
  MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `lembrete`
--
ALTER TABLE `lembrete`
  MODIFY `id_lembrete` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lembrete_pessoal`
--
ALTER TABLE `lembrete_pessoal`
  MODIFY `id_lembrete_pessoal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `simulador_custos`
--
ALTER TABLE `simulador_custos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `avaliacao_bolsa`
--
ALTER TABLE `avaliacao_bolsa`
  ADD CONSTRAINT `avaliacao_bolsa_ibfk_1_cascade` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avaliacao_bolsa_ibfk_2` FOREIGN KEY (`id_bolsa`) REFERENCES `bolsa` (`id_bolsa`);

--
-- Restrições para tabelas `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_bolsa`) REFERENCES `bolsa` (`id_bolsa`);

--
-- Restrições para tabelas `comentario_like`
--
ALTER TABLE `comentario_like`
  ADD CONSTRAINT `comentario_like_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_like_ibfk_2` FOREIGN KEY (`id_comentario`) REFERENCES `comentario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comentario_like_comentario` FOREIGN KEY (`id_comentario`) REFERENCES `comentario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comentario_like_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorito_ibfk_2` FOREIGN KEY (`id_bolsa`) REFERENCES `bolsa` (`id_bolsa`);

--
-- Restrições para tabelas `lembrete`
--
ALTER TABLE `lembrete`
  ADD CONSTRAINT `lembrete_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lembrete_ibfk_2` FOREIGN KEY (`id_bolsa`) REFERENCES `bolsa` (`id_bolsa`);

--
-- Restrições para tabelas `lembrete_pessoal`
--
ALTER TABLE `lembrete_pessoal`
  ADD CONSTRAINT `lembrete_pessoal_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `simulador_custos`
--
ALTER TABLE `simulador_custos`
  ADD CONSTRAINT `simulador_custos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
