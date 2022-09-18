CREATE TABLE IF NOT EXISTS `t_degree` (
  `uid` char(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `level` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `t_degree`
  ADD PRIMARY KEY (`uid`);

INSERT INTO `t_degree` (`uid`, `name`, `slug`, `level`, `url`, `created_at`, `edited_at`) VALUES
('DTPGJVTAA', 'Titre Professionnel Developpeur (se) Web et Web mobile', 'tp-dwwm', 'Niveau 5 / Bac+2', 'https://www.banque.di.afpa.fr/EspaceEmployeursCandidatsActeurs/EGPResultat.aspx?ct=01280m03&cd=&cr=developpeur%20web&type=t', '2022-09-17 19:44:16', '2022-09-17 23:49:13'),
('KQRXPJVNE', 'Titre Professionnel Concepteur Designer UI', 'tp-cdui', 'Niveau 6 / Bac+3', 'https://www.banque.di.afpa.fr/EspaceEmployeursCandidatsActeurs/EGPResultat.aspx?cr=developpeur%20web&cd=&ct=01411m01&type=t', '2022-09-17 19:52:33', '2022-09-17 23:52:33'),
('RAPVBYVDN', 'Titre Professionnel Concepteur développeur d’applications', 'tp-cda', 'Niveau 6 / Bac+3', 'https://www.banque.di.afpa.fr/EspaceEmployeursCandidatsActeurs/EGPResultat.aspx?cr=developpeur%20web&cd=&ct=01281m03&type=t', '2022-09-17 19:51:01', '2022-09-17 23:52:59');