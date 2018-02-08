create table aluno_5 (rm int);

begin
for i in 1..10000 loop
  insert into aluno_5
  values(i);
end loop;
end;



--exemplo 1
DECLARE 
f_name VARCHAR(20);

BEGIN
SELECT first_name INTO f_name FROM employees
WHERE employee_id = 100;
END;



--exemplo 2
--package

desc dbms_output;

--seta o server para comunicação
SET serveroutput on

DECLARE
f_name VARCHAR(20);
BEGIN
SELECT first_name INTO f_name FROM employees WHERE
employee_id=100;
DBMS_OUTPUT.PUT_LINE('The first name of the employees is: '|| f_name);
END;



--EXERCICIOS
set serveroutput on
BEGIN
DBMS_OUTPUT.PUT_LINE('Hello World');
END;



