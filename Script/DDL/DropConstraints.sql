ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT CUSTOMER_ID_FK5;
ALTER TABLE ACTIVITY DROP CONSTRAINT CUSTOMER_ID_FK1;
ALTER TABLE SUPPORT DROP CONSTRAINT CUSTOMER_ID_FK3;
ALTER TABLE VIOLATIONS_RECORDS DROP CONSTRAINT CUSTOMER_ID_FK2;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT CUSTOMER_ID_FK4;
ALTER TABLE PURCHASE_INSURANCE DROP CONSTRAINT CAR_ID_FK3;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT CAR_ID_FK1;
ALTER TABLE MAINTENANCE DROP CONSTRAINT CAR_ID_FK2;
ALTER TABLE CARS_AT_PICKUP DROP CONSTRAINT CAR_ID_FK4;
ALTER TABLE CARS_AT_PICKUP DROP CONSTRAINT PICKUP_POINT_ID_FK1;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT CARS_AT_PICKUP_ID_FK1;
ALTER TABLE PAYMENTS DROP CONSTRAINT DISCOUNT_ID_FK1;
ALTER TABLE PURCHASE_INSURANCE DROP CONSTRAINT INSURANCE_ID_FK1;
ALTER TABLE MAINTENANCE DROP CONSTRAINT PURCHASE_INSUARANCE_ID_FK1;
ALTER TABLE VIOLATIONS_RECORDS DROP CONSTRAINT VIOLATION_ID_FK;
ALTER TABLE PAYMENTS DROP CONSTRAINT TRANS_ID_FK2;
ALTER TABLE SUPPORT DROP CONSTRAINT TRANS_ID_FK1;
ALTER TABLE FEEDBACK DROP CONSTRAINT TRANS_ID_FK3;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT CUSTOMER_ID_NOT_NULL2;
ALTER TABLE MAINTENANCE DROP CONSTRAINT PURCHASE_INSURANCE_ID_NOT_NULL;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT CARS_AT_PICKUP_ID_NOT_NULL;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT END_TIME_NOT_NULL;
ALTER TABLE SUPPORT DROP CONSTRAINT TRANS_ID_NOT_NULL;
ALTER TABLE CUSTOMERS DROP CONSTRAINT FIRST_NAME_NOT_NULL;
ALTER TABLE VIOLATIONS DROP CONSTRAINT DESCRIPTION_NOT_NULL;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT CUSTOMER_ID_NOT_NULL3;
ALTER TABLE SUPPORT DROP CONSTRAINT STATUS_CHECK;
ALTER TABLE SUPPORT DROP CONSTRAINT CUSTOMER_ID_NOT_NULL1;
ALTER TABLE CUSTOMERS DROP CONSTRAINT EMAIL_ID_NOT_NULL;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CONTACT_NOT_NULL;
ALTER TABLE CUSTOMERS DROP CONSTRAINT LICENSE_NUMBER_NOT_NULL;
ALTER TABLE CUSTOMERS DROP CONSTRAINT PASSPORT_NUMBER_NOT_NULL;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT ADDRESS_LINE1_NOT_NULL;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT CITY_STATE_NOT_NULL;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT CITY_NOT_NULL;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT ZIP_CODE_NOT_NULL;
ALTER TABLE PAYMENTS DROP CONSTRAINT CUSTOMER_CARD_NOT_NULL;
ALTER TABLE PAYMENTS DROP CONSTRAINT TRANS_ID_NOT_NULL2;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT STATUS_NOT_NULL;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT START_TIME_NOT_NULL;
ALTER TABLE MAINTENANCE DROP CONSTRAINT MAINTENANCE_DATE_NOT_NULL;
ALTER TABLE MAINTENANCE DROP CONSTRAINT MAINTENANCE_COST_NOT_NULL;
ALTER TABLE FEEDBACK DROP CONSTRAINT TRANS_ID_NOT_NULL3;
ALTER TABLE CAR DROP CONSTRAINT CAR_TYPE_NOT_NULL;
ALTER TABLE CAR DROP CONSTRAINT MODEL_NOT_NULL;
ALTER TABLE CAR DROP CONSTRAINT CAR_MAKE_NOT_NULL;
ALTER TABLE CAR DROP CONSTRAINT CAR_NUMBER_NOT_NULL;
ALTER TABLE PURCHASE_INSURANCE DROP CONSTRAINT EXPIRY_DATE_NOT_NULL;
ALTER TABLE PURCHASE_INSURANCE DROP CONSTRAINT INSURANCE_ID_NOT_NULL;
ALTER TABLE AUDIT_DATA DROP CONSTRAINT SYS_C0028636;
ALTER TABLE CARS_AT_PICKUP DROP CONSTRAINT PICKUP_POINT_ID_NOT_NULL;
ALTER TABLE PICKUP_POINTS DROP CONSTRAINT STATE_NOT_NULL;
ALTER TABLE PICKUP_POINTS DROP CONSTRAINT CITY_NOT_NULL1;
ALTER TABLE PICKUP_POINTS DROP CONSTRAINT ZIP_NOT_NULL;
ALTER TABLE PICKUP_POINTS DROP CONSTRAINT NAME_NOT_NULL;
ALTER TABLE INSURANCE DROP CONSTRAINT INSURANCE_COST_NOT_NULL;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT ADDRESS_TYPE_CHECK;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT STATUS_CHECK2;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CUSTOMER_TYPE_CHECK;
ALTER TABLE PAYMENTS DROP CONSTRAINT STATUS_CHECK1;
ALTER TABLE VIOLATIONS_RECORDS DROP CONSTRAINT VIOLATION_ID_NOT_NULL;
ALTER TABLE VIOLATIONS_RECORDS DROP CONSTRAINT RECORD_DATE_NOT_NULL;
ALTER TABLE VIOLATIONS_RECORDS DROP CONSTRAINT CUSTOMER_ID_NOT_NULL;
ALTER TABLE AUDIT_DATA DROP CONSTRAINT SYS_C0028637;
ALTER TABLE AUDIT_DATA DROP CONSTRAINT SYS_C0028635;
ALTER TABLE CAR DROP CONSTRAINT SYS_C0028643;
ALTER TABLE VIOLATIONS_RECORDS DROP CONSTRAINT VIOLATIONS_RECORDS_PK;
ALTER TABLE AUDIT_DATA DROP CONSTRAINT SYS_C0028638;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CUSTOMERS_PK;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CUSTOMERS_EMAIL_ID_UN;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CUSTOMERS_CONTACT_UN;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CUSTOMERS_LICENSE_NUMBER_UN;
ALTER TABLE CUSTOMERS DROP CONSTRAINT CUSTOMERS_PASSPORT_NUMBER_UN;
ALTER TABLE CAR DROP CONSTRAINT CAR_PK;
ALTER TABLE CAR DROP CONSTRAINT CAR_NUMBER_UN;
ALTER TABLE PICKUP_POINTS DROP CONSTRAINT PICKUP_POINTS_PK;
ALTER TABLE CARS_AT_PICKUP DROP CONSTRAINT CARS_AT_PICKUP_PK;
ALTER TABLE RIDE_TRANSACTION DROP CONSTRAINT RIDE_TRANSACTION_PK;
ALTER TABLE FEEDBACK DROP CONSTRAINT FEEDBACK_PK;
ALTER TABLE CUSTOMER_ADDRESS DROP CONSTRAINT CUSTOMER_ADDRESS_PK;
ALTER TABLE DISCOUNTS DROP CONSTRAINT DISCOUNTS_PK;
ALTER TABLE PAYMENTS DROP CONSTRAINT PAYMENTS_PK;
ALTER TABLE ACTIVITY DROP CONSTRAINT ACTIVITY_PK;
ALTER TABLE SUPPORT DROP CONSTRAINT SUPPORT_PK;
ALTER TABLE INSURANCE DROP CONSTRAINT INSURANCE_PK;