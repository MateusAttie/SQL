SELECT COUNT(*) FROM EMPLOYEES;
SELECT COUNT(*) FROM DEPARTMENTS;
SELECT COUNT(*) FROM JOB_GRADES;
SELECT COUNT(*) FROM LOCATIONS;

DESC LOCATIONS;
DESC DEPARTMENTS;

SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IS NULL;

--NATURAL JOIN
SELECT DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID,CITY
FROM DEPARTMENTS
NATURAL JOIN LOCATIONS;

--JOIN CLAUSULA USING
SELECT EMPLOYEES.EMPLOYEE_ID,EMPLOYEES.LAST_NAME,DEPARTMENTS.LOCATION_ID,DEPARTMENT_ID
FROM EMPLOYEES JOIN DEPARTMENTS
USING(DEPARTMENT_ID);

--JOIN CLAUSULA ON
SELECT E.EMPLOYEE_ID,E.LAST_NAME,E.DEPARTMENT_ID,D.DEPARTMENT_ID,D.LOCATION_ID
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON(E.DEPARTMENT_ID = D.DEPARTMENT_ID);


--AUTO JOIN
SELECT E.LAST_NAME EMP, M.LAST_NAME MGR
FROM EMPLOYEES E JOIN EMPLOYEES M
ON(E.MANAGER_ID = M.EMPLOYEE_ID);

--AUTO JOIN COM ALTERA��O DE CONDI��O
SELECT E.EMPLOYEE_ID,E.LAST_NAME,E.DEPARTMENT_ID,E.DEPARTMENT_ID,E.MANAGER_ID,D.DEPARTMENT_ID,D.LOCATION_ID
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON(E.DEPARTMENT_ID = D.DEPARTMENT_ID)
AND E.MANAGER_ID = 149;

--JOIN TRIDIMENSIONAL
SELECT EMPLOYEE_ID,CITY,DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
JOIN LOCATIONS L
ON D.LOCATION_ID = L.LOCATION_ID;

--NAO EQUI-JOIN
SELECT E.LAST_NAME,E.SALARY,J.GRADE_LEVEL
FROM EMPLOYEES E JOIN JOB_GRADES J
ON E.SALARY BETWEEN J.LOWEST_SAL AND J.HIGHEST_SAL;

--JOIN EXTERNO
SELECT E.LAST_NAME,E.DEPARTMENT_ID,D.DEPARTMENT_NAME
FROM EMPLOYEES E LEFT OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT E.LAST_NAME,E.DEPARTMENT_ID,D.DEPARTMENT_NAME
FROM EMPLOYEES E RIGHT OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;


SELECT E.LAST_NAME,E.DEPARTMENT_ID,D.DEPARTMENT_NAME
FROM EMPLOYEES E FULL OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;


DESC EMPLOYEES;