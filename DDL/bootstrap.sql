
-- Author - Sanket Sanap

--------------------------------------------------------
--  File created - Thursday-November-11-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTIVITY
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='ACTIVITY';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE ACTIVITY (ACTIVITY_ID NUMBER(25,0), LOGIN_TIME DATE, LOGOUT_TIME DATE, CUSTOMER_ID NUMBER(25,0))';
    else 
        dbms_output.put_line('Table Activity already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='CAR';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."CAR" 
   (	"CAR_ID" NUMBER(25,0), 
	"CAR_TYPE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"MAX_PERSON" NUMBER(2,0) DEFAULT (4), 
	"RATE_PER_HR" NUMBER(3,0) DEFAULT (10), 
	"MODEL" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CAR_MAKE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CAR_NUMBER" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CAR_COST" NUMBER(10,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table CAR already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table CARS_AT_PICKUP
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='CARS_AT_PICKUP';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."CARS_AT_PICKUP" 
   (	"CARS_AT_PICKUP_ID" NUMBER(25,0), 
	"PICKUP_POINT_ID" NUMBER(25,0), 
	"CAR_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table CARS_AT_PICKUP already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='CUSTOMERS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER(25,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"LAST_NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"EMAIL_ID" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CONTACT" NUMBER(10,0), 
	"LICENSE_NUMBER" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"PASSPORT_NUMBER" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CUSTOMER_TYPE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"DATE_OF_BIRTH" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table CUSTOMERS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='CUSTOMER_ADDRESS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."CUSTOMER_ADDRESS" 
   (	"ADDRESS_ID" NUMBER(25,0), 
	"ADDRESS_LINE1" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"ADDRESS_LINE2" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY_STATE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CUSTOMER_ID" NUMBER(25,0), 
	"ZIP_CODE" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"ADDRESS_TYPE" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP" DEFAULT "HOME"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table CUSTOMER_ADDRESS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table DISCOUNTS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='DISCOUNTS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."DISCOUNTS" 
   (	"DISCOUNT_ID" NUMBER(25,0), 
	"DESCRIPTION" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"PERCENTAGE" NUMBER(3,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table DISCOUNTS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table FEEDBACK
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='FEEDBACK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."FEEDBACK" 
   (	"FEEDBACK_ID" NUMBER(25,0), 
	"RATINGS" NUMBER(2,0), 
	"COMMENTS" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"FEEDBACK_DATE" DATE DEFAULT sysdate, 
	"TRANS_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table FEEDBACK already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table INSURANCE
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='INSURANCE';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."INSURANCE" 
   (	"INSURANCE_ID" NUMBER(25,0), 
	"SUMMARY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"INSURANCE_TYPE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"INSURANCE_COST" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table INSURANCE already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table MAINTENANCE
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='MAINTENANCE';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."MAINTENANCE" 
   (	"MAINTENANCE_ID" NUMBER(25,0), 
	"SUMMARY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"MAINTENANCE_DATE" DATE, 
	"MAINTENANCE_COST" NUMBER(25,0), 
	"CAR_ID" NUMBER(25,0), 
	"PURCHASE_INSURANCE_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table MAINTENANCE already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='PAYMENTS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."PAYMENTS" 
   (	"PAY_ID" NUMBER(25,0), 
	"PAY_DATE" DATE DEFAULT sysdate, 
	"CUSTOMER_CARD" VARCHAR2(50 BYTE), 
	"STATUS" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"TRANS_ID" NUMBER(25,0), 
	"DISCOUNT_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table PAYMENTS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table PICKUP_POINTS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='PICKUP_POINTS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."PICKUP_POINTS" 
   (	"PICKUP_POINT_ID" NUMBER(25,0), 
	"STATE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"ZIP" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"COST" NUMBER(10,0), 
	"NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table PICKUP_POINTS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table PURCHASE_INSURANCE
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='PURCHASE_INSURANCE';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."PURCHASE_INSURANCE" 
   (	"PURCHASE_INSURANCE_ID" NUMBER(25,0), 
	"CAR_ID" NUMBER(25,0), 
	"INSURANCE_ID" NUMBER(25,0), 
	"PURCHASE_DATE" DATE, 
	"EXPIRY_DATE" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table PURCHASE_INSURANCE already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table RIDE_TRANSACTION
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='RIDE_TRANSACTION';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."RIDE_TRANSACTION" 
   (	"TRANS_ID" NUMBER(25,0), 
	"CUSTOMER_ID" NUMBER(25,0), 
	"CARS_AT_PICKUP_ID" NUMBER(25,0), 
	"TRANSACTION_DATE" DATE DEFAULT sysdate, 
	"START_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6), 
	"CAR_ID" NUMBER(25,0), 
	"DISTANCE" NUMBER DEFAULT 0, 
	"STATUS" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP" DEFAULT "IN PROCESS"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table RIDE_TRANSACTION already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table SUPPORT
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='SUPPORT';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."SUPPORT" 
   (	"SUPPORT_ID" NUMBER(25,0), 
	"STATUS" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"CUSTOMER_ID" NUMBER(25,0), 
	"TRANS_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table SUPPORT already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table VIOLATIONS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='VIOLATIONS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."VIOLATIONS" 
   (	"VIOLATION_ID" NUMBER(25,0), 
	"DESCRIPTION" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table VIOLATIONS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='VIOLATIONS_RECORDS';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."VIOLATIONS_RECORDS" 
   (	"RECORD_ID" NUMBER(25,0), 
	"RECORD_DATE" DATE, 
	"CUSTOMER_ID" NUMBER(25,0), 
	"VIOLATION_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA"' ;
  else 
        dbms_output.put_line('Table VIOLATIONS_RECORDS already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  DDL for Table AUDIT_DATA
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_tables where table_name='AUDIT_DATA';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE TABLE "ADMIN"."AUDIT_DATA" 
   ( AUDIT_ID number primary key,
   USERNAME VARCHAR2(50) NOT NULL, 
   "DATE" TIMESTAMP (6) DEFAULT systimestamp NOT NULL ENABLE,
	ACTION VARCHAR2(25) not null)' ;
  else 
        dbms_output.put_line('Table AUDIT_DATA already exists');
    end if;
  end;
  /
REM INSERTING into ADMIN.ACTIVITY
SET DEFINE OFF;
REM INSERTING into ADMIN.CAR
SET DEFINE OFF;
REM INSERTING into ADMIN.CARS_AT_PICKUP
SET DEFINE OFF;
REM INSERTING into ADMIN.CUSTOMERS
SET DEFINE OFF;
REM INSERTING into ADMIN.CUSTOMER_ADDRESS
SET DEFINE OFF;
REM INSERTING into ADMIN.DISCOUNTS
SET DEFINE OFF;
REM INSERTING into ADMIN.FEEDBACK
SET DEFINE OFF;
REM INSERTING into ADMIN.INSURANCE
SET DEFINE OFF;
REM INSERTING into ADMIN.MAINTENANCE
SET DEFINE OFF;
REM INSERTING into ADMIN.PAYMENTS
SET DEFINE OFF;
REM INSERTING into ADMIN.PICKUP_POINTS
SET DEFINE OFF;
REM INSERTING into ADMIN.PURCHASE_INSURANCE
SET DEFINE OFF;
REM INSERTING into ADMIN.RIDE_TRANSACTION
SET DEFINE OFF;
REM INSERTING into ADMIN.SUPPORT
SET DEFINE OFF;
REM INSERTING into ADMIN.VIOLATIONS
SET DEFINE OFF;
REM INSERTING into ADMIN.VIOLATIONS_RECORDS
SET DEFINE OFF;
/
--------------------------------------------------------
--  Constraints for Table MAINTENANCE
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PURCHASE_INSURANCE_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("PURCHASE_INSURANCE_ID" CONSTRAINT "PURCHASE_INSURANCE_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint PURCHASE_INSURANCE_ID_NOT_NULL already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='MAINTENANCE_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" ADD CONSTRAINT "MAINTENANCE_PK" PRIMARY KEY ("MAINTENANCE_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint MAINTENANCE_PK already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='MAINTENANCE_DATE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("MAINTENANCE_DATE" CONSTRAINT "MAINTENANCE_DATE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint MAINTENANCE_DATE_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='MAINTENANCE_COST_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("MAINTENANCE_COST" CONSTRAINT "MAINTENANCE_COST_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint MAINTENANCE_COST_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_NOT_NULL1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL1" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_NOT_NULL1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table SUPPORT
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='TRANS_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."SUPPORT" MODIFY ("TRANS_ID" CONSTRAINT "TRANS_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint TRANS_ID_NOT_NULL already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='SUPPORT_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "SUPPORT_PK" PRIMARY KEY ("SUPPORT_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint SUPPORT_PK already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='STATUS_CHECK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "STATUS_CHECK" CHECK (status in ("IN PROGRESS", "COMPLETED", "PENDING")) ENABLE';
  	  else 
        dbms_output.put_line('Constraint STATUS_CHECK already exists');
    end if;
  end;
  /
  
   set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_NOT_NULL1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."SUPPORT" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL1" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_NOT_NULL1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table FEEDBACK
--------------------------------------------------------

   set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='TRANS_ID_NOT_NULL3';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."FEEDBACK" MODIFY ("TRANS_ID" CONSTRAINT "TRANS_ID_NOT_NULL3" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint TRANS_ID_NOT_NULL3 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='FEEDBACK_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."FEEDBACK" ADD CONSTRAINT "FEEDBACK_PK" PRIMARY KEY ("FEEDBACK_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint FEEDBACK_PK already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table INSURANCE
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='INSURANCE_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."INSURANCE" ADD CONSTRAINT "INSURANCE_PK" PRIMARY KEY ("INSURANCE_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint INSURANCE_PK already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='INSURANCE_COST_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."INSURANCE" MODIFY ("INSURANCE_COST" CONSTRAINT "INSURANCE_COST_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint INSURANCE_COST_NOT_NULL already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table PICKUP_POINTS
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PICKUP_POINTS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PICKUP_POINTS" ADD CONSTRAINT "PICKUP_POINTS_PK" PRIMARY KEY ("PICKUP_POINT_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint PICKUP_POINTS_PK already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='STATE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("STATE" CONSTRAINT "STATE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint STATE_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CITY_NOT_NULL1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("CITY" CONSTRAINT "CITY_NOT_NULL1" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CITY_NOT_NULL1 already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='ZIP_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("ZIP" CONSTRAINT "ZIP_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint ZIP_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='NAME_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("NAME" CONSTRAINT "NAME_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint NAME_NOT_NULL already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_NOT_NULL2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL2" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_NOT_NULL2 already exists');
    end if;
  end;
  /
  
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ADDRESS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ADDRESS_PK" PRIMARY KEY ("ADDRESS_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ADDRESS_PK already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='ADDRESS_LINE1_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("ADDRESS_LINE1" CONSTRAINT "ADDRESS_LINE1_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint ADDRESS_LINE1_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CITY_STATE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("CITY_STATE" CONSTRAINT "CITY_STATE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CITY_STATE_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CITY_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("CITY" CONSTRAINT "CITY_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CITY_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='ZIP_CODE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("ZIP_CODE" CONSTRAINT "ZIP_CODE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint ZIP_CODE_NOT_NULL already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='ADDRESS_TYPE_CHECK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" ADD CONSTRAINT "ADDRESS_TYPE_CHECK" CHECK (ADDRESS_TYPE in ("HOME", "OFFICE", "OTHER")) ENABLE';
  	  else 
        dbms_output.put_line('Constraint ADDRESS_TYPE_CHECK already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table PAYMENTS
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PAYMENTS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "PAYMENTS_PK" PRIMARY KEY ("PAY_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint PAYMENTS_PK already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_CARD_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PAYMENTS" MODIFY ("CUSTOMER_CARD" CONSTRAINT "CUSTOMER_CARD_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_CARD_NOT_NULL already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='STATUS_CHECK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "STATUS_CHECK1" CHECK (status in ("IN PROGRESS", "COMPLETED", "PENDING")) ENABLE';
  	  else 
        dbms_output.put_line('Constraint STATUS_CHECK1 already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='TRANS_ID_NOT_NULL2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PAYMENTS" MODIFY ("TRANS_ID" CONSTRAINT "TRANS_ID_NOT_NULL2" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint TRANS_ID_NOT_NULL2 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table DISCOUNTS
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='DISCOUNTS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."DISCOUNTS" ADD CONSTRAINT "DISCOUNTS_PK" PRIMARY KEY ("DISCOUNT_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint DISCOUNTS_PK already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CAR" ADD CONSTRAINT "CAR_PK" PRIMARY KEY ("CAR_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CAR_PK already exists');
    end if;
  end;
  /
  
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_NUMBER_UN';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CAR" ADD CONSTRAINT "CAR_NUMBER_UN" UNIQUE ("CAR_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CAR_NUMBER_UN already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_TYPE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CAR" MODIFY ("CAR_TYPE" CONSTRAINT "CAR_TYPE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_TYPE_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='MODEL_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CAR" MODIFY ("MODEL" CONSTRAINT "MODEL_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint MODEL_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_MAKE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CAR" MODIFY ("CAR_MAKE" CONSTRAINT "CAR_MAKE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_MAKE_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_NUMBER_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CAR" MODIFY ("CAR_NUMBER" CONSTRAINT "CAR_NUMBER_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_NUMBER_NOT_NULL already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table ACTIVITY
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='ACTIVITY_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."ACTIVITY" ADD CONSTRAINT "ACTIVITY_PK" PRIMARY KEY ("ACTIVITY_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint ACTIVITY_PK already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='FIRST_NAME_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("FIRST_NAME" CONSTRAINT "FIRST_NAME_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint FIRST_NAME_NOT_NULL already exists');
    end if;
  end;
  
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMERS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMERS_PK already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='EMAIL_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("EMAIL_ID" CONSTRAINT "EMAIL_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint EMAIL_ID_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CONTACT_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("CONTACT" CONSTRAINT "CONTACT_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CONTACT_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='LICENSE_NUMBER_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("LICENSE_NUMBER" CONSTRAINT "LICENSE_NUMBER_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint LICENSE_NUMBER_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PASSPORT_NUMBER_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("PASSPORT_NUMBER" CONSTRAINT "PASSPORT_NUMBER_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint PASSPORT_NUMBER_NOT_NULL already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_TYPE_CHECK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMER_TYPE_CHECK" CHECK ( customer_type in ("student","employee","others")) ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_TYPE_CHECK already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMERS_EMAIL_ID_UN';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_EMAIL_ID_UN" UNIQUE ("EMAIL_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMERS_EMAIL_ID_UN already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMERS_CONTACT_UN';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_CONTACT_UN" UNIQUE ("CONTACT")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMERS_CONTACT_UN already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMERS_LICENSE_NUMBER_UN';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_LICENSE_NUMBER_UN" UNIQUE ("LICENSE_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMERS_LICENSE_NUMBER_UN already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMERS_PASSPORT_NUMBER_UN';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_PASSPORT_NUMBER_UN" UNIQUE ("PASSPORT_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMERS_PASSPORT_NUMBER_UN already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table VIOLATIONS
--------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='DESCRIPTION_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS" MODIFY ("DESCRIPTION" CONSTRAINT "DESCRIPTION_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint DESCRIPTION_NOT_NULL already exists');
    end if;
  end;
  
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='VIOLATIONS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS" ADD CONSTRAINT "VIOLATIONS_PK" PRIMARY KEY ("VIOLATION_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint VIOLATIONS_PK already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table CARS_AT_PICKUP
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CARS_AT_PICKUP_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CARS_AT_PICKUP" ADD CONSTRAINT "CARS_AT_PICKUP_PK" PRIMARY KEY ("CARS_AT_PICKUP_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint CARS_AT_PICKUP_PK already exists');
    end if;
  end;
  /
  
   set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PICKUP_POINT_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CARS_AT_PICKUP" MODIFY ("PICKUP_POINT_ID" CONSTRAINT "PICKUP_POINT_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint PICKUP_POINT_ID_NOT_NULL already exists');
    end if;
  end;
  /
   set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_NOT_NULL3';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CARS_AT_PICKUP" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL3" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_NOT_NULL3 already exists');
    end if;
  end;
--------------------------------------------------------
--  Constraints for Table VIOLATIONS_RECORDS
--------------------------------------------------------
/
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='VIOLATIONS_RECORDS_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" ADD CONSTRAINT "VIOLATIONS_RECORDS_PK" PRIMARY KEY ("RECORD_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint VIOLATIONS_RECORDS_PK already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='VIOLATION_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" MODIFY ("VIOLATION_ID" CONSTRAINT "VIOLATION_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint VIOLATION_ID_NOT_NULL already exists');
    end if;
  end;
 /
 set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='RECORD_DATE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" MODIFY ("RECORD_DATE" CONSTRAINT "RECORD_DATE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint RECORD_DATE_NOT_NULL already exists');
    end if;
  end;
/
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_NOT_NULL already exists');
    end if;
  end;
--------------------------------------------------------
--  Constraints for Table RIDE_TRANSACTION
--------------------------------------------------------
/
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CARS_AT_PICKUP_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("CARS_AT_PICKUP_ID" CONSTRAINT "CARS_AT_PICKUP_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CARS_AT_PICKUP_ID_NOT_NULL already exists');
    end if;
  end;
 /
 set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_NOT_NULL already exists');
    end if;
  end;
/
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='END_TIME_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("END_TIME" CONSTRAINT "END_TIME_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint END_TIME_NOT_NULL already exists');
    end if;
  end;
/
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_NOT_NULL3';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL3" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_NOT_NULL3 already exists');
    end if;
  end;
/  
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='RIDE_TRANSACTION_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "RIDE_TRANSACTION_PK" PRIMARY KEY ("TRANS_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint RIDE_TRANSACTION_PK already exists');
    end if;
  end;
  /
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='STATUS_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("STATUS" CONSTRAINT "STATUS_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint STATUS_NOT_NULL already exists');
    end if;
  end;
 /
 set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='START_TIME_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("START_TIME" CONSTRAINT "START_TIME_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint START_TIME_NOT_NULL already exists');
    end if;
  end;
/  
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='STATUS_CHECK2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "STATUS_CHECK2" CHECK (STATUS in ("IN PROCESS", "COMPLETED", "CANCELLED", "UPDATED")) ENABLE';
  	  else 
        dbms_output.put_line('Constraint STATUS_CHECK2 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Constraints for Table PURCHASE_INSURANCE
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PURCHASE_INSURANCE_PK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" ADD CONSTRAINT "PURCHASE_INSURANCE_PK" PRIMARY KEY ("PURCHASE_INSURANCE_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE';
  	  else 
        dbms_output.put_line('Constraint PURCHASE_INSURANCE_PK already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='EXPIRY_DATE_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" MODIFY ("EXPIRY_DATE" CONSTRAINT "EXPIRY_DATE_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint EXPIRY_DATE_NOT_NULL already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_NOT_NULL2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL2" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_NOT_NULL2 already exists');
    end if;
  end;
  /
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='INSURANCE_ID_NOT_NULL';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" MODIFY ("INSURANCE_ID" CONSTRAINT "INSURANCE_ID_NOT_NULL" NOT NULL ENABLE)';
  	  else 
        dbms_output.put_line('Constraint INSURANCE_ID_NOT_NULL already exists');
    end if;
  end;
--------------------------------------------------------
--  Ref Constraints for Table ACTIVITY
--------------------------------------------------------
/
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."ACTIVITY" ADD CONSTRAINT "CUSTOMER_ID_FK1" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_FK1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table CARS_AT_PICKUP
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_FK4';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CARS_AT_PICKUP" ADD CONSTRAINT "CAR_ID_FK4" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_FK4 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PICKUP_POINT_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CARS_AT_PICKUP" ADD CONSTRAINT "PICKUP_POINT_ID_FK1" FOREIGN KEY ("PICKUP_POINT_ID")
	  REFERENCES "ADMIN"."PICKUP_POINTS" ("PICKUP_POINT_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint PICKUP_POINT_ID_FK1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_FK4';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ID_FK4" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_FK4 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table FEEDBACK
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='TRANS_ID_FK3';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."FEEDBACK" ADD CONSTRAINT "TRANS_ID_FK3" FOREIGN KEY ("TRANS_ID")
	  REFERENCES "ADMIN"."RIDE_TRANSACTION" ("TRANS_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint TRANS_ID_FK3 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table MAINTENANCE
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_FK2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" ADD CONSTRAINT "CAR_ID_FK2" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_FK2 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='PURCHASE_INSUARANCE_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."MAINTENANCE" ADD CONSTRAINT "PURCHASE_INSUARANCE_ID_FK1" FOREIGN KEY ("PURCHASE_INSURANCE_ID")
	  REFERENCES "ADMIN"."PURCHASE_INSURANCE" ("PURCHASE_INSURANCE_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint PURCHASE_INSUARANCE_ID_FK1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table PAYMENTS
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='TRANS_ID_FK2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "TRANS_ID_FK2" FOREIGN KEY ("TRANS_ID")
	  REFERENCES "ADMIN"."RIDE_TRANSACTION" ("TRANS_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint TRANS_ID_FK2 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='DISCOUNT_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "DISCOUNT_ID_FK1" FOREIGN KEY ("DISCOUNT_ID")
	  REFERENCES "ADMIN"."DISCOUNTS" ("DISCOUNT_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint DISCOUNT_ID_FK1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table PURCHASE_INSURANCE
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_FK3';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" ADD CONSTRAINT "CAR_ID_FK3" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_FK3 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='INSURANCE_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" ADD CONSTRAINT "INSURANCE_ID_FK1" FOREIGN KEY ("INSURANCE_ID")
	  REFERENCES "ADMIN"."INSURANCE" ("INSURANCE_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint INSURANCE_ID_FK1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table RIDE_TRANSACTION
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CARS_AT_PICKUP_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "CARS_AT_PICKUP_ID_FK1" FOREIGN KEY ("CARS_AT_PICKUP_ID")
	  REFERENCES "ADMIN"."CARS_AT_PICKUP" ("CARS_AT_PICKUP_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CARS_AT_PICKUP_ID_FK1 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_FK5';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "CUSTOMER_ID_FK5" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_FK5 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CAR_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "CAR_ID_FK1" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CAR_ID_FK1 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table SUPPORT
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='TRANS_ID_FK1';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "TRANS_ID_FK1" FOREIGN KEY ("TRANS_ID")
	  REFERENCES "ADMIN"."RIDE_TRANSACTION" ("TRANS_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint TRANS_ID_FK1 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_FK3';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "CUSTOMER_ID_FK3" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_FK3 already exists');
    end if;
  end;
  /
--------------------------------------------------------
--  Ref Constraints for Table VIOLATIONS_RECORDS
--------------------------------------------------------

    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='CUSTOMER_ID_FK2';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" ADD CONSTRAINT "CUSTOMER_ID_FK2" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint CUSTOMER_ID_FK2 already exists');
    end if;
  end;
  /
    set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_constraints where constraint_name='VIOLATION_ID_FK';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" ADD CONSTRAINT "VIOLATION_ID_FK" FOREIGN KEY ("VIOLATION_ID")
	  REFERENCES "ADMIN"."VIOLATIONS" ("VIOLATION_ID") ENABLE';
  	  else 
        dbms_output.put_line('Constraint VIOLATION_ID_FK already exists');
    end if;
  end;
/

---------------------------------------------------------
-- SEQUENCE FOR ACTIVITY_ID
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='ACTIVITY_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE ACTIVITY_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER';
  else 
        dbms_output.put_line('Sequence ACTIVITY_ID_SEQ already exists');
    end if;
  end;
  /
---------------------------------------------------------
-- SEQUENCE FOR ADDRESS_ID
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='ADDRESS_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE ADDRESS_ID_SEQ
         START WITH 11111
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence ADDRESS_ID_SEQ already exists');
    end if;
  end;
  /
---------------------------------------------------------
-- SEQUENCE FOR CAR_ID_SEQ
---------------------------------------------------------
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='CAR_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE CAR_ID_SEQ
        START WITH 1001
        INCREMENT BY 1
        ORDER';
	  else 
        dbms_output.put_line('Sequence CAR_ID_SEQ already exists');
    end if;
  end;
  /
---------------------------------------------------------
-- SEQUENCE FOR CARS_AT_PICKUP_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='CARS_AT_PICKUP_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE CARS_AT_PICKUP_ID_SEQ
         START WITH 9000
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence CARS_AT_PICKUP_ID_SEQ already exists');
    end if;
  end;
   /      
---------------------------------------------------------
-- SEQUENCE FOR CUSTOMER_ID
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='CUST_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE CUST_ID_SEQ
        START WITH 1001
        INCREMENT BY 1
        ORDER';
	  else 
        dbms_output.put_line('Sequence CUST_ID_SEQ already exists');
    end if;
  end;
    /    
---------------------------------------------------------
-- SEQUENCE FOR DISCOUNT_ID_SEQ
---------------------------------------------------------
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='DISCOUNT_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE DISCOUNT_ID_SEQ
         START WITH 100
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence DISCOUNT_ID_SEQ already exists');
    end if;
  end;
/
---------------------------------------------------------
-- SEQUENCE FOR FEEDBACK_ID_SEQ
---------------------------------------------------------
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='FEEDBACK_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE FEEDBACK_ID_SEQ
         START WITH 1001
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence FEEDBACK_ID_SEQ already exists');
    end if;
  end;
 /      
---------------------------------------------------------
-- SEQUENCE FOR INSURANCE_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='INSURANCE_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE INSURANCE_ID_SEQ
         START WITH 50001
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence INSURANCE_ID_SEQ already exists');
    end if;
  end;
  /       
---------------------------------------------------------
-- SEQUENCE FOR RECORD_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='RECORD_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE RECORD_ID_SEQ
         START WITH 101
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence RECORD_ID_SEQ already exists');
    end if;
  end;
/
---------------------------------------------------------
-- SEQUENCE FOR MAINTENANCE_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='MAINTENANCE_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE MAINTENANCE_ID_SEQ
         START WITH 5000
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence MAINTENANCE_ID_SEQ already exists');
    end if;
  end;
/
---------------------------------------------------------
-- SEQUENCE FOR PURCHASE_INSURANCE_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='PURCHASE_INSURANCE_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE PURCHASE_INSURANCE_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence PURCHASE_INSURANCE_ID_SEQ already exists');
    end if;
  end;
 /        
---------------------------------------------------------
-- SEQUENCE FOR TRANS_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='TRANS_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE TRANS_ID_SEQ
        START WITH 101
        INCREMENT BY 1
        ORDER';
	  else 
        dbms_output.put_line('Sequence TRANS_ID_SEQ already exists');
    end if;
  end;
/
---------------------------------------------------------
-- SEQUENCE FOR VIOLATION_ID_SEQ
---------------------------------------------------------

  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='VIOLATION_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE VIOLATION_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence VIOLATION_ID_SEQ already exists');
    end if;
  end;
/
---------------------------------------------------------
-- SEQUENCE FOR PAYMENT_ID_SEQ
---------------------------------------------------------
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='PAY_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE PAY_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence PAY_ID_SEQ already exists');
    end if;
  end;
/
---------------------------------------------------------
-- SEQUENCE FOR SUPPORT_ID_SEQ
---------------------------------------------------------
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='SUPPORT_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE SUPPORT_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence SUPPORT_ID_SEQ already exists');
    end if;
  end;
 /            
---------------------------------------------------------
-- SEQUENCE FOR PICKUP_POINT_ID_SEQ
---------------------------------------------------------
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='PICKUP_POINT_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'CREATE SEQUENCE PICKUP_POINT_ID_SEQ
         START WITH 7000
         INCREMENT BY 1
         ORDER';
	  else 
        dbms_output.put_line('Sequence PICKUP_POINT_ID_SEQ already exists');
    end if;
  end;
  /
---------------------------------------------------------
-- SEQUENCE FOR AUDIT_ID_SEQ
---------------------------------------------------------
  
  set serveroutput on;
  DECLARE
  cnt number;
  begin
  cnt :=0;
  select count(*) into cnt from user_objects where object_name='AUDIT_ID_SEQ';
    if cnt = 0 then
        EXECUTE IMMEDIATE 'create sequence AUDIT_ID_SEQ start with 1 increment by 1';
	  else 
        dbms_output.put_line('Sequence AUDIT_ID_SEQ already exists');
    end if;
  end;
  /