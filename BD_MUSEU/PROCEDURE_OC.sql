--Insere em Outras_cole寤es
CREATE OR REPLACE PROCEDURE ADD_OC(
OC_CD_OBJ       OUTRAS_COLE합ES.COD_OBJETO_ARTE%TYPE,
OC_ID           OUTRAS_COLE합ES.COD_COLE플O%TYPE,
OC_NOME         OUTRAS_COLE합ES.NOME%TYPE,
OC_TIPO         OUTRAS_COLE합ES.TIPO%TYPE,
OC_DESC         OUTRAS_COLE합ES.DESCRI플O%TYPE,
OC_END          OUTRAS_COLE합ES.ENDERE�O%TYPE,
OC_TEL          OUTRAS_COLE합ES.TELEFONE%TYPE
) IS

BEGIN

INSERT INTO OUTRAS_COLE합ES
VALUES((SELECT COD_OBJETO_ARTE FROM OBJETOS_ARTE WHERE  COD_OBJETO_ARTE = OC_CD_OBJ),OC_ID,OC_NOME,OC_TIPO,
OC_DESC,OC_END,OC_TEL);

END;
/

ALTER TABLE OUTRAS_COLE횉횛ES MODIFY TELEFONE NUMBER(9);

EXEC ADD_OC(1,1,'PICASSO','PINTURA','TINTA OLEO','AV BRASIL',994565345);
