desc tab_estoque

CREATE OR REPLACE FUNCTION CONSULTA_ESTOQUE
(V_COD_CD IN TAB_CD.ID_CD%TYPE)
RETURN NUMBER 
IS
 V_QTD NUMBER;
BEGIN
  SELECT qtd_estoque
  INTO V_QTD
  FROM TAB_ESTOQUE
  WHERE ID_CD = V_COD_CD;

  RETURN(V_QTD);
EXCEPTION
WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('O CD INFORMADO NAO EXISTE');
END;
/


SET VERIFY OFF
CL SCRE
ACCEPT P_COD_CD PROMPT 'INFORME O CODIGO DO CD'
VARIABLE G_QTD NUMBER
EXEC :G_QTD := CONSULTA_ESTOQUE(&P_COD_CD);
PRINT G_QTD

SELECT CONSULTA_ESTOQUE(1011) FROM DUAL;