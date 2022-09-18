CREATE TABLE IF NOT EXISTS `t_formation` (
  `uid` char(9) NOT NULL,
  `degree_uid` char(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `remote` tinyint(1) NOT NULL DEFAULT 0,
  `learning` tinyint(1) NOT NULL DEFAULT 0,
  `alternation` tinyint(1) NOT NULL DEFAULT 0,
  `remunerated` tinyint(1) NOT NULL DEFAULT 0,
  `prerequisites` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `t_formation`
    ADD PRIMARY KEY (`uid`),
  ADD KEY `degree` (`degree_uid`);


ALTER TABLE `t_formation`
    ADD CONSTRAINT `t_formation_ibfk_1` FOREIGN KEY (`degree_uid`) REFERENCES `t_degree` (`uid`) ON DELETE CASCADE;

INSERT INTO `t_formation` (`uid`, `degree_uid`, `name`, `duration`, `remote`, `learning`, `alternation`, `remunerated`, `prerequisites`, `created_at`, `edited_at`) VALUES
('WCKPPNPHK', 'DTPGJVTAA', 'DÉVELOPPEUR WEB & MOBILE', '512h, entreprise : 728h', 0, 0, 1, 1, 'Titulaire diplôme CAP, BEP, Classe de 1re – terminale ou équivalent.\r\n\r\nUtilisation courante d’un ordinateur,\r\nd’Internet et des outils bureautiques.', '2022-09-17 20:07:52', '2022-09-18 00:07:52');