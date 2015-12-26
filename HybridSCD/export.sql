CREATE TABLE "CUSTOMER" 
   (	"CUST_ID" NUMBER, 
	"CUST_NAME" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"LAST_TRANS1" NUMBER, 
	"LAST_UPDATE_DATE" DATE, 
	 PRIMARY KEY ("CUST_ID")
     );

CREATE TABLE "SCD_HYBRID_TGT" 
   (	"SK" NUMBER NOT NULL ENABLE, 
	"CUST_ID" NUMBER, 
	"CUST_NAME" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"LAST_TRANS1" NUMBER, 
	"LAST_TRANS2" NUMBER, 
	"CURRENT_FLG" VARCHAR2(1 BYTE), 
	"EFF_START" DATE, 
	"EFF_END" DATE, 
	 PRIMARY KEY ("SK")
     );
 


Insert into CUSTOMER (CUST_ID,CUST_NAME,ADDRESS,PHONE,LAST_TRANS1,LAST_UPDATE_DATE) values (1,'BOB','BANGALORE','123456789',1000,to_date('30-DEC-15','DD-MON-RR'));
Insert into CUSTOMER (CUST_ID,CUST_NAME,ADDRESS,PHONE,LAST_TRANS1,LAST_UPDATE_DATE) values (2,'NITEEN','PUNE','12345677',2000,to_date('26-DEC-15','DD-MON-RR'));
