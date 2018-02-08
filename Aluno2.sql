ALTER SESSION SET NLS_LANGUAGE='BRAZILIAN PORTUGUESE';
ALTER SESSION SET NLS_TERRITORY=BRAZIL;


CREATE TABLE ALUNO(
rm NUMBER(5) NOT NULL,
nm_aluno VARCHAR2(30) NOT NULL,
idade NUMBER(2) NOT NULL,
sobrenome VARCHAR2(30)
);


ALTER TABLE ALUNO
  ADD CONSTRAINT ALUNO_PK PRIMARY KEY (rm);
  


DESC ALUNO


INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (69807,'GUGU',18);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (89807,'Marcela',19);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (9900,'GUGU',20);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (9990,'Jamal',18);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (9790,'MARCINHA',76);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (9690,'MAURA',69);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (6790,'JOAO',15);
  
INSERT INTO ALUNO (rm,nm_aluno,idade)
  VALUES (9799,'JAIME',40);
  
COMMIT;

--TIPOS DE SELECTS 

SELECT * FROM ALUNO;

SELECT rm,nm_aluno,sobrenome,idade FROM ALUNO;

SELECT rm,nm_aluno,idade FROM ALUNO
WHERE rm = &rm

SELECT rm,nm_aluno,idade FROM ALUNO--trabalha as duas condicoes,e depois o or se estiverem seguidos
WHERE idade > 18 AND rm = 9790 

SELECT rm,nm_aluno,idade FROM ALUNO--trabalha o or primeiro e depois o and se tiverem seguidos
WHERE idade <= 18 OR rm = 9990

UPDATE ALUNO SET idade = 25
WHERE nm_aluno LIKE 'Jam%';
COMMIT;

UPDATE ALUNO SET IDADE = 23
WHERE NM_ALUNO LIKE '_A%';
COMMIT;

SELECT  rm,nm_aluno,idade FROM ALUNO
WHERE idade BETWEEN 15 AND 40;


SELECT  rm,nm_aluno,idade FROM ALUNO
WHERE nm_aluno LIKE 'J%';

SELECT  rm,nm_aluno,idade FROM ALUNO
WHERE nm_aluno LIKE '_A%';

SELECT  rm,nm_aluno,idade FROM ALUNO
WHERE nm_aluno LIKE '%J%' OR nm_aluno LIKE '%M%';

SELECT rm,nm_aluno,sobrenome,idade FROM ALUNO--rm = 1,nome = 2,sobrenome = 3,idade = 4
  WHERE idade BETWEEN 18 AND 25
  ORDER BY 4 desc
  
SELECT rm,nm_aluno,sobrenome,idade FROM ALUNO--rm = 1,nome = 2,sobrenome = 3,idade = 4
  WHERE nm_aluno LIKE '_A%'
  ORDER BY 1 ASC

SELECT DISTINCT nm_aluno "NAME" FROM ALUNO; --ALIAS

SAVEPOINT;

--FUN��ES

SELECT COUNT(*) FROM ALUNO;

SELECT COUNT (DISTINCT IDADE) FROM ALUNO;

SELECT SUM(IDADE) FROM ALUNO;

SELECT AVG(IDADE) FROM ALUNO;

SELECT MIN(IDADE) FROM ALUNO;
SELECT MAX(IDADE) FROM ALUNO;

SELECT VARIANCE(IDADE) FROM ALUNO;

SELECT NOME,SUM(IDADE) FROM ALUNO

--CAST

SELECT CAST(VARIANCE(IDADE) AS NUMBER(4,2)) AS VARIANCIA FROM ALUNO;

SELECT TO_CHAR(RM,'099999999') FROM ALUNO;

SELECT TO_CHAR(RM,'L99999') FROM ALUNO;--L MOEDA DO PAIS QUE VARIA COM O NLS_TERRITORY













--SCRIPT
@CAMINHO