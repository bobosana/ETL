
CREATE TABLE TGT.ORDER_F
(
  ORDER_ID       NUMBER,
  ORDER_LINE_ID  NUMBER,
  PRODUCT_KEY    NUMBER                         DEFAULT -999,
  QUANTITY       NUMBER,
  PRICE          INTEGER,
  ORDER_DATE     DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;




CREATE TABLE TGT.ORDER_LINE_EX
(
  EX_TYPE        VARCHAR2(2 BYTE),
  ORDER_ID       NUMBER,
  ORDER_LINE_ID  NUMBER,
  PRODUCT_ID     NUMBER,
  QUANTITY       NUMBER,
  PRICE          INTEGER,
  CREATION_DATE  DATE                           DEFAULT SYSDATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;




CREATE TABLE TGT.PRODUCT_D
(
  SK_PRODUCT_KEY  NUMBER,
  PRODUCT_ID      NUMBER,
  PRODUCT_NAME    VARCHAR2(45 BYTE),
  PRODUCT_DESC    VARCHAR2(100 BYTE),
  CREATION_DATE   DATE,
  UPDATE_DATE     DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


--  There is no statement for index TGT.SYS_C0012841.
--  The object is created when the parent object is created.

ALTER TABLE TGT.PRODUCT_D ADD (
  PRIMARY KEY
  (SK_PRODUCT_KEY)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);
