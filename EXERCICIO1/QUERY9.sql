SELECT tb_personagens.*, tb_classes.nome_classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id;
