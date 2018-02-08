/*----------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 1 - LISTA 3                                           */
/*OBJETIVO: RETORNA OS ID'S DE DEPARTAMENTO DIFERENTES DE 1, CONSULTA PARA DATA ATUAL DO SISTEMA*/
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                 */
/*DATA DA CRIA��O: 19/09/2014                                                                   */
/*----------------------------------------------------------------------------------------------*/

SELECT DEPARTMENT_ID,SYSDATE AS "DATE" FROM DEPARTMENTS
WHERE DEPARTMENT_ID != 1;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 2 - LISTA 3                                                  */
/*OBJETIVO: RELATORIO MOSTRANDO OS ID'S DE FUNCIONARIOS, SOBRENOME , SALARIO E SALARIO ACRESCIDO DE 15%*/
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT EMPLOYEE_ID||','||LAST_NAME||','||SALARY||',' ||SALARY*1.15 AS "NEW SALARY" FROM EMPLOYEES

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 3 - LISTA 3                                                  */
/*OBJETIVO: CONSULTA COM TODOS OS SOBRENOMES DE FUNCIONARIOS ONDE OS NOMES COMECEM COM A , J , OU M    */ 
/*COM A PRIMEIRA LETRA MAIUSCULA E O RESTO MINUSCULO E O TAMANHO DOS SOBRENOMES                        */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT INITCAP(LAST_NAME)AS"SOBRENOME",LENGTH(LAST_NAME)AS"TAMANHO" FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%' OR FIRST_NAME LIKE 'J%' OR FIRST_NAME LIKE'M%'
ORDER BY 1 ASC

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 4 - LISTA 3                                                  */
/*OBJETIVO: USUARIO DIGITA A PRIMEIRA LETRA DO SOBRENOME E APARECEM TODOS OS SOBRENOMESQUE COMEÇAM     */ 
/*COM A LETRA DIGITADA                                                                                 */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE '&LAST_NAME%';

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 5 - LISTA 3                                                  */
/*OBJETIVO: CONSULTA IGUAL AO EXERCICIO 4 POREM SEM DIFERENCIAÇAO DE MAIUSCULAS , MINUSCULAS           */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE UPPER('&LAST_NAME%');

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 6 - LISTA 3                                                  */
/*OBJETIVO: CONSULTA PARA EXIBIR SOBRENOME E SALARIO FORMATADO EM 15 CARACTERES MAIS O CARACTERE $     */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT LAST_NAME ||','||TO_CHAR(SALARY,'L9999999999999.99') AS SALARY FROM EMPLOYEES

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 7 - LISTA 3                                                  */
/*OBJETIVO: CONSULT IMPRIMINDO OS PRIMEIROS OITO CARACTERES DO SOBRENOME E O SALARIO EM ASTERISCOS     */ 
/*  CADA ASTERISCO VALE MIL REAIS , ORDEM DECRESCENTE                                                  */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT RPAD(SUBSTR(LAST_NAME,1,8)||',',9+(SALARY/1000),'*') AS EMPLOYEES_AND_THEIR_SALARIES FROM EMPLOYEES
ORDER BY 1 DESC

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 8 - LISTA 3                                                  */
/*OBJETIVO:CONSULTA COM SOBRENOME E NUMERO DE SEMANAS DO FUNCIONARIO TRUNCADO EM 0, ORDEM DECRESCENTE  */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/

SELECT LAST_NAME AS SOBRENOME , TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)*4,0) AS"TENURE" FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90
ORDER BY 2 DESC


