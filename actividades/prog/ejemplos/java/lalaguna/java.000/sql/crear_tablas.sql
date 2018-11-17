/*
   Versi�n: DVR-20041013
   Tablas:  LOG_AVISOS, 
            YEC_ATOMO, 
            YEC_LISTA,
            YEC_SUBLISTA, 
            YEC_ESTRUCTURA
*/

/*---------------------------------------------------*/

DROP TABLE LOG_AVISOS;

CREATE TABLE LOG_AVISOS 
(
    FECHA           TIMESTAMP     ,
    TIPO            VARCHAR(3)    NOT NULL DEFAULT 'LOG', --LOG,WRN,ERR,INF
    PRIORIDAD       INTEGER       NOT NULL DEFAULT 10,
    MODULO          VARCHAR(20)   ,
    ASUNTO          VARCHAR(20)   ,
    DESCRIPCION     VARCHAR(255)  
);
    

/*---------------------------------------------------*/
DROP TABLE YEC_ATOMO;

CREATE TABLE YEC_ATOMO
(
    COD_ATOMO       INTEGER      PRIMARY KEY,
    DES_ATOMO       VARCHAR(100) NOT NULL,
    DESCRIPCION     VARCHAR(250) NOT NULL,
    FECHA           TIMESTAMP    ,
    USUARIO         VARCHAR(10)  NOT NULL
);


CREATE INDEX YEC_ATOMO_IN01 ON YEC_ATOMO (DES_ATOMO);
CREATE INDEX YEC_ATOMO_IN02 ON YEC_ATOMO (FECHA);
CREATE INDEX YEC_ATOMO_IN03 ON YEC_ATOMO (USUARIO);


/*---------------------------------------------------*/
/*DROP TABLE PRI_NUMERO;

CREATE TABLE PRI_NUMERO
(
    NUMERO          INTEGER     NOT NULL PRIMARY KEY,
    CONTADOR_P      INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_PC     INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_PR     INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_B      INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_BC     INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_BR     INTEGER     NOT NULL DEFAULT 0
);


CREATE INDEX PRI_NUMERO_IN01 ON PRI_NUMERO (CONTADOR_P);
CREATE INDEX PRI_NUMERO_IN02 ON PRI_NUMERO (CONTADOR_B);
*/
/*---------------------------------------------------*/
/*DROP TABLE PRI_PAREJA;

CREATE TABLE PRI_PAREJA
(
    NUMERO1         INTEGER     NOT NULL,
    NUMERO2         INTEGER     NOT NULL,
    CONTADOR_P      INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_PC1    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_PC2    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_PR1    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_PR2    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_B      INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_BC1    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_BC2    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_BR1    INTEGER     NOT NULL DEFAULT 0,
    CONTADOR_BR2    INTEGER     NOT NULL DEFAULT 0
);


CREATE INDEX PRI_PAREJA_IN01 ON PRI_PAREJA (NUMERO1);
CREATE INDEX PRI_PAREJA_IN02 ON PRI_PAREJA (NUMERO2);
CREATE INDEX PRI_PAREJA_IN03 ON PRI_PAREJA (CONTADOR_P);
CREATE INDEX PRI_PAREJA_IN04 ON PRI_PAREJA (CONTADOR_B);
*/
/*---------------------------------------------------*/
/*DROP TABLE PRI_APUESTA;

CREATE TABLE PRI_APUESTA
(
   FECHA          DATE           NOT NULL,
   NUMERO1        INTEGER        NOT NULL,
   NUMERO2        INTEGER        NOT NULL,
   NUMERO3        INTEGER        NOT NULL,
   NUMERO4        INTEGER        NOT NULL,
   NUMERO5        INTEGER        NOT NULL,
   NUMERO6        INTEGER        NOT NULL,
   DESCRIPCION    VARCHAR(100)   NOT NULL,
   EFECTIVIDAD    INTEGER        NOT NULL DEFAULT 0
);

CREATE INDEX PRI_APUESTA_IN01 ON PRI_APUESTA (FECHA);
CREATE INDEX PRI_APUESTA_IN02 ON PRI_APUESTA (EFECTIVIDAD);
*/

