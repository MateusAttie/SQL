CREATE OR REPLACE PROCEDURE ADD_EXPOSICOES(
EXPID  EXPOSICOES.COD_EXP%TYPE,
EXPNOME EXPOSICOES.NOME_EXP%TYPE,
EXPDATA_INICIO EXPOSICOES.DATA_INICIO%TYPE,
EXPDATA_FIM EXPOSICOES.DATA_FIM%TYPE) 
IS

BEGIN

INSERT INTO EXPOSICOES
VALUES(EXPID,EXPNOME,EXPDATA_INICIO,EXPDATA_FIM);

END;
/

EXEC ADD_EXPOSICOES(1,'ARTE_MALDITA',TO_DATE('12/10/1950','DD/MM/YYYY'),TO_DATE('12/10/1960','DD/MM/YYYY'));

SELECT * FROM EXPOSICOES;