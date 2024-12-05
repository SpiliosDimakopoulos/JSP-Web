CREATE TABLE `users_ex3_8xxxxxx_2024_2025` (
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `users_ex3_8xxxxxx_2024_2025` (`username`,`firstname`,`lastname`,`email`,`password`) VALUES ('jdoe','John','Doe','jdoe@somewhere.com','1111');
INSERT INTO `users_ex3_8xxxxxx_2024_2025` (`username`,`firstname`,`lastname`,`email`,`password`) VALUES ('msmith','Mary','Smith','msmith@somewhere.com','2222');
INSERT INTO `users_ex3_8xxxxxx_2024_2025` (`username`,`firstname`,`lastname`,`email`,`password`) VALUES ('bjakson','Bob','Jakson','bjakson@somewhere.com','3333');