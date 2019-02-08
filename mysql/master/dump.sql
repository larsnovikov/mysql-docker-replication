CREATE TABLE mydb.`users` (`id` INT(11) NOT NULL AUTO_INCREMENT, `name` CHAR(30) NOT NULL, `age` SMALLINT(6) NOT NULL, PRIMARY KEY(`id`));
INSERT INTO mydb.users(name, age) VALUES ('Tommy', 66);