CREATE DATABASE dt_joins;
USE dt_joins;

CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
	categoria VARCHAR(30)
);

INSERT INTO tb_categoria VALUES(1, "comida"),
(2, "tecnologia");

CREATE TABLE tb_productos(
	id_producto INT PRIMARY KEY AUTO_INCREMENT,
	nombre_producto VARCHAR (25),
	precio NUMERIC (5,2),
	id_categoria INT,
	CONSTRAINT fk_producto_categoria
	FOREIGN KEY(id_categoria)
	REFERENCES tb_categoria(id_categoria)
);



INSERT INTO tb_productos
VALUES(1, "Tomate", 1.00,1),
		(2, "Carne", 4.0,1),
		(3, "Sopa", 2.50,1);
		
		SELECT * FROM tb_productos;
		
SELECT  id_producto, nombre_producto
FROM tb_productos
INNER JOIN tb_categoria ON tb_productos.id_categoria = tb_categoria.id_categoria;

SELECT tb_productos.nombre_producto, tb_categoria.id_categoria
FROM tb_productos
LEFT JOIN tb_categoria ON tb_productos.id_categoria = tb_categoria.id_categoria
ORDER BY tb_productos.nombre_producto;

SELECT tb_categoria.id_categoria, tb_productos.nombre_producto
FROM tb_categoria
RIGHT JOIN tb_productos ON tb_categoria.id_categoria = tb_productos.id_categoria
ORDER BY tb_categoria.id_categoria;