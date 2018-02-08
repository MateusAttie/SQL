CREATE TABLE dept AS SELECT * FROM departments;
CREATE PROCEDURE add_dept IS
 dept_id dept.department_id%TYPE;
 dept_name dept.department_name%TYPE;
BEGIN
 dept_id:=280;
 dept_name:='ST-Curriculum';
 INSERT INTO dept(department_id,department_name)
 VALUES(dept_id,dept_name); DBMS_OUTPUT.PUT_LINE(' Inserted '|| SQL%ROWCOUNT ||' row ');
END; 
/



show errors

desc user_errors
SELECT line, position, message_number, text
from user_errors
where name = 'ADD_DEPT'


--backup na mão-
USER_SOURCE

SELECT TEXT
FROM USER_SOURCE
WHERE NAME='ADD_DEPT'


/*
USER_ERRORS
USER_SOURCE
USER_OBJECTS
*/






BEGIN
add_dept;
END;
/
SELECT department_id, department_name FROM dept
WHERE department_id=280;



CREATE FUNCTION check_sal RETURN Boolean IS
 dept_id employees.department_id%TYPE;
 empno   employees.employee_id%TYPE;
 sal     employees.salary%TYPE;
 avg_sal employees.salary%TYPE;
BEGIN
 empno:=205;
 SELECT salary,department_id INTO sal,dept_id 
 FROM employees WHERE employee_id= empno;
 SELECT avg(salary) INTO avg_sal FROM employees 
 WHERE department_id=dept_id;
 IF sal > avg_sal THEN
  RETURN TRUE;
 ELSE
  RETURN FALSE;  
 END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
   RETURN NULL;
END;
/



SET SERVEROUTPUT ON
BEGIN
 IF (check_sal IS NULL) THEN
 DBMS_OUTPUT.PUT_LINE('The function returned  NULL due to exception');
 ELSIF (check_sal) THEN  
 DBMS_OUTPUT.PUT_LINE('Salary > average');
 ELSE
 DBMS_OUTPUT.PUT_LINE('Salary < average');
 END IF;
END;
/
