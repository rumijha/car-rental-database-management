DECLARE
 --   CURSOR C1 is select TRANSACTION_DATE from RIDE_TRANSACTION ;
    CURSOR C2 is select RATINGS, COMMENTS from TEMP order by DBMS_RANDOM.RANDOM;
 --   CURSOR C3 is select START_TIME from MOCKDATA order by DBMS_RANDOM.RANDOM;
 --   CURSOR C4 is select DISTANCE from MOCKDATA order by DBMS_RANDOM.RANDOM;
    
    TYPE COMMENTS IS VARRAY(100000) OF VARCHAR2(50);
    TYPE RATINGS IS VARRAY(100500) OF NUMBER;
    --TYPE START_TIME_TYPE IS VARRAY(1000000) OF MOCKDATA.START_TIME%TYPE;
    --TYPE DISTANCE_TYPE IS VARRAY(1000000) OF MOCKDATA.DISTANCE%TYPE;
    
    COMMENTS_ARR COMMENTS := COMMENTS();
    RATINGS_ARR RATINGS := RATINGS();
    --START_TIME_ARR START_TIME_TYPE := START_TIME_TYPE();
    --DISTANCE_ARR DISTANCE_TYPE := DISTANCE_TYPE();
     
    COMMENTS_INDEX NUMBER := 1;
    RATINGS_INDEX NUMBER := 1;
    --START_TIME_INDEX NUMBER := 1;
    --DISTANCE_INDEX NUMBER := 1;
    
     DB_DATE DATE;
     TEMP_TRANS NUMBER;
BEGIN
  /*  for i in C1 loop
        PICKUP_ARR.EXTEND;
        PICKUP_ARR(PICKUP_INDEX) := i.CARS_AT_PICKUP_ID;
        PICKUP_INDEX := PICKUP_INDEX + 1;
    end loop;
*/
    for i in C2 loop
        COMMENTS_ARR.EXTEND;
        RATINGS_ARR.EXTEND;
        COMMENTS_ARR(COMMENTS_INDEX) := i.COMMENTS;
        RATINGS_ARR(RATINGS_INDEX) := i.RATINGS;
        COMMENTS_INDEX := COMMENTS_INDEX + 1;
        RATINGS_INDEX := RATINGS_INDEX + 1;
    end loop;
    
   /* for i in C3 loop
        START_TIME_ARR.EXTEND;
        START_TIME_ARR(START_TIME_INDEX) := i.START_TIME;
        START_TIME_INDEX := START_TIME_INDEX + 1;
    end loop;
    */
   /* for i in C4 loop
        DISTANCE_ARR.EXTEND;
        DISTANCE_ARR(DISTANCE_INDEX) := i.DISTANCE;
        DISTANCE_INDEX := DISTANCE_INDEX + 1;
    end loop;
   */       
    COMMENTS_INDEX := 1;
    RATINGS_INDEX := 1;
    --START_TIME_INDEX := 1;
   -- DISTANCE_INDEX := 1;
    
    for i in 1 .. 10000 loop
     COMMENTS_ARR.EXTEND;
        RATINGS_ARR.EXTEND;
        if COMMENTS_INDEX >= 1000 then
            COMMENTS_INDEX := 1;
        end if;    
        if RATINGS_INDEX >= 10000 then
            RATINGS_INDEX := 1;
        end if;
        
        TEMP_TRANS := TEMP_TRANS_ID.NEXTVAL;
        select END_TIME into DB_DATE from RIDE_TRANSACTION where TRANS_ID = TEMP_TRANS;
        
        insert into FEEDBACK values (
            FEEDBACK_ID_SEQ.NEXTVAL,
            RATINGS_ARR(RATINGS_INDEX),
            COMMENTS_ARR(COMMENTS_INDEX),
            to_char(DB_DATE + 6/24, 'DD-MON-YYYY'),
            TEMP_TRANS);

        COMMENTS_INDEX := COMMENTS_INDEX + 1;
        RATINGS_INDEX := RATINGS_INDEX + 1;
    end loop;
    
   -- dbms_output.put_line(to_char(sysdate, 'DD-MON-YYYY HH:MI:SS'));
   -- dbms_output.put_line(to_char(sysdate+1/24, 'DD-MON-YYYY HH:MI:SS')); 
END;