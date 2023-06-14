# В подключенном MySQL репозитории создать базу данных “Друзья человека”
DROP SCHEMA IF EXISTS human_friends;
CREATE DATABASE human_friends;
USE human_friends;

# Создать таблицы с иерархией из диаграммы в БД
DROP TABLE IF EXISTS class_animals;
CREATE TABLE class_animals
(
	id INT AUTO_INCREMENT PRIMARY KEY, 
	class_name VARCHAR(20)
);
INSERT INTO class_animals (class_name)
VALUES ('pets'),
('pack_animals');

DROP TABLE IF EXISTS pets;
CREATE TABLE pets
(
	  id INT AUTO_INCREMENT PRIMARY KEY,
    species_name VARCHAR (20),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES class_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO pets (species_name, class_id)
VALUES ('dogs', 1),
('cats', 1),  
('hamsters', 1);  
 
DROP TABLE IF EXISTS pack_animals;
CREATE TABLE pack_animals
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    species_name VARCHAR (20),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES class_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO pack_animals (species_name, class_id)
VALUES ('horses', 2),
('camels', 2),  
('donkeys', 2); 

# Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения
CREATE TABLE dogs 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    species_id int,
    Foreign KEY (species_id) REFERENCES pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO dogs (name, birthday, commands, species_id)
VALUES ('Рекс', '2021-05-12', 'голос, лапу, фас, сидеть', 1),
('Граф', '2020-07-04', 'голос, апорт, сидеть', 1),  
('Малыш', '2022-10-03', 'апорт, сидеть, лапу, фас', 1), 
('Мухтар', '2015-12-11', 'голос, лапу, фас, сидеть, апорт, лежать', 1);

CREATE TABLE cats 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    species_id int,
    Foreign KEY (species_id) REFERENCES pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO cats (name, birthday, commands, species_id)
VALUES ('Мурзик', '2017-07-02', 'кыс-кыс', 2),
('Пуся', '2018-09-24', 'брысь', 2),  
('Тимка', '2017-01-01', 'кыс-кыс, брысь', 2); 

CREATE TABLE hamsters 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    species_id int,
    Foreign KEY (species_id) REFERENCES pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO hamsters (name, birthday, commands, species_id)
VALUES ('Пеппа', '2022-11-21', NULL, 3),
('Хома', '2023-04-30', NULL, 3),  
('Шеф', '2020-08-01', NULL, 3), 
('Маня', '2022-02-24', NULL, 3);
