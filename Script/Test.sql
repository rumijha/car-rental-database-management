
set serveroutput on;
begin
    --INSERT CUSTOMER
    -- customer_id, first_name, last_name, email, contact, license, passport,cust type, DOB
    --pckg_customer.insert_customer(21,'john','Kennedy','joh.k@northeastern.edu','1215167892','ajjshdn','ajsahdudw','EMPLOYEE','05-JUL-2005');
    
    --CUSTOMER ADDRESS
    -- address id, line1, line2, state, city, cust_id, zip, addr type
    --pckg_customer.insert_customer_address(14,'67- St Germain',null,'FLORIDA','MIAMI',20,'0211466','OFFICE');
    
    --UPDATE CUSTOMER
    --pckg_customer.update_customers(20,'JOHN','Kennedy','joh.k@northeastern.edu','1215167892','ajjshdn','ajsahdudw','EMPLOYEE','05-JUL-1999');
    
    --UPADTE ADDRESS
    --pckg_customer.update_customer_address(12,'67- St Germain',null,'FLORIDA','MIAMI',20,'0211466','OFFICE');
    
    --INSERT ACTIVITY activity id, login time, logout time, cust id
       -- pckg_customer.insert_activity(58800,sysdate,sysdate+1/24,20);
    
    --INSERT CAR car id, type, seat capacity, rate, model, make,reg num, cost
        --pckg_car.insert_car(5,'SEDAN',5,12,'CITY','HONDA','IQR 675',NULL);
        
    --UPDATE CAR
        --pckg_car.update_car(5,'SEDAN',5,12,'CITY','HONDA','IRR 675',NULL);
         
    --INSERT PICKUP POINT pickup point id, state, city, zip, cost, name
        --pckg_car.insert_pickup_point(2,'FLORIDA','MIAMI','02115',NULL,'Boylston Street');
    
    --UPDATE PICKUP POINT
        --pckg_car.update_pickup_point(100000,'ARIZONA','TEMPE','98732',87000,'SQUARE');
    
    --INSERT CARS AT PICK UP
        --pckg_car.insert_cars_at_pickup(6,7000,5);
        
     --UPDATE CARS AT PICK UP
        --pckg_car.update_cars_at_pickup(6,7000,2);
        
    -- DELETE CAR
        --pckg_car.delete_car(5);
        
    
    --INSERT RIDE Transaction -  Trans id, cust id, car at pickup id, start, end, car id, distance, status
        --pckg_transact.insert_ride_transaction(12,4000,9010,to_timestamp((sysdate)), to_timestamp((sysdate+1/24)),1016,0,'IN PROCESS');
    
    --UPDATE  Ride Transaction- Trans id, car at pickup id, start, end, car id, distance, status, customer card, discount id
        pckg_transact.update_ride_transaction();
    --pckg_utils.show_all_available_cars(to_timestamp((sysdate)), to_timestamp((sysdate+2/24)));
    --pckg_utils.get_car(1009);
end;