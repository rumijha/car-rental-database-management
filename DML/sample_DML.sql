
set serveroutput on;
begin
    --INSERT CUSTOMER
    -- customer_id, first_name, last_name, email, contact, license, passport,cust type, DOB
    --pckg_customer.insert_customer(786,'Ganesh','Nayak','ganesh.n@northeastern.edu','3456987098','ZXCVB542','LKJHGMN678','EMPLOYEE','02-JUL-1997');
    
    
    --CUSTOMER ADDRESS
    -- address id, line1, line2, state, city, cust_id, zip, addr type
    --pckg_customer.insert_customer_address(50,'GERMAN COLONY',NULL,'TEXAS','DALLAS',786,'34561','HOME');
    
    
    --UPDATE CUSTOMER
    --pckg_customer.update_customers(786,'Ganesh','Nayak','ganesh.n@gmail.com','3456987098','ZXCVB542','LKJHGMN678','EMPLOYEE','02-JUL-1997');
    
    
    --UPADTE ADDRESS
    --pckg_customer.update_customer_address(50,'HENNY PARK VIEW','APT NO 34','TEXAS','DALLAS',786,'34579','HOME');
    
    
    --INSERT ACTIVITY activity id, login time, logout time, cust id
       -- pckg_customer.insert_activity(12000, sysdate, sysdate+1/24, 786);
    
    
    --INSERT CAR car id, type, seat capacity, rate, model, make,reg num, cost
        --pckg_car.insert_car(500, 'SEDAN', 4, 16, 'CITY', 'HONDA','QQR D78', 16000);
        
        
    --UPDATE CAR
        --pckg_car.update_car(500, 'SEDAN', 4, 17, 'CITY', 'HONDA','QQR D78', 15500);
        
         
    --INSERT PICKUP POINT pickup point id, state, city, zip, cost, name
        --pckg_car.insert_pickup_point(10, 'TEXAS','AUSTIN','92115', 50000, 'AUSTIN_A1');
    
    
    --UPDATE PICKUP POINT
        --pckg_car.update_pickup_point(10, 'TEXAS','AUSTIN','92220', 50000, 'AUSTIN_TX');
    
    
    --INSERT CARS AT PICK UP
        --pckg_car.insert_cars_at_pickup(15,7012,1047);
        
        
     --UPDATE CARS AT PICK UP
        --pckg_car.update_cars_at_pickup(15, 7012, 1041);
        
        
        
        
        
    -- DELETE CAR
        --pckg_car.delete_car(5);
        
    
    --INSERT RIDE Transaction -  Trans id, cust id, car at pickup id, start, end, car id, distance, status
        --pckg_transact.insert_ride_transaction(12,4000,9010,to_timestamp((sysdate)), to_timestamp((sysdate+1/24)),1016,0,'IN PROCESS');
    
    --UPDATE  Ride Transaction- Trans id, car at pickup id, start, end, car id, distance, status, customer card, discount id
        --pckg_transact.update_ride_transaction(10,9010,to_timestamp((sysdate+1/24)), to_timestamp((sysdate+2/24)),1018,10,'COMPLETED','1234-1234-1234-1234',NULL);
        
    
    --INSERT violations violation id description
        --pckg_violations.insert_violations(22,NULL);
        --pckg_violations.update_violations(21,'Park');
    
    --INSERT VIOLATIONS records record id,  cust id, violation id
      -- pckg_violations.insert_violations_record(2000,2007,12);
        
    --INSERt
    
    --pckg_utils.show_all_available_cars(to_timestamp((sysdate)), to_timestamp((sysdate+2/24)));
    --pckg_utils.get_car(1009);
end;