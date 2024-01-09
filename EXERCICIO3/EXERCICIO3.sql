CREATE DATABASE db_farmacia_bem_estar; 

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id_categoria INT AUTO_INCREMENT,
nome_categoria VARCHAR(50),
descricao_categoria VARCHAR(100),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(
id_produto INT AUTO_INCREMENT ,
nome_produto VARCHAR(100),
preco DECIMAL(8, 2),
descricao TEXT,
id_categoria INT,
PRIMARY KEY (id_produto),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Medicamentos', 'Produtos para tratamento de saúde'),
('Higiene', 'Produtos para higiene pessoal'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Vitaminas', 'Suplementos vitamínicos'),
('Cuidados Infantís', 'Produtos específicos para crianças');

INSERT INTO tb_produtos (nome_produto, preco, descricao, id_categoria)
VALUES
('Paracetamol 500mg', 10.00, 'Analgésico e antitérmico', 1),
('Sabonete Antibacteriano', 5.50, 'Limpeza profunda para a pele', 2),
('Creme Hidratante Facial', 30.00, 'Hidratação intensiva para a pele', 3),
('Vitamina C 1000mg', 25.00, 'Suplemento para fortalecimento do sistema imunológico', 4),
('Shampoo Infantil', 12.00, 'Especialmente formulado para crianças', 5),
('Anti-inflamatório 50mg', 15.00, 'Reduz inflamações e dores', 1),
('Protetor Solar FPS 30', 20.00, 'Protege contra raios UVB e UVA', 3),
('Fralda Descartável Tamanho P', 18.00, 'Para bebês até 5kg', 5);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%m%";

SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Cosméticos';
