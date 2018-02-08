/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 1- LISTA 4                                                   */
/*OBJETIVO: CONSULTA CONCATENANDO O SOBRENOME , O SALARIO , E O SALARIO X3 COM O ALIAS DREAM SALARIES  */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME ||' RECEBE ' ||SALARY  ||' MENSALMENTE ,MAS DESEJA RECEBER ' ||SALARY*3 AS "DREAM SALARIES"
FROM EMPLOYEES;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 2- LISTA 4                                                   */
/*OBJETIVO: CONSULTA DE SOBRENOME , DATA DE EMISAAO E DATA DE REVISAO DO SALARIO , PRIMEIRA SEGUNDA    */ 
/* APOS SEIS MESES DE SERVIÇO                                                                          */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME||', '||HIRE_DATE||', '||NEXT_DAY(ADD_MONTHS(HIRE_DATE,6),'SEGUNDA') AS REVIEW FROM EMPLOYEES;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 3- LISTA 4                                                   */
/*OBJETIVO: CONSULTA CONCATENANDO O SOBRENOME , DATA DE ADMISSAO E O PRIMEIRO DIA DE TRABALHO COM ALIAS*/ 
/*  ORDENANDO POR DIA DA SEMANA , COMEÃÇANDO PELA SEGUNDA                                               */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT EMPLOYEES.LAST_NAME AS "LAST NAME", EMPLOYEES.HIRE_DATE AS "HIRE DATE",JOB_HISTORY.START_DATE AS "START DATE",
TO_CHAR(JOB_HISTORY.START_DATE,'DAY') AS "DAY"
FROM EMPLOYEES JOIN JOB_HISTORY
USING(EMPLOYEE_ID)
ORDER BY TO_CHAR(JOB_HISTORY.START_DATE,'D')  ASC;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 4- LISTA 4                                                   */
/*OBJETIVO: CONSULTA MOSTRANDO A COMISSAO DE CADA FUNCIONARIO , E MOSTRAR NO COMISSION PARA QUEM NAO TEM*/ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT LAST_NAME||'  '||
      CASE
      WHEN COMMISSION_PCT IS NULL THEN 'NO COMMISSION'
      ELSE TO_CHAR(COMMISSION_PCT,'999.99')
      END
      AS COMM
FROM EMPLOYEES;

--USANDO O NVL

SELECT LAST_NAME||' '||NVL(TO_CHAR(COMMISSION_PCT,'999.99'),'NO COMISSION') AS COMM FROM EMPLOYEES;

/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 5- LISTA 4                                                   */
/*OBJETIVO: CONSULTA DE JOB_ID MOSTRANDO O NIVEL DE ACORDO COM O CARGO UTILIZANDO A FUNÇÃO DECODE      */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT JOB_ID,
DECODE(JOB_ID,'AD_PRES','A','ST_MAN','B','IT_PROG','C','SA_REP','D','ST_CLERK','R','0')
RESULT FROM EMPLOYEES;


/*-----------------------------------------------------------------------------------------------------*/
/*                              EXERCICIO 6- LISTA 4                                                   */
/*OBJETIVO: CONSULTA DE JOB_ID MOSTRANDO O NIVEL DE ACORDO COM O CARGO UTILIZANDO CASE                 */ 
/*                                                                                                     */
/*AUTOR: MATEUS INGEGNERI ATTIE                                                                        */
/*DATA DA CRIAÇÃO: 29/09/2014                                                                          */
/*-----------------------------------------------------------------------------------------------------*/
SELECT JOB_ID,
  CASE 
    WHEN JOB_ID = 'AD_PRES' THEN 'A'
    WHEN JOB_ID ='ST_MAN' THEN 'B'
    WHEN JOB_ID ='IT_PROG'THEN 'C'
    WHEN JOB_ID = 'SA_REP' THEN 'D'
    WHEN JOB_ID ='ST_CLERK' THEN 'R'
    ELSE '0'
    END
    AS NIVEL
FROM EMPLOYEES;










