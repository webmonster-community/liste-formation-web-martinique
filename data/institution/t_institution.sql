CREATE TABLE IF NOT EXISTS `t_institution` (
  `uid` char(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `t_institution`
    ADD PRIMARY KEY (`uid`);

INSERT INTO `t_institution` (`uid`, `name`, `slug`, `url`, `created_at`, `edited_at`) VALUES
('BJEFWLQRU', 'AECD - Association pour l''Education Cognitive et le Développement', 'aecd', 'https://www.aecd.fr/ultramarin/', '2022-09-17 19:35:37', '2022-09-17 23:40:16'),
('ESGVTPSMZ', 'DNDC - DIGITAL NUMÉRIQUE DOMOTIQUE COMMUNICATION - OF / CFA', 'cfa-numerique', 'https://cfanumeriquemartinique.com/', '2022-09-17 19:46:41', '2022-09-17 23:46:41');


