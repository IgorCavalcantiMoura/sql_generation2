CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id_categoria INT AUTO_INCREMENT,
nome_categoria VARCHAR(50),
descricao_categoria VARCHAR(100),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas(
id_pizza INT AUTO_INCREMENT,
nome_pizza VARCHAR(100),
preco DECIMAL(8, 2),
ingredientes TEXT,
id_categoria INT,
PRIMARY KEY (id_pizza),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Salgada', 'Pizzas salgadas com diversos sabores'),
('Doce', 'Pizzas doces com diferentes coberturas'),
('Vegetariana', 'Pizzas vegetarianas com ingredientes frescos'),
('Especial', 'Pizzas especiais com ingredientes exclusivos'),
('Tradicional', 'Pizzas clássicas para todos os gostos');

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, id_categoria)
VALUES
('Margherita', 40.00, 'Molho de tomate, muçarela, manjericão', 5),
('Calabresa', 45.00, 'Molho de tomate, calabresa, cebola, muçarela', 1),
('Chocolate com Morango', 55.00, 'Chocolate, morango, leite condensado', 2),
('Vegetariana', 50.00, 'Molho de tomate, champignon, tomate, cebola, pimentão, azeitona, muçarela', 3),
('Frango com Catupiry', 48.00, 'Molho de tomate, frango desfiado, catupiry, milho', 4),
('Quatro Queijos', 46.00, 'Molho de tomate, muçarela, provolone, parmesão, gorgonzola', 1),
('Banana com Canela', 42.00, 'Banana, canela, leite condensado', 2),
('Portuguesa', 50.00, 'Molho de tomate, presunto, muçarela, ovo, cebola, azeitona, tomate', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%";

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';

