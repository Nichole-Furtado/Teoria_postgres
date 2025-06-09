	CREATE TABLE TB_EDITORA (
	    cod_editora INT PRIMARY KEY,
	    nome_editora VARCHAR(100)
	);
	
	CREATE TABLE TB_AUTOR (
	    cod_autor INT PRIMARY KEY,
	    nome_autor VARCHAR(100)
	);
	
	CREATE TABLE TB_LIVRO (
	    cod_livro INT PRIMARY KEY,
	    titulo VARCHAR(100),
	    cod_autor INT,
	    cod_editora INT,
	    FOREIGN KEY (cod_autor) REFERENCES TB_AUTOR(cod_autor),
	    FOREIGN KEY (cod_editora) REFERENCES TB_EDITORA(cod_editora)
	);
	
	
INSERT INTO TB_EDITORA VALUES (1, 'Maris');
INSERT INTO TB_EDITORA VALUES (2, 'Harry');
	
	
	INSERT INTO TB_AUTOR VALUES (1, 'Jorge Amado');
	INSERT INTO TB_AUTOR VALUES (2, 'Cecília Meireles');
	
	INSERT INTO TB_LIVRO VALUES (1, 'Capitães da Areia', 1, 1);
	INSERT INTO TB_LIVRO VALUES (2, 'Romanceiro da Inconfidência', 2, NULL);
	INSERT INTO TB_LIVRO VALUES (3, 'Coleção de Contos Modernos', NULL, 2);
	INSERT INTO TB_LIVRO VALUES (4, 'Obra Anônima', NULL, NULL);

SELECT * FROM tb_livro

SELECT L.titulo, E.nome_editora
FROM TB_LIVRO L
CROSS JOIN TB_EDITORA E;

SELECT L.titulo, E.nome_editora
FROM TB_LIVRO L
INNER JOIN TB_EDITORA E ON L.cod_editora = E.cod_editora;

SELECT L.titulo, E.nome_editora
FROM TB_LIVRO L
LEFT JOIN TB_EDITORA E ON L.cod_editora = E.cod_editora;

SELECT L.titulo, E.nome_editora
FROM TB_LIVRO L
RIGHT JOIN TB_EDITORA E ON L.cod_editora = E.cod_editora;

SELECT L.titulo, E.nome_editora
FROM TB_LIVRO L
FULL OUTER JOIN TB_EDITORA E ON L.cod_editora = E.cod_editora;