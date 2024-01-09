CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_classe VARCHAR(50) NOT NULL,
tipo_arma VARCHAR(50),
PRIMARY KEY (id)
);
