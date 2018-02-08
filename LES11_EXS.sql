/* 1-- Para uma tabela especificada, crie um script que informe os nomes de colunas, 
os tipos de dados, os tamanhos dos tipos de dados e a permiss�o ou n�o de valores nulos. Solicite o nome da tabela ao usu�rio. 
Forne�a apelidos apropriados �s colunas DATA_PRECISION e DATA_SCALE. Salve esse script no arquivo lab_11_01.sql. */ 

SELECT COLUMN_NAME,DATA_TYPE,DATA_LENGTH,DATA_PRECISION,DATA_SCALE,NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = '&TABLE_NAME';

/*2-- Crie um script que informe o nome da coluna, o nome da constraint, o tipo de constraint, 
a condi��o de pesquisa e o status de uma tabela especificada. Junte as tabelas USER_CONSTRAINTS e USER_CONS_COLUMNS para obter todas essas informa��es. 
Solicite o nome da tabela ao usu�rio. Salve o script no arquivo lab_11_02.sql.*/

DESC USER_CONSTRAINTS;
DESC USER_CONS_COLUMNS;

SELECT UCC.COLUMN_NAME,UCC.CONSTRAINT_NAME,UC.CONSTRAINT_TYPE,UC.SEARCH_CONDITION
FROM USER_CONSTRAINTS UC JOIN USER_CONS_COLUMNS UCC
ON (UC.CONSTRAINT_NAME = UCC.CONSTRAINT_NAME);

/*3 -- 3.	Adicione um coment�rio � tabela DEPARTMENTS. 
Em seguida, consulte a view USER_TAB_COMMENTS para verificar se o coment�rio est� presente.*/

DESC DEPARTMENTS;
COMMENT ON TABLE DEPARTMENTS
IS 'DEPARTMENTS INFORMATION';

SELECT * FROM USER_TAB_COMMENTS
WHERE TABLE_NAME = 'DEPARTMENTS';

/*4--Localize os nomes de todos os sin�nimos existentes no esquema. */
SELECT * FROM USER_SYNONYMS;

/*5 --Voc� precisa determinar os nomes e as defini��es de todas as views do seu esquema. 
Crie um relat�rio que recupere informa��es sobre views: o nome e o texto das views da view de dicion�rio de dados USER_VIEWS. 
Observa��o: J� existe outra view. A view EMP_DETAILS_VIEW foi criada como parte do seu esquema.
Observa��o: Para exibir mais conte�do de uma coluna LONG, use o comando SET LONG n do iSQL*Plus, em que n � o valor do n�mero de caracteres da coluna LONG que voc� deseja exibir.
*/

DESC USER_VIEWS;
SELECT VIEW_NAME,TEXT FROM USER_VIEWS;

/*-6--Obtenha os nomes das suas seq��ncias. 
Crie uma consulta em um script para exibir as seguintes informa��es sobre suas seq��ncias: nome, valor m�ximo, tamanho do incremento e �ltimo n�mero. 
Nomeie o script como lab_11_06.sql. Execute a instru��o no script.
*/

DESC USER_SEQUENCES;
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY,LAST_NUMBER FROM USER_SEQUENCES; 
