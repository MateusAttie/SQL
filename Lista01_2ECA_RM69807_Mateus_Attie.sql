/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 1- LISTA 1                                                   */
/*OBJETIVO: DETERMINAR A ESTRUTURA DA TABELA DEPARTMENTS                                               */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
DESC DEPARTMENTS;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 2 - LISTA 1                                                  */
/*OBJETIVO: DETERMINAR A ESTRUTURA DA TABELA EMPLOYEES                                                 */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
DESC EMPLOYEES;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 3 - LISTA 1                                                  */
/*OBJETIVO: CONSULTA PARA SOBRENOME,ID DE CARGO DATA DE ADMISSAO COM O ALIS STARTDATE E ID DE FUNC     */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,JOB_ID,HIRE_DATE AS START_DATE,EMPLOYEE_ID FROM EMPLOYEES

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 4- LISTA 1                                                   */
/*OBJETIVO: CONSULTA PARA TODOS OS ID' DE CARGO  EXCLUSIVOS                                            */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT DISTINCT JOB_ID FROM EMPLOYEES

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 5 - LISTA 1                                                  */
/*OBJETIVO:CONSULTA PARA SOBRENOME,ID DE CARGO DATA DE ADMISSAO E ID DE FUNC COM O ALIAS               */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME AS EMPLOYEE,JOB_ID AS "JOB",HIRE_DATE AS "HIRE DATE",EMPLOYEE_ID AS "EMP #" FROM EMPLOYEES

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 6 - LISTA 1                                                  */
/*OBJETIVO: CONSULTA DE SOBRENOME CONCATENADA JOB_ID CONCATENADA COM ESPAÇO E VIRGULA                  */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME ||', ' ||JOB_ID AS "EMPLOYEE AND TITLE" FROM EMPLOYEES

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 7 - LISTA 1                                                  */
/*OBJETIVO: CONSULTA DE TODOS OS DADOS DA TABELA EMPLOYEES SEPARADOS POR VIRGULA E ESPACO              */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT EMPLOYEE_ID || ', ' ||
FIRST_NAME ||', ' || 
LAST_NAME ||', ' ||
EMAIL ||', ' ||
PHONE_NUMBER ||', ' ||
HIRE_DATE ||', ' ||
JOB_ID ||', ' ||
SALARY ||', ' ||
COMMISSION_PCT ||', ' ||
MANAGER_ID||', ' || 
DEPARTMENT_ID 
AS THE_OUTPUT
FROM EMPLOYEES;

