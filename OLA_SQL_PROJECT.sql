                       ===============  OLA_SQL_PROJECT =============    
				
   USE OLA;

-- QUESTIONS DATA ANALYST_SQL : 
-- 1. Retrieve all successful bookings:
   create view successful_bookings As
   SELECT * FROM bookings 
   WHERE Booking_Status = 'Success';
   
    --1. Retrieve all successful bookings: (view)
   select * from successful_bookings
-------------------------------------------------------------------------------------------------------
-- 2. Find the average ride distance for each vehicle type:
   create view ride_distance_for_each_vehicle As
   SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance 
   FROM bookings
   GROUP BY Vehicle_Type;

   -- 2. Find the average ride distance for each vehicle type:(view)
    select * from ride_distance_for_each_vehicle;

-- 3. Get the total number of cancelled rides by customers:
      create view cancelled_rides_by_customers As
	  SELECT COUNT(*) as count FROM bookings
	  WHERE Booking_Status = 'canceled by Customer';

	  -- 3. Get the total number of cancelled rides by customers:(view)
	  select * from cancelled_rides_by_customers;

-- 4. List the top 5 customers who booked the highest number of rides:
      CREATE VIEW top_5_customers As
	  SELECT TOP(5) Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY
      Customer_ID ORDER BY total_rides DESC;

	  -- 4. List the top 5 customers who booked the highest number of rides:(view)
	  select * from top_5_customers;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
     CREATE VIEW rides_cancelled_by_drivers_P_C_ISSUES As
	 SELECT COUNT(*) As number FROM bookings 
	 WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

	 -- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:(view)
	 select * from rides_cancelled_by_drivers_P_C_ISSUES

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
      CREATE VIEW max_min_driver_ratings As
	  SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating 
	  FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

	  -- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:(view)
	  select * from max_min_driver_ratings;

-- 7. Retrieve all rides where payment was made using UPI:
     CREATE VIEW UPI_Payment As
	 Select * from bookings 
  	 where Payment_Method = 'UPI';

	 -- 7. Retrieve all rides where payment was made using UPI:(view)
	 select * from UPI_Payment;

-- 8. Find the average customer rating per vehicle type:
    CREATE VIEW Average_cust_rating As
	SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating 
	FROM bookings
	GROUP BY Vehicle_Type;

	-- 8. Find the average customer rating per vehicle type:(view)
	   select * from Average_cust_rating;

-- 9. Calculate the total booking value of rides completed successfully:
    CREATE VIEW total_successful_Ride_value As
	SELECT SUM(Booking_Value) as total_successful_Ride_value 
	FROM bookings WHERE Booking_Status = 'Success';

	-- 9. Calculate the total booking value of rides completed successfully:(view)
	 select * from total_successful_Ride_value;

-- 10. List all incomplete rides along with the reason:
   CREATE VIEW Incomplete_Rides_Reason As
   SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings
   WHERE Incomplete_Rides ='Yes';

   -- 10. List all incomplete rides along with the reason:(view)
   select * from Incomplete_Rides_Reason;




