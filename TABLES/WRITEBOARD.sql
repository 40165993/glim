--------------------------------------------------------
--  DDL for Table WRITEBOARD
--------------------------------------------------------

  CREATE TABLE "WRITEBOARD" 
   (	"SEQ" NUMBER, 
	"NICKNAME" VARCHAR2(30 BYTE), 
	"CATEGORY" VARCHAR2(30 BYTE), 
	"VIEWS" NUMBER, 
	"WRITEDATE" VARCHAR2(100 BYTE), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"TEXT" CLOB
   ) ;
