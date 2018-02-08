/* 1-- Para uma tabela especificada, crie um script que informe os nomes de colunas, 
os tipos de dados, os tamanhos dos tipos de dados e a permissão ou não de valores nulos. Solicite o nome da tabela ao usuário. 
Forneça apelidos apropriados às colunas DATA_PRECISION e DATA_SCALE. Salve esse script no arquivo lab_11_01.sql. */ 

SELECT COLUMN_NAME,DATA_TYPE,DATA_LENGTH,DATA_PRECISION,DATA_SCALE,NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = '&TABLE_NAME';

/*2-- Crie um script que informe o nome da coluna, o nome da constraint, o tipo de constraint, 
a condição de pesquisa e o status de uma tabela especificada. Junte as tabelas USER_CONSTRAINTS e USER_CONS_COLUMNS para obter todas essas informações. 
Solicite o nome da tabela ao usuário. Salve o script no arquivo lab_11_02.sql.*/

DESC USER_CONSTRAINTS;
DESC USER_CONS_COLUMNS;

SELECT UCC.COLUMN_NAME,UCC.CONSTRAINT_NAME,UC.CONSTRAINT_TYPE,UC.SEARCH_CONDITION
FROM USER_CONSTRAINTS UC JOIN USER_CONS_COLUMNS UCC
ON (UC.CONSTRAINT_NAME = UCC.CONSTRAINT_NAME);

/*3 -- 3.	Adicione um comentário à tabela DEPARTMENTS. 
Em seguida, consulte a view USER_TAB_COMMENTS para verificar se o comentário está presente.*/

DESC DEPARTMENTS;
COMMENT ON TABLE DEPARTMENTS
IS 'DEPARTMENTS INFORMATION';

SELECT * FROM USER_TAB_COMMENTS
WHERE TABLE_NAME = 'DEPARTMENTS';

/*4--Localize os nomes de todos os sinônimos existentes no esquema. */
SELECT * FROM USER_SYNONYMS;

/*5 --Você precisa determinar os nomes e as definições de todas as views do seu esquema. 
Crie um relatório que recupere informações sobre views: o nome e o texto das views da view de dicionário de dados USER_VIEWS. 
Observação: Já existe outra view. A view EMP_DETAILS_VIEW foi criada como parte do seu esquema.
Observação: Para exibir mais conteúdo de uma coluna LONG, use o comando SET LONG n do iSQL*Plus, em que n é o valor do número de caracteres da coluna LONG que você deseja exibir.
*/

DESC USER_VIEWS;
SELECT VIEW_NAME,TEXT FROM USER_VIEWS;

/*-6--Obtenha os nomes das suas seqüências. 
Crie uma consulta em um script para exibir as seguintes informações sobre suas seqüências: nome, valor máximo, tamanho do incremento e último número. 
Nomeie o script como lab_11_06.sql. Execute a instrução no script.
*/

DESC USER_SEQUENCES;
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY,LAST_NUMBER FROM USER_SEQUENCES; 
