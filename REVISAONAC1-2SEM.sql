/*----------------------------------------------------------------------------------------------*/
/*                              REVISÃO PARA NAC 1                                              */
/*OBJETIVO: CRIACAO DE TABELAS , CHAVES PRIMRIAS E ESTRANGEIRAS, INSERÇÃO DE DADOS E CONSULTAS  */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                 */
/*DATA DA CRIA��O: 25/09/2014                                                                   */
/*----------------------------------------------------------------------------------------------*/
ALTER SESSION SET NLS_LANGUAGE='BRAZILIAN PORTUGUESE';
ALTER SESSION SET NLS_TERRITORY= BRAZIL;

--CRIAÇÃO DE TABELAS E SUAS RESPECTIVAS CHAVES PRIMARIAS
CREATE TABLE CLIENTE(
COD_CLIENTE NUMBER(5) NOT NULL,
NOME_CLIENTE VARCHAR2(100) NOT NULL,
IDADE NUMBER(3),
DATA_NASC DATE,
SEXO VARCHAR2(50) NOT NULL,
CPF NUMBER(11) NOT NULL
);
ALTER TABLE CLIENTE
  ADD CONSTRAINT CLIENTE_PK PRIMARY KEY (COD_CLIENTE);

CREATE TABLE PRODUTO(
COD_PRODUTO NUMBER(4) NOT NULL,
NOME_PRODUTO VARCHAR2(50) NOT NULL,
DESC_PRODUTO VARCHAR2(100)
);
ALTER TABLE PRODUTO
  ADD CONSTRAINT PRODUTO_PK PRIMARY KEY (COD_PRODUTO);

CREATE TABLE COMPRA(
COD_COMPRA NUMBER(5) NOT NULL,
COD_CLIENTE NUMBER(5)NOT NULL,
COD_PRODUTO NUMBER(5) NOT NULL,
NUM_COMPRA NUMBER(3)
);
ALTER TABLE COMPRA
  ADD CONSTRAINT COMPRA_PK PRIMARY KEY (COD_COMPRA);
  


CREATE TABLE NOTA_FISCAL(
COD_NOTA NUMBER(5) NOT NULL,
COD_COMPRA NUMBER(5) NOT NULL,
CNPJ NUMBER(11) NOT NULL,
NUM_NOTA NUMBER(6) NOT NULL
);
ALTER TABLE NOTA_FISCAL
  ADD CONSTRAINT NOTA_PK PRIMARY KEY (COD_NOTA);
  
  
--CHAVES ESTRANGEIRAS (FOREIGN KEYS)

ALTER TABLE COMPRA 
  ADD (FOREIGN KEY (COD_CLIENTE)
       REFERENCES CLIENTE(COD_CLIENTE));

ALTER TABLE COMPRA 
  ADD (FOREIGN KEY (COD_PRODUTO)
       REFERENCES PRODUTO(COD_PRODUTO));

ALTER TABLE NOTA_FISCAL
  ADD(FOREIGN KEY (COD_COMPRA)
      REFERENCES COMPRA(COD_COMPRA));

--INSERINDO VALORES NAS TABELAS

INSERT INTO CLIENTE (COD_CLIENTE,NOME_CLIENTE,IDADE,DATA_NASC,SEXO,CPF)
  VALUES(12345,'MATEUS',18,TO_DATE('26/10/1995','DD,MM,YYYY'),'M',35958679805);
  
INSERT INTO CLIENTE (COD_CLIENTE,NOME_CLIENTE,IDADE,DATA_NASC,SEXO,CPF)
  VALUES(12346,'MARISA',56,TO_DATE('23/09/1958','DD,MM,YYYY'),'M',11109876543);
  
UPDATE CLIENTE SET SEXO = 'F'
WHERE COD_CLIENTE = 12346 OR COD_CLIENTE = 12347;
  
INSERT INTO CLIENTE (COD_CLIENTE,NOME_CLIENTE,IDADE,DATA_NASC,SEXO,CPF)
  VALUES(12347,'PAULA',25,TO_DATE('24/06/1989','DD,MM,YYYY'),'M',34567299898);
  
INSERT INTO CLIENTE (COD_CLIENTE,NOME_CLIENTE,IDADE,DATA_NASC,SEXO,CPF)
  VALUES(12348,'MIGUEL',54,TO_DATE('27/11/1960','DD,MM,YYYY'),'M',35958679806);
  
  
INSERT INTO PRODUTO (COD_PRODUTO,NOME_PRODUTO)
  VALUES(5555,'CELULAR');

INSERT INTO PRODUTO (COD_PRODUTO,NOME_PRODUTO)
  VALUES(1111,'XBOX360');
  
INSERT INTO PRODUTO (COD_PRODUTO,NOME_PRODUTO)
  VALUES(2222,'SAPATO');
  
INSERT INTO PRODUTO (COD_PRODUTO,NOME_PRODUTO)
  VALUES(3333,'PLAY4');

INSERT INTO PRODUTO (COD_PRODUTO,NOME_PRODUTO)
  VALUES(4444,'MACBOOK');
  
  
INSERT INTO COMPRA(COD_COMPRA,COD_CLIENTE,COD_PRODUTO)
  VALUES(543,12345,5555);
  
INSERT INTO COMPRA(COD_COMPRA,COD_CLIENTE,COD_PRODUTO)
  VALUES(544,12346,1111);
  
INSERT INTO COMPRA(COD_COMPRA,COD_CLIENTE,COD_PRODUTO)
  VALUES(545,12347,4444);

INSERT INTO COMPRA(COD_COMPRA,COD_CLIENTE,COD_PRODUTO)
  VALUES(546,12348,3333);
  
INSERT INTO NOTA_FISCAL(COD_NOTA,COD_COMPRA,CNPJ,NUM_NOTA)
  VALUES(2222,543,1234567,20);
  
INSERT INTO NOTA_FISCAL(COD_NOTA,COD_COMPRA,CNPJ,NUM_NOTA)
  VALUES(2223,544,1234567,21);
  
INSERT INTO NOTA_FISCAL(COD_NOTA,COD_COMPRA,CNPJ,NUM_NOTA)
  VALUES(2224,545,1234567,22);
  
INSERT INTO NOTA_FISCAL(COD_NOTA,COD_COMPRA,CNPJ,NUM_NOTA)
  VALUES(2225,546,1234567,23);
  
COMMIT;

SAVEPOINT;
  
--QUERY ALEATORIAS APENAS PARA TREINO DE DADOS DAS TABELAS, CONSULTAS:

SELECT * FROM CLIENTE;
SELECT * FROM PRODUTO;
SELECT * FROM COMPRA;
SELECT * FROM NOTA_FISCAL;

SELECT NOME_CLIENTE AS CLIENTES FROM CLIENTE
  WHERE COD_CLIENTE = 12345 OR COD_CLIENTE = 12348
  ORDER BY 1 ASC;
  
SELECT NOME_CLIENTE AS CLIENTES FROM CLIENTE
  WHERE NOME_CLIENTE LIKE '_A%';
  
SELECT COUNT(COD_CLIENTE) AS TOTAL_MASCULINO FROM CLIENTE
  WHERE SEXO LIKE 'M';

SELECT COD_PRODUTO ||', '|| NOME_PRODUTO AS OUTPUT_PRODUTOS FROM PRODUTO;

SELECT COD_COMPRA AS CODIGO_DA_COMPRA FROM COMPRA 
  WHERE COD_CLIENTE = 12345;

SELECT COD_NOTA||', '||COD_COMPRA AS DADOS_NOTA FROM NOTA_FISCAL
  WHERE NUM_NOTA BETWEEN 20 AND 22
  ORDER BY 1 DESC;
  
SELECT COD_COMPRA,COD_PRODUTO FROM COMPRA
  WHERE COD_CLIENTE = &COD_CLIENTE;
  
--FUNÇÒES
 SELECT COUNT(*) FROM CLIENTE;
 
 SELECT SUM(IDADE) FROM CLIENTE;
 
 SELECT AVG(IDADE) FROM CLIENTE;
 
 SELECT MIN(DATA_NASC) FROM CLIENTE;
 SELECT MAX(DATA_NASC) FROM CLIENTE;
 
 SELECT VARIANCE(IDADE) FROM CLIENTE;
 
 --CAST
 SELECT CAST(VARIANCE(IDADE) AS NUMBER(4,2)) AS VARIANCIA FROM CLIENTE;
  
SELECT TO_CHAR(COD_CLIENTE,'0999999') FROM CLIENTE;

SELECT TO_CHAR(COD_PRODUTO,'L99999999') FROM PRODUTO;



  



  

  















