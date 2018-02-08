SET VERIFY OFF
DEFINE p_sal = 6000
DECLARE
  v_ename employees.last_name%TYPE;
  v_emp_sal   employees.salary%TYPE := &p_sal;
BEGIN
  SELECT last_name INTO v_name FROM employees
  WHERE salary = v_emp_sal;
  
  INSERT INTO messages
  values(v_ename || '-' || v_emp_sal);
  
EXCEPTION
WHEN NO_DATA_FOUND THEN
  INSERT INTO  messages
  VALUES('No employees with a salary of' || TO_CHAR(v_emp_sal));
WHEN TOO_MANY_ROWS THEN
  INSERT INTO messages
  VALUES('More then one employee with a salary of' || TO_CHAR(v_emp_sal));
WHEN OTHERS THEN
  INSERT INTO messages
  VALUES('Some other error ocurred');
END;
/

--exs2
SET SERVEROUTPUT ON
DECLARE
  childrecord_exists EXCEPTION;
  PRAGMA EXCEPTION_INIT(childrecord_exists,-02292);

BEGIN
  DBMS_OUTPUT.PUT_LINE(' Deleting Department............');
  DELETE FROM departments where department_id = 1234;
EXCEPTION
  WHEN  CHILDRECORD_EXISTS THEN
  DBMS_OUTPUT.PUT_LINE(' CANNOT DELETE THIS DEPARTMENT. THERE ARE NO EMPLOYEES');
END;
/

--exs 3