/* Tabela aluno */
CREATE TABLE tbl_aluno (
	cod_aluno 	INT NOT NULL AUTO_INCREMENT,
    nome 		VARCHAR(100) NOT NULL,
    cpf 		VARCHAR(11) NOT NULL,
PRIMARY KEY (cod_aluno)
);

/* Tabela profile */
CREATE TABLE tbl_profile (
	cod_profile 	INT NOT NULL AUTO_INCREMENT,
    youtube_channel	VARCHAR(100) NULL,
    facebook 		VARCHAR(100) NULL,
    linkedin		VARCHAR(100) NULL,
PRIMARY KEY (cod_profile)
);

/* Adicionar a chave estrangeira na tabela aluno*/
ALTER TABLE tbl_aluno ADD COLUMN cod_profile INT NOT NULL UNIQUE;
ALTER TABLE tbl_aluno ADD CONSTRAINT fk_profile FOREIGN KEY (cod_profile) 
REFERENCES tbl_profile (cod_profile);


/* INSERIR OS PROFILES */
INSERT INTO tbl_profile 
	VALUES (1000, 'celso.youtube', 'celso@facebook', 'celso@linkedin');
    
INSERT INTO tbl_profile 
	VALUES (2000, 'ana.youtube', 'ana@facebook', 'ana@linkedin');
    
INSERT INTO tbl_profile 
	VALUES (3000, 'pedro.youtube', 'pedro@facebook', 'pedro@linkedin');
    
SELECT * FROM tbl_profile;

/* INSERIR OS ALUNOS */
INSERT INTO tbl_aluno
	VALUES (100, 'Celso Furtado', '454212454', 1000);
    
INSERT INTO tbl_aluno
	VALUES (200, 'Ana Gomes', '8768676', 2000);
    
INSERT INTO tbl_aluno
	VALUES (300, 'Pedro Dias', '989878', 3000);     
    
SELECT * FROM tbl_aluno;