------------------------------------
-- Payment_Bill View
------------------------------------

create or replace view payment_bill as
select pay_id, payments.trans_id, pay_date, discount_id, payments.status, START_TIME, END_TIME, 
    case
        when ceil((extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2))/60) < 1 then 1
        else
            ceil(round(extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2),2)/60)
    END as Ride_Duration, distance, RATE_PER_HR, 
    round(RATE_PER_HR * 
        case
            when ceil((extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2))/60) < 1 then 1
        else
           ceil((extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2))/60)
        END,2) as BILL_AMOUNT
from payments, ride_transaction,
(
 select CAR_ID, RATE_PER_HR FROM CAR
) p
where   ride_transaction.car_id = p.car_id and 
        ride_transaction.trans_id = payments.trans_id;
    

------------------------------------
-- Analyst View
------------------------------------

create or replace view analyst_view as
SELECT cust.FIRST_NAME, cust.LAST_NAME, cust.EMAIL_ID, cust.CUSTOMER_TYPE, car.car_make, car.model, car.car_type, car.rate_per_hr, rt.TRANSACTION_DATE, 
rt.START_TIME, rt.END_TIME, bill.ride_duration, rt.DISTANCE, rt.status as trans_status, pay.PAY_DATE, bill.status as payment_status, bill.bill_amount
FROM customers cust, ride_transaction rt, payments pay, car, payment_bill bill
WHERE   cust.CUSTOMER_ID = rt.CUSTOMER_ID and rt.TRANS_ID = pay.TRANS_ID and 
        rt.CAR_ID = car.CAR_ID and rt.TRANS_ID = bill.TRANS_ID;

------------------------------------
--  audit_view
------------------------------------

create or replace view audit_view as
SELECT cust.CUSTOMER_ID, cust.first_name, cust.last_name, cust.email_id, to_char(act.login_time, 'DD-MON-YYYY HH24:MI:SS') login_time, 
to_char(act.logout_time, 'DD-MON-YYYY HH24:MI:SS') logout_time
FROM customers cust, activity act
WHERE cust.CUSTOMER_ID = act.CUSTOMER_ID;

------------------------------------
-- car_bookings_by_distane
------------------------------------

create or replace view car_bookings_by_distance as
select car.car_type, q.distance,
round( sum(q.total) /
    (
        select Average_Rides from
        (
            select  car.car_type as car_type, sum(p.count_trans) as Average_Rides
            from car, (select car_id, count(trans_id) as count_trans from RIDE_TRANSACTION group by car_id) p
            where car.car_id = p.car_id 
            group by car.car_type
        )
        where car_type = car.car_type
    ) *100 ,2)|| '%' as Average_Rides
from car,
(
    select t.distance, car.car_id, sum(total) as total
    from car,
    (
        select 
        case 
             when distance between 0  and 10 then '0-10 Miles'
             when distance between 11 and 20 then '11-20 Miles'
             when distance between 21 and 30 then '21-30 Miles'
             when distance between 31 and 40 then '31-40 Miles'
             when distance between 41 and 50 then '41-50 Miles'
             when distance between 51 and 60 then '51-60 Miles'
             when distance is null then 'IGNORE'
        END as distance, car_id,count(distance) as total 
        from ride_transaction group by distance, car_id
    ) t
    where car.car_id = t.car_id
    group by t.distance, car.car_id
) q
where car.car_id = q.car_id
group by car.car_type, q.distance
order by car.car_type, distance;

------------------------------------
-- Feedback_report
------------------------------------

create or replace view feedback_report as
select ratings, round(count(ratings)/ (select count(*) from feedback) * 100,2) || ' %' as Percentage 
from feedback 
group by ratings
order by ratings;

-------------------------------------
-- Inactive_customer
-------------------------------------

create or replace view inactive_customers as
select customers.customer_id, customers.first_name, customers.last_name, customers.email_id
from customers
where customers.customer_id NOT IN 
    (
    select distinct customer_id from ride_transaction
    ) or
       customers.customer_id in 
       (
           select distinct customer_id 
           from ride_transaction 
           where months_between(sysdate,transaction_date) > 6
       );
    
-------------------------------------
-- Prevalent_car_type
-------------------------------------

create or replace view prevalent_car_types as
select car.car_type, round(sum(p.count_trans)/(select count(*) from RIDE_TRANSACTION) *100,2) || '%' as Average_Rides
from car, (select car_id, count(trans_id) as count_trans from RIDE_TRANSACTION group by car_id) p
where car.car_id = p.car_id
group by car.car_type;

--------------------------------------
-- usage_pattern
--------------------------------------

create or replace view usage_pattern as
select
case
        when ride_duration >= 0 and ride_duration < 2 then '0-2 Hr'
        when ride_duration >= 2 and ride_duration < 4 then '2-4 Hr'
        when ride_duration >= 4 and ride_duration < 6 then '4-6 Hr'
        when ride_duration >= 6 and ride_duration < 8 then '6-8 Hr'
        when ride_duration >= 8 and ride_duration <= 10 then '8-10 Hr'
    end as Frame, over
from
(
select 
    *
from 
(
    select ride_duration , count(ride_duration) as over
    from payment_bill
    where distance > 20 and distance > 0  and ride_duration >= 0 and ride_duration < 2 
    group by ride_duration
) 
UNION
(
    select ride_duration , count(ride_duration) as over
    from payment_bill
    where distance > 40  and ride_duration >= 2 and  ride_duration < 4
    group by ride_duration
) 
UNION
(
    select ride_duration, count(ride_duration) as over
    from payment_bill
    where distance > 60  and ride_duration >= 4 and  ride_duration < 6
    group by ride_duration
)
UNION
(
    select ride_duration, count(ride_duration) as over
    from payment_bill
    where distance > 80  and ride_duration >= 6 and  ride_duration < 8
    group by ride_duration
)
UNION
(
    select ride_duration, count(ride_duration) as over
    from payment_bill
    where distance > 100  and ride_duration >= 8 and  ride_duration <= 10
    group by ride_duration
)
);

--------------------------------------
-- support_view
--------------------------------------

create or replace view support_view as
select support_id, support.trans_id, support.customer_id, first_name, last_name, email_id, contact, 
customer_type, car_id, rate_per_hr, ride_duration, transaction_date, pay_id, pay_date, bill_amount, support.status as "Support Status"
from support, ride_transaction, payment_bill, customers
where
    support.trans_id = ride_transaction.trans_id and
    support.trans_id = payment_bill.trans_id and
    support.customer_id = customers.customer_id and
    support.customer_id = ride_transaction.customer_id;
    
--------------------------------------
-- END
--------------------------------------