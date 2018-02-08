--Insere em Estatuaria
CREATE OR REPLACE PROCEDURE ADD_ESTATUARIA(
  cod_est ESTATUARIA.COD_ESTATUARIA%type,
  material_est estatuaria.material%type,
  altura_est estatuaria.altura%type,
  peso_est estatuaria.peso%type,
  estilo_est estatuaria.estilo%type)
  IS
  
  BEGIN
  INSERT INTO ESTATUARIA
  VALUES(cod_est,material_est,altura_est,peso_est,estilo_est);
  END;
  /
  
  
  EXEC ADD_ESTATUARIA(2,'papel sulfite', 0.00005, 0.00001,'cachorro');
  DESC ESTATUARIA;
  
  SELECT * FROM ESTATUARIA;