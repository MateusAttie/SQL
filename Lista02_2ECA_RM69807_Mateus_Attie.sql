/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 1 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DO SOBRENOME E SALARIO DOS QUE RECEBEM MAIS DE 12000                              */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY > 12000;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 2 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE ID DO DEPARTAMENTO PARA O FUNCONARIO DE ID 176                                 */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,DEPARTMENT_ID FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 3 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS COM SALARIO < 5000 OU > 12000                            */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME , SALARY FROM EMPLOYEES
WHERE SALARY < 5000 OR SALARY > 12000;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 4 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE JOB ID E HIRE DATE DE TODOS COM SOBRENOME MATOS E TAYLOR                       */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,JOB_ID,HIRE_DATE FROM EMPLOYEES
WHERE LAST_NAME LIKE '%Matos%' OR LAST_NAME LIKE '%Taylor%'
ORDER BY 3 ASC;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 5 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS DOS DPTOS 20 E 50                                        */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME , DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID = 20 OR DEPARTMENT_ID = 50
ORDER BY 1 ASC;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 6 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA TODOS OS FUNCIONARIOS COM SALARIO ENTRE 5000 E 12000 E COM DPTO_ID = 20 OU 50      */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME AS EMPLOYEE , SALARY AS MONTHLY_SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 12000 AND DEPARTMENT_ID = 20 OR DEPARTMENT_ID = 50; 

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 7 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS CONTRATADOS EM 1994                                      */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,HIRE_DATE FROM EMPLOYEES 
WHERE HIRE_DATE BETWEEN TO_DATE('01/01/1994','DD/MM/YYYY') AND TO_DATE('31/12/1994','DD/MM/YYYY');

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 8 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS QUE NAO POSSUEM UM GERENTE                               */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,JOB_ID FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 9 - LISTA 2                                                  */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS COM COMISSAO , ORDENANDO POR SALARIO E COMISSAO DESC     */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,SALARY,TO_CHAR(COMMISSION_PCT,'9.99') FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY 2,3 DESC;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 10 - LISTA 2                                                 */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS QUE RECEBEM MAIS DO QUE UM VALOR ESPECIFICADO PELO USER  */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY > &SALARY;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 11 - LISTA 2                                                 */
/*OBJETIVO: CONSULTA DE TODOS OSFUNCIONARIOS E SEU SALARIOS E DEPARTAMENTO DE UM GERENTE A PARTIR DO USER */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID FROM EMPLOYEES
WHERE MANAGER_ID = &MANAGER_ID

manager_id = 103, sorted by last_name
manager_id = 201, sorted by salary
manager_id = 124, sorted by employee_id

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 12 - LISTA 2                                                 */
/*OBJETIVO: CONSULTA DE TODOS OS SOBRENOMES CUJA A TERCEIRA LETRA DO NOME SEJA A                       */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__a%';

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 13 - LISTA 2                                                 */
/*OBJETIVO: CONSULTA DE TODOS OS SOBRENOMES QUE CONTEM TANTO 'A' QUANTO 'E'                            */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE '%A%' OR LAST_NAME LIKE '%E%';

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 14 - LISTA 2                                                 */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS QUE SAO REPRESENTANTES DE VENDAS OU AUX DE ESTOQUE,      */ 
/* E O SALARIO != 2500,3500 OU 7000                                                                    */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,JOB_ID,SALARY FROM EMPLOYEES
WHERE JOB_ID LIKE 'ST_MAN' OR JOB_ID LIKE 'SA_REP' AND  SALARY != 2500 AND SALARY != 3500 AND SALARY!= 7000;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 15 - LISTA 2                                                 */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS QUE SAO REPRESENTANTES DE VENDAS OU AUX DE ESTOQUE,      */ 
/* E O SALARIO != 2500,3500 OU 7000                                                                    */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA��O: 19/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME AS EMPLOYEE , SALARY AS MONTHLY_SALARY,TO_CHAR(COMMISSION_PCT,'9.99') AS COMMISSION FROM EMPLOYEES
WHERE COMMISSION_PCT = 0.20;


























