--variable scope
<<outer>>
DECLARE
  sal      NUMBER(7,2) := 60000;
  comm     NUMBER(7,2) := sal * 0.20;
  message  VARCHAR2(255) := ' eligible for commission';
BEGIN 
  DECLARE
    	sal	    NUMBER(7,2) := 50000;
    	comm  	    NUMBER(7,2) := 0;
    	total_comp  NUMBER(7,2) := sal + comm;
  BEGIN 
    	message := 'CLERK not'||message;
    	outer.comm := sal * 0.30; 
  END;
 message := 'SALESMAN'||message;

END;
/
