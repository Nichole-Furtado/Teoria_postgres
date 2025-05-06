CREATE TABLE TB_VENDEDOR (
    id_vendedor INT PRIMARY KEY,
    nome VARCHAR(100) 
);


CREATE TABLE TB_CLIENTE (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) 
);

CREATE TABLE TB_VENDA (
    id_venda INT PRIMARY KEY,
    data_venda DATE,
    valor_venda DECIMAL(10,2),
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente) REFERENCES TB_CLIENTE(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES TB_VENDEDOR(id_vendedor)
);

INSERT INTO TB_VENDEDOR (id_vendedor) VALUES
(1),
(2),
(3);

INSERT INTO TB_CLIENTE (id_cliente) VALUES
(1),
(2),
(3),
(4);

INSERT INTO TB_VENDA (id_venda, data_venda, valor_venda, id_cliente, id_vendedor) VALUES
(1, '2022-03-01', 100.00, 1, 1),
(2, '2022-03-02', 250.00, 2, 1),
(3, '2022-03-03', 150.00, 1, 2),
(4, '2022-03-04', 75.00, 3, 2),
(5, '2022-03-05', 200.00, 4, 3),
(6, '2022-03-06', 50.00, 2, 3),
(7, '2022-03-07', 80.00, 3, 3),
(8, '2022-03-08', 300.00, 4, 2),
(9, '2022-03-09', 175.00, 1, 2),
(10, '2022-03-10', 125.00, 2, 3);

2)
ALTER TABLE TB_VENDA RENAME COLUMN id_venda TO id;

3)
SELECT id, data_venda, valor_venda AS valor_total, id_cliente, id_vendedor FROM TB_VENDA;

4)
SELECT * FROM TB_VENDA
WHERE data_venda BETWEEN '2022-03-01' AND '2022-03-05';

5)
SELECT * FROM TB_VENDA
WHERE id_cliente IN (1, 2, 3);

6)
SELECT * FROM TB_VENDA
WHERE id_vendedor IN (1, 3);

7)
SELECT * FROM TB_VENDA
WHERE valor_venda >= 150;

8)
DELETE FROM TB_VENDA
WHERE id_cliente = 4;

9)
UPDATE TB_VENDA
SET data_venda = '2022-03-10'
WHERE id = 3;

10)
SELECT * FROM TB_VENDA
ORDER BY valor_venda DESC;

11)
SELECT * FROM TB_VENDA
WHERE id_cliente IN (1, 2) AND valor_venda >= 125;

12)
ALTER TABLE TB_VENDA RENAME COLUMN id TO id_venda;

13)
SELECT COUNT(*) AS total_vendas FROM TB_VENDA;

14)
SELECT AVG(valor_venda) AS media_vendas FROM TB_VENDA;

15)
SELECT MAX(valor_venda) AS maior_venda FROM TB_VENDA;

16) 
SELECT MIN(valor_venda) AS menor_venda FROM TB_VENDA;

17)
SELECT SUM(valor_venda) AS soma_total_vendas FROM TB_VENDA;

18)
SELECT id_vendedor, AVG(valor_venda) AS media_vendas
  FROM TB_VENDA
 GROUP BY id_vendedor;

 19)
 SELECT id_cliente, MAX(valor_venda) AS maior_venda
  FROM TB_VENDA
 GROUP BY id_cliente;

 20)
 SELECT id_cliente, SUM(valor_venda) AS total_por_cliente
  FROM TB_VENDA
 GROUP BY id_cliente;

 21)
 SELECT id_vendedor, SUM(valor_venda) AS total_por_vendedor
  FROM TB_VENDA
 GROUP BY id_vendedor;