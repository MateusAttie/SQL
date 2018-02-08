/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 1- LISTA 5                                                   */
/*OBJETIVO: CONSULTA VALOR MAX , MIN , SOMATORIA E MEDIA DOS SALARIOS DA TABELA EMPLOYEES              */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS "MINIMUM", 
       SUM(SALARY) AS "SUM",CAST(AVG(SALARY) AS NUMBER(8,2)) AS AVERAGE FROM EMPLOYEES; 
       
/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 2- LISTA 5                                                   */
/*OBJETIVO: CONSULTA FUNCIONARIOS COM O MESMO CARGO                                                    */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT COUNT(EMPLOYEE_ID) AS "FUNCIONARIOS COM O MESMO CARGO",JOB_ID FROM EMPLOYEES
WHERE JOB_ID IS NOT NULL
GROUP BY JOB_ID;



/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 3- LISTA 5                                                   */
/*OBJETIVO: CONSULTA PARA QUE O USUARIO DO DPTO RH DIGITE O CARGO PARA PESQUISAR                       */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT COUNT(EMPLOYEE_ID) AS "FUNCIONARIOS COM O MESMO CARGO",JOB_ID FROM EMPLOYEES
WHERE JOB_ID = '&JOB_ID'
GROUP BY JOB_ID;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 4- LISTA 5                                                   */
/*OBJETIVO: CONSULTA NUMERTO TOTAL DE GERENTES                                                         */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT COUNT(DISTINCT MANAGER_ID) AS "NUMBER OF MANAGERS" FROM EMPLOYEES;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 5- LISTA 5                                                   */
/*OBJETIVO: CONSULTA DIFERENCA ENTRE O SALARIO MAX E O MINIMO                                          */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT (MAX(SALARY)- MIN(SALARY)) AS "DIFFERENCE" FROM EMPLOYEES;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 6- LISTA 5                                                   */
/*OBJETIVO: CONSULTA DE GERENTE E O MENOR SALARIO DO FUNCIONARIO QUE TRABALHE PARA ELE SENDO           */ 
/* MAIOR QUE 6000 E NAO NULO                                                                           */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT MANAGER_ID, MIN(SALARY) FROM EMPLOYEES
WHERE MANAGER_ID IS NOT NULL AND SALARY > 6000
GROUP BY MANAGER_ID
ORDER BY MIN(SALARY) DESC;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 7- LISTA 5                                                   */
/*OBJETIVO: CONSULTAS TOTAL DE FUNCIONARIOS E TOTAL CONTRATADOS ENTRE 1995 E 1998                      */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT COUNT(*) "TOTAL FUNCIONARIOS" FROM EMPLOYEES;
SELECT COUNT(*) AS "FUNCIONARIOS ENTRE 1995 E 1998" FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN TO_DATE('01/01/1995','DD/MM/YYYY') AND TO_DATE('31/12/1998','DD/MM/YYYY');


/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 8- LISTA 5                                                   */
/*OBJETIVO: CONSULTAS DE CARGO,E SALARIO DE ACORDO COM O DEPARTAMENTO                                  */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIA플O: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT JOB_ID,SALARY,DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY JOB_ID,SALARY,DEPARTMENT_ID;




