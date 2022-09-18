CREATE TABLE IF NOT EXISTS `t_institution_contact` (
  `uid` char(9) NOT NULL,
  `institution_uid` char(9) NOT NULL,
  `name` enum('email','phone') NOT NULL,
  `value` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `t_institution_contact`
    ADD PRIMARY KEY (`uid`),
  ADD KEY `institution` (`institution_uid`);


ALTER TABLE `t_institution_contact`
    ADD CONSTRAINT `t_institution_contact_ibfk_1` FOREIGN KEY (`institution_uid`) REFERENCES `t_institution` (`uid`) ON DELETE CASCADE;


INSERT INTO `t_institution_contact` (`uid`, `institution_uid`, `name`, `value`, `created_at`, `edited_at`) VALUES
('FFSUYFJTR', 'ESGVTPSMZ', 'phone', '+596 696 96 50 07', '2022-09-17 19:59:03', '2022-09-17 23:59:42'),
('VVYQDGENW', 'ESGVTPSMZ', 'email', 'info@cfa-dndc.fr', '2022-09-17 19:56:18', '2022-09-17 23:56:18');