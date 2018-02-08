/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 1- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EXIBINDO ID DE LOCAL,ENDERECO,CIDADE,ESTADO,PAIS,E ID DO PAIS                     */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LOC.LOCATION_ID,LOC.STREET_ADDRESS,LOC.CITY,LOC.STATE_PROVINCE,CON.COUNTRY_NAME,CON.COUNTRY_ID
FROM LOCATIONS LOC, COUNTRIES CON
WHERE LOC.COUNTRY_ID = CON.COUNTRY_ID
ORDER BY LOC.LOCATION_ID;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 2- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EXIBINDO SOBRENOME, ID DO DEPTO E NOME DO DEPTO                                   */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT E.LAST_NAME,E.DEPARTMENT_ID,D.DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON  E.DEPARTMENT_ID=D.DEPARTMENT_ID
ORDER BY E.LAST_NAME;



/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 3- LISTA 6                                                   */
/*OBJETIVO: CONSULTA RELATORIO DOS FUNCIONARIOS DE TORONTO                                             */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT E.LAST_NAME,E.JOB_ID,D.DEPARTMENT_ID,D.DEPARTMENT_NAME,L.CITY
FROM EMPLOYEES E,DEPARTMENTS D,LOCATIONS L
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID AND
      D.LOCATION_ID = L.LOCATION_ID AND
      L.CITY = 'Toronto'
ORDER BY E.LAST_NAME;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 4- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EXIBINDO SOBRENOME ID DE FUNCIONARIO ID DE GERENTE E SOBRENOME DO GERENTE         */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT E.LAST_NAME,E.EMPLOYEE_ID AS EMP#,M.MANAGER_ID AS MGR# ,M.LAST_NAME
FROM EMPLOYEES E , EMPLOYEES M
WHERE E.MANAGER_ID = M.EMPLOYEE_ID
ORDER BY E.EMPLOYEE_ID;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 5- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EXIBINDO SOBRENOME ID DE FUNCIONARIO ID DE GERENTE E SOBRENOME DO GERENTE         */ 
/* MESMO DE QUEM NAO TEM GERENTE                                                                       */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT E.LAST_NAME,E.EMPLOYEE_ID AS EMP#,M.MANAGER_ID AS MGR# ,M.LAST_NAME
FROM EMPLOYEES E LEFT OUTER JOIN EMPLOYEES M
ON E.MANAGER_ID = M.EMPLOYEE_ID
ORDER BY E.EMPLOYEE_ID;


/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 6- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EXIBINDO SOBRENOME E FUNCIONARIOS QUE TRABALHAM NO MESMO DPTO                     */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT  E.LAST_NAME "SOBRENOME", E.DEPARTMENT_ID "DPTO", 
        ED.LAST_NAME "Func. trabalha no mesmo DP"
  FROM EMPLOYEES E , EMPLOYEES ED
  WHERE E.DEPARTMENT_ID = ED.DEPARTMENT_ID
  AND E.LAST_NAME = 'Baida';

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 7- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EXIBINDO OS GRAUS E SALARIOS DE CARGO                                             */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
DESC JOB_GRADES
SELECT E.LAST_NAME,E.JOB_ID,E.SALARY,G.GRADE_LEVEL
FROM EMPLOYEES E, JOB_GRADES G
WHERE E.SALARY BETWEEN G.LOWEST_SAL AND G.HIGHEST_SAL
ORDER BY E.SALARY;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 8- LISTA 6                                                   */
/*OBJETIVO: CONSULTA EDE TODOS OS FUNCIONARIOS CONTRATADOS APOS DAVIES                                 */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME,HIRE_DATE FROM EMPLOYEES
WHERE HIRE_DATE > (SELECT HIRE_DATE FROM EMPLOYEES WHERE LAST_NAME = 'DAVIES');

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 9- LISTA 6                                                   */
/*OBJETIVO: CONSULTA DE TODOS OS FUNCIONARIOS E SUAS DATA DE ADMISSAPO JUNTO COM OS GERENTES ONDE      */ 
/* AS DATAS DOS FUNCIONARIOS SAO MENORES DO QUE AS DOS GERENTES                                        */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT E.LAST_NAME AS FUNCIONARIO,E.HIRE_DATE AS "DATA DE ADMISSAO",G.LAST_NAME AS GERENTE,G.HIRE_DATE AS "ADMISSAO GERENTE"
FROM EMPLOYEES E, EMPLOYEES G
 WHERE E.MANAGER_ID = G.EMPLOYEES_ID AND E.HIRE_DATE < G.HIRE_DATE
ORDER BY E.HIRE_DATE;
















