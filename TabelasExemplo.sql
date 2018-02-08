--DROP TABLE PESSOA;
CREATE TABLE PESSOA (
cod_pessoa NUMBER(5) NOT NULL,
nome_pessoa VARCHAR2(60) NOT NULL
);

--DROP TABELA PESSOA_FISICA
CREATE TABLE PESSOA_FISICA (
cod_pessoa NUMBER(5) NOT NULL,
RG CHAR(11) NOT NULL,
CPF CHAR(11)NOT NULL,
dt_nascimento DATE,
sexo CHAR(1) NOT NULL
);

--DROP TABELA PESSOA_JURIDICA
CREATE TABLE PESSOA_JURIDICA (
cod_pessoa NUMBER(5) NOT NULL,
CNPJ CHAR(18) NOT NULL,
INSC_EST CHAR(15) NOT NULL,
ramo_atividade VARCHAR(30) NOT NULL
);

--CHAVES PRIMARIAS
ALTER TABLE PESSOA
  ADD CONSTRAINT PESSOA_PK PRIMARY KEY (cod_pessoa);
  
ALTER TABLE PESSOA_FISICA
  ADD CONSTRAINT PESSOA_FISICA_PK PRIMARY KEY (cod_pessoa);
  
ALTER TABLE PESSOA_JURIDICA
  ADD CONSTRAINT PESSOA_JURIDICA_PK PRIMARY KEY (cod_pessoa);
  
--CHAVES ESTRANGEIRAS
ALTER TABLE PESSOA_FISICA
  ADD(FOREIGN KEY (cod_pessoa)
      REFERENCES PESSOA(cod_pessoa));
      
ALTER TABLE PESSOA_JURIDICA
  ADD(FOREIGN KEY (cod_pessoa)
      REFERENCES PESSOA(cod_pessoa));
                            