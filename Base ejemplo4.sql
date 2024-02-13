CREATE DATABASE ejemplo4;

USE ejemplo4;

CREATE TABLE tabla_ejemplo(
id_ejemplo INT primary key auto_increment,
nombre VARCHAR(30),
edad INT
);


INSERT INTO tabla_ejemplo VALUES(1,"Kevin Rodriguez", 18),
(2,"Dominic Mejía", 18),
(3,"Jafet melara", 17),
(4,"Juan Perez", 12),
(5,"Wilfredo Peña", 29);


SELECT COUNT(*) 
FROM tabla_ejemplo;

SELECT MIN(edad)
FROM tabla_ejemplo;

SELECT MAX(edad) 
FROM tabla_ejemplo;

SELECT SUM(edad) 
FROM tabla_ejemplo;

SELECT AVG(edad) 
FROM tabla_ejemplo;