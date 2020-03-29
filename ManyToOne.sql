/* Tabela Endereco */
CREATE TABLE tbl_endereco (
	cod_endereco 	INT NOT NULL AUTO_INCREMENT,
    cod_aluno		INT NOT NULL,
    logradouro 		VARCHAR(100) NOT NULL,
    cidade	 		VARCHAR(100) NOT NULL,
    PRIMARY KEY (cod_endereco),
    CONSTRAINT fk_aluno FOREIGN KEY (cod_aluno)
    REFERENCES tbl_aluno (cod_aluno)
);