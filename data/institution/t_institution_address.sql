CREATE TABLE IF NOT EXISTS `t_institution_address` (
  `uid` char(9) NOT NULL,
  `institution_uid` char(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `address3` varchar(100) NOT NULL,
  `zip` char(5) NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` char(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `t_institution_address`
    ADD PRIMARY KEY (`uid`),
    ADD KEY `institution` (`institution_uid`);


ALTER TABLE `t_institution_address`
    ADD CONSTRAINT `t_institution_address_ibfk_1` FOREIGN KEY (`institution_uid`) REFERENCES `t_institution` (`uid`) ON DELETE CASCADE;

INSERT INTO `t_institution_address` (`uid`, `institution_uid`, `name`, `address1`, `address2`, `address3`, `zip`, `city`, `country`, `created_at`, `edited_at`) VALUES
('ERCRZTWQW', 'ESGVTPSMZ', 'CFA Numérique Martinique', 'Centre d’affaires Dillon Valmenière', '', '', '97200', 'Fort-de-France', 'MQ', '2022-09-17 20:02:02', '2022-09-18 00:02:02');


