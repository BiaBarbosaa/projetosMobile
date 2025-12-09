-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09/12/2025 às 14:38
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `zen_habit`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `habito`
--

CREATE TABLE `habito` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `frequencia` enum('Diariamente','fimDeSemana','Personalizado','segSex') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `habito`
--

INSERT INTO `habito` (`id`, `usuario_id`, `titulo`, `frequencia`, `icone`) VALUES
(84, 45, 'b', 'fimDeSemana', '1'),
(85, 45, 'c', 'segSex', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `habito_dias`
--

CREATE TABLE `habito_dias` (
  `id` int NOT NULL,
  `habito_id` int NOT NULL,
  `dia_semana` enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_habito`
--

CREATE TABLE `historico_habito` (
  `id` int NOT NULL,
  `habito_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `data` datetime NOT NULL,
  `status` enum('Feito','Não feito') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sexo` enum('Masculino','Feminino') COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `sexo`, `data_criacao`) VALUES
(1, 'Luiza', 'luiza@gmail.com', '1', 'Feminino', '2025-11-06 14:10:45'),
(2, 'maria', 'maria@gmail.com', '1', 'Feminino', '2025-11-06 14:13:16'),
(3, 'Julia', 'ju@gmail.com', '1', 'Feminino', '2025-11-06 14:15:13'),
(4, 'sofia', 'so@gmail.com', '1', 'Feminino', '2025-11-06 14:16:28'),
(5, 'bia', 'linda@gmail.com', '1', 'Feminino', '2025-11-06 14:59:50'),
(6, 'zura', 'z@gmail.com', '1', 'Feminino', '2025-11-06 15:00:44'),
(7, 'beatriz barbosa', 'b@gmail.com', '22', 'Feminino', '2025-11-07 07:41:10'),
(8, 'bia', 'i@gmail.com', '$2b$10$ZZZGNVhkAnXttFyh.NDquOfCH8qcpO0MiieikAR.dm6jsERVAYqqW', 'Feminino', '2025-11-07 07:46:54'),
(9, 'cecilia', 'ceci@gmail.com', '1', 'Feminino', '2025-11-07 07:54:25'),
(10, 'lara', 'lara@gmail.com', '1', 'Feminino', '2025-11-07 07:56:24'),
(11, 'Joana', 'jo@gmail.com', '1', 'Feminino', '2025-11-07 07:58:55'),
(12, 'sonia', 'sonia@gmail.com', '1', 'Feminino', '2025-11-07 08:57:43'),
(13, 'Joana', 'joo@gmail.com', '1', 'Feminino', '2025-11-07 08:58:49'),
(14, 'Joana', 'joao@gmail.com', '1', 'Feminino', '2025-11-07 09:11:26'),
(15, 'julia', 'julia@gmail.com', '1234', 'Feminino', '2025-11-11 10:12:50'),
(16, 'Ana chagas', 'chagass@', '$2b$10$pxr2G9CTaT3o/mccbT0XQ.9Mgd5SjGgoy/kPP7eAwgnfUWJ.DFl1y', 'Feminino', '2025-11-14 07:30:46'),
(17, 'francisco', 'fran@', '$2b$10$AIlt9sbj7HP7oYVpG3b8W.w72bdmxVa.qgM/zoBL6ZC37JjPDY.xW', 'Feminino', '2025-11-14 12:09:28'),
(18, 'liz', 'liz@', '$2b$10$n3Xo9DJJUZU0BJdlU6JCYuh8BWhyB2J7pn2WJxQgVR1yyvVjtn5fa', 'Feminino', '2025-11-14 13:58:25'),
(19, 'pedro', 'pedro@', '$2b$10$rd88kHTWt/RqFDAUFtbMNOdZ711RytQLPhiyGoDz78fJ2GG3JuIH2', 'Masculino', '2025-11-14 14:40:48'),
(20, 'gustavo', 'gu@', '$2b$10$8OuXlAMkfvtZklYnRVOeFOw/X6qAgEvlFNAbXv0SlPC4VPBDhQTym', 'Masculino', '2025-11-14 15:17:28'),
(21, 'Beatriz bezerra', 'bezerra@gmail.com', '$2b$10$2PhwrF3BAWBlUTSVzqoBnOyd4DZlJVuUUogtnT.ioT2WIHyDDkyRu', 'Feminino', '2025-11-18 07:23:24'),
(22, 'Claudia', 'clau@gmail.com', '$2b$10$OqQQ4WqvFKAB0mvRVbwAXO9f.Twm8KTsiUTalolpnfRC9.0apLxWi', 'Feminino', '2025-11-18 13:41:41'),
(23, 'LucasSantos', 'lucas@gmail.com', '$2b$10$uTlOB8Xc3SsVj8Fd3N6a6eK/rZdxJgzvvqhHXFWibxyigH6rAZMSG', 'Feminino', '2025-11-18 13:51:42'),
(24, 'Izi barbosa', 'izi@', '$2b$10$G6zocVT05EQVChkSEUfYeeHH2Rhw4PDJzAeUdIji9qiMQtl1rGYxK', 'Feminino', '2025-11-18 14:03:37'),
(25, 'Izi barbosa', 'izibb@', '$2b$10$wuW8SgflCZMW4JWqg3UQXuu.hGrzhja.RMfBw7TN1Jyd29HlR9uXa', 'Feminino', '2025-11-18 14:05:20'),
(26, 'Clara rodrigues', 'clara@', '$2b$10$PvV.oXJtOa0hWMrfdfie/uXah/NRsw7vYbLt2.CVhiGbQ33HkHD9.', 'Feminino', '2025-11-25 07:47:07'),
(30, 'pedro', 'pedroh@', '$2b$10$bvmYjwE.dgc2iSTqzyZ5o.lo1GV7p87MEgB5oWEbXF4OtGW0GrrAy', 'Masculino', '2025-11-25 08:04:20'),
(31, 'biazinha', 'biazinha@', '$2b$10$QON1GfDXPSQ3aHTXC0TadexGk9VyHKVxn1cSN6CHzyRnDRw3uJ0K.', 'Feminino', '2025-11-25 11:33:14'),
(32, 'Beatriz viana', 'viana@', '$2b$10$CiOK68sVWewDZW4DWlePnOkWmELXV5tf8AnadJhptutD58nSBASim', 'Feminino', '2025-11-27 13:14:08'),
(33, 'patricia', 'pati@', '$2b$10$GJkkxJDwyQ6OvyuYpTxGAu6QJnSB7p5kby5vVDNkAHh42SmX87LYS', 'Masculino', '2025-11-27 13:50:06'),
(34, 'jurandir@', 'ju@', '$2b$10$cyZkgXPgJRhCJ9UNNUZ5meMO..3Df7blCHetDmAODix79QUvXJtji', 'Masculino', '2025-11-28 07:14:51'),
(35, 'k', 'k@', '$2b$10$YekhSeq90cDe5LPLi55OKeOzLjdZuDZBUj9hnAw2NLIjgZHy8HcG6', 'Feminino', '2025-11-28 08:03:58'),
(36, 'leticia@', 'leticia@', '$2b$10$4V0Kbp8jPDDRtlHoNI16ZOIn/BcajOLRWfpJlCrXReBLw./swYy9i', 'Feminino', '2025-11-28 09:02:45'),
(37, 'aaaa', 'a@', '$2b$10$CNOWhy4ve0nl7onKTZ0pX.80PwwPoLdmq5lvI6is5qQ7gt2F/Y5Ta', 'Feminino', '2025-11-28 09:56:33'),
(38, 'h', 'h@', '$2b$10$d9FrFpi5PThVx6Zy963yV.uwetwIR5KuEk0METQm3HBoKn6ceMTpq', 'Masculino', '2025-11-28 11:46:54'),
(39, '7@', '7@', '$2b$10$DOjQ23qBNbEVu3.1qpuh5.jvkRqrBS1rJFMiu2cf3nReCMZnZJBKK', 'Feminino', '2025-11-28 15:32:12'),
(40, 'Beatriz B Barbosa', 'biabarbosa@', '$2b$10$d0tc/nqJ.oZm3qdk6oAPWekaFyizxZ/xSP2moSC3eWq0LoeLfas7i', 'Feminino', '2025-12-02 07:18:54'),
(41, 'Beatriz Bezerra Barbosa', 'barbosa@gmail.com', '$2b$10$sdr2cif/F08aCMXr6.4DQO0XqVaWcR1fejh9wJ15cUAPQ8SXPgcT.', 'Feminino', '2025-12-05 07:28:43'),
(42, 'b', 'ab@gmail.com', '$2b$10$oH6a1sTr31I6F7idKzWe1.Hr2Fz8HhdNsL0EKNtiXZvzHACTDmpze', 'Masculino', '2025-12-05 08:20:12'),
(43, 'Beatriz Barbosa Bezerra', 'biabarbosa@gmail.com', '$2b$10$mDLJsI5zd2foAUDB0M5s4usHQbupTasqatm6ZIM7nq2nDh0lIJa2e', 'Feminino', '2025-12-05 11:25:24'),
(44, 'bia', 'bia@gmail.com', '$2b$10$OmpBHJZRWzwKC1p/n4W2XOstIa0WkLX9iZclCrHGYWbxLHsINvzMq', 'Feminino', '2025-12-05 11:29:18'),
(45, 'fernanda', 'fernanda@gmail.com', '$2b$10$WggwCHhlQux2hQ0A8pGEeO1w0g6eVnZ/ySUXK/517XVKCT3jMRKiK', 'Masculino', '2025-12-05 14:23:36'),
(46, 'w', 'w@', '$2b$10$8eAH41XfVz57RW4Ok5qy5Oiw0Tl6B2HD0tiqgwrW9cLzFsb/vf1qS', 'Feminino', '2025-12-05 14:58:17'),
(47, 'Beatriz anjos best', 'anjos@gmail.com', '$2b$10$wUc86R2k7LrFhqdrBBhI5eGThEMjZ30vkqvuSEZ901Yn3B08kjklm', 'Feminino', '2025-12-05 15:22:42'),
(48, 'maik', 'maik@gmail.com', '$2b$10$kMOfz984wPIojYlaGluOC.cC8fB3tQ5u5sfjfRRlnTPOcdN2hblT.', 'Masculino', '2025-12-09 07:31:36');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `habito`
--
ALTER TABLE `habito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `habito_dias`
--
ALTER TABLE `habito_dias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `habito_id` (`habito_id`);

--
-- Índices de tabela `historico_habito`
--
ALTER TABLE `historico_habito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `habito_id` (`habito_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `habito`
--
ALTER TABLE `habito`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `habito_dias`
--
ALTER TABLE `habito_dias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `historico_habito`
--
ALTER TABLE `historico_habito`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `habito`
--
ALTER TABLE `habito`
  ADD CONSTRAINT `habito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `habito_dias`
--
ALTER TABLE `habito_dias`
  ADD CONSTRAINT `habito_dias_ibfk_1` FOREIGN KEY (`habito_id`) REFERENCES `habito` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `historico_habito`
--
ALTER TABLE `historico_habito`
  ADD CONSTRAINT `historico_habito_ibfk_1` FOREIGN KEY (`habito_id`) REFERENCES `habito` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `historico_habito_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
