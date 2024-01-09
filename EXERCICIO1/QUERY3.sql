ALTER TABLE tb_personagens ADD id_classe INT;

ALTER TABLE tb_personagens MODIFY id_classe BIGINT;
SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (id_classe) REFERENCES tb_classes (id);