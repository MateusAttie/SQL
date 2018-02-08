CREATE OR REPLACE PROCEDURE ADD_PINTURA(
PINTURAID       PINTURA.COD_PINTURA%TYPE,
TINTA_PINTURA   PINTURA.TIPO_TINTA%TYPE,
SUP_PINTURA     PINTURA.SUPORTE%TYPE,
EST_PINTURA     PINTURA.ESTILO%TYPE
) IS

BEGIN

INSERT INTO PINTURA
VALUES(PINTURAID,TINTA_PINTURA,SUP_PINTURA,EST_PINTURA);


END;
/

EXEC ADD_PINTURA(1,'ÓLEO','CAVALETE','MODERNISMO');

SELECT * FROM PINTURA;