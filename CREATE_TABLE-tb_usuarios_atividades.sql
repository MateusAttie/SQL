CREATE TABLE tb_usuarios_atividades(
	id  SERIAL  NOT NULL,  
	usuario_id integer REFERENCES tb_usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE,
	atividade_id integer REFERENCES tb_atividades(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT tb_usuarios_atividades_pk PRIMARY KEY(usuario_id,atividade_id)
);