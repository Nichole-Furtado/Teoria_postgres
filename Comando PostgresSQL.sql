-- Criar a tabela TB_CLIENTE com colunas para código, nome, CPF e endereço
CREATE TABLE TB_CLIENTE (
    CLI_COD SERIAL PRIMARY KEY, -- Chave primária autoincrementada
    CLI_NOME VARCHAR (50) NOT NULL, -- Nome do cliente, obrigatório
    CLI_CPF VARCHAR (15) NOT NULL, -- CPF do cliente, obrigatório
    CLI_ENDERECO VARCHAR (200) -- Endereço do cliente, opcional
);

-- Inserir dois registros na tabela TB_CLIENTE
INSERT INTO TB_CLIENTE (CLI_NOME, CLI_CPF) VALUES ('MARCOS', '123456456.123');
INSERT INTO TB_CLIENTE (CLI_NOME, CLI_CPF) VALUES ('MARIA', '45465456.12135');

-- Selecionar todos os registros da tabela TB_CLIENTE
SELECT * FROM TB_CLIENTE;

-- Selecionar apenas os nomes dos clientes
SELECT CLI_NOME FROM TB_CLIENTE;

-- Selecionar todos os registros onde o nome seja 'MARCOS'
SELECT CLI_NOME FROM TB_CLIENTE WHERE CLI_NOME = 'MARCOS';

-- Selecionar todos os nomes, exceto 'MARCOS'
SELECT CLI_NOME FROM TB_CLIENTE WHERE CLI_NOME != 'MARCOS';

-- Selecionar o nome do cliente onde nome seja 'LUIZ' e endereço seja 'VILA A'
SELECT CLI_NOME FROM TB_CLIENTE WHERE CLI_NOME = 'LUIZ' AND CLI_ENDERECO = 'VILA A';

-- Selecionar clientes onde o nome seja 'LUIZ' ou o endereço seja 'VILA B'
SELECT CLI_NOME FROM TB_CLIENTE WHERE CLI_NOME = 'LUIZ' OR CLI_ENDERECO = 'VILA B';

-- Ordenar todos os registros pelo nome de forma padrão (ascendente)
SELECT * FROM TB_CLIENTE ORDER BY CLI_NOME;

-- Ordenar todos os registros pelo nome em ordem crescente
SELECT * FROM TB_CLIENTE ORDER BY CLI_NOME ASC;

-- Ordenar todos os registros pelo nome em ordem decrescente
SELECT * FROM TB_CLIENTE ORDER BY CLI_NOME DESC;

-- Atualizar o endereço do cliente 'PEDRO' onde o código seja 4
UPDATE TB_CLIENTE SET CLI_ENDERECO = 'VILA A' WHERE CLI_NOME = 'PEDRO' AND CLI_COD = 4;

-- Excluir o cliente cujo nome seja 'PEDRO'
DELETE FROM TB_CLIENTE WHERE CLI_NOME = 'PEDRO';

-- Excluir o cliente cujo código seja 5
DELETE FROM TB_CLIENTE WHERE CLI_COD = 5;

-- Adicionar uma nova coluna CLI_RG à tabela (corrigindo o tipo, deveria ser VARCHAR e não VACHAR)
ALTER TABLE TB_CLIENTE ADD CLI_RG VARCHAR (20);

-- Adicionar uma nova coluna CLI_CARGO à tabela (corrigindo o tipo, deveria ser VARCHAR e não VACHAR)
ALTER TABLE TB_CLIENTE ADD CLI_CARGO VARCHAR (20);

-- Renomear a coluna CLI_CARGO para CLI_POSTO
ALTER TABLE TB_CLIENTE RENAME COLUMN CLI_CARGO TO CLI_POSTO;

-- Remover a coluna CLI_RG da tabela
ALTER TABLE TB_CLIENTE DROP COLUMN CLI_RG;

--- Renomear tabela
ALTER TABLE TB_CLIENTE RENAME TO TB_CLIENTES;

-- Selecionar todos os registros da tabela ordenados pelo nome
SELECT * FROM TB_CLIENTE ORDER BY CLI_NOME;

--- Comparação com clientes que começam com a letra 'J'
SELECT * FROM TB_CLIENTE WHERE CLI_NOME LIKE '%J'

-- Seleciona todos os registros da tabela TB_CLIENTES 
-- onde o nome NÃO contém a sequência "RCOS".
SELECT * FROM TB_CLIENTES WHERE CLI_NOME NOT LIKE '%RCOS%';

-- Seleciona todos os registros da tabela TB_CLIENTES 
-- onde o código está na lista (1, 3, 5).
SELECT * FROM TB_CLIENTES WHERE CLI_CODIGO IN (1, 3, 5);

-- Seleciona todos os registros da tabela TB_CLIENTES 
-- onde o código está entre 4 e 8 (inclui ambos os extremos).
SELECT * FROM TB_CLIENTES WHERE CLI_CODIGO BETWEEN 4 AND 8;


------------- FUNÇÕES AGREGADAS ------------------------------

1 --AVG() retorna o valor médio 
2 SELECT AVG (CLI_CODIGO) FROM TB_CLIENTE; 
3 --COUNT () retorna o número de linhas 
4 SELECT COUNT(CLI_CODIGO) FROM TB_CLIENTE; 
5 --MAX () retorna o maior valor 
6 SELECT MAX(CLI_CODIGO) FROM TB_CLIENTE; 
7 --MIN () retorna o menor valor 
8 SELECT MIN (CLI_CODIGO) FROM TB_CLIENTE; 
9 --SUM() retorna a soma 
10 SELECT SUM (CLI_CODIGO) FROM TB_CLIENTE;
