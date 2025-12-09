/*
============================================================
Description: SQL views for analyzing Ola ride data including
successful bookings, ride distances, cancellations, ratings, 
and incomplete rides.
============================================================
*/

--------------------------------------------
-- 1. All Successful Bookings
--------------------------------------------
CREATE VIEW Successful_Bookings AS
SELECT 
    *
FROM
    data_table
WHERE
    booking_status = 'Success';


--------------------------------------------
-- 2. Avg Ride Distance for Each Vehicle Type
--------------------------------------------
CREATE VIEW Avg_Ride_Distance AS
SELECT 
    vehicle_type,
    ROUND(AVG(ride_distance), 2) AS Avg_Ride_Distance
FROM
    data_table
GROUP BY 
    vehicle_type
ORDER BY 
    Avg_Ride_Distance DESC;


--------------------------------------------
-- 3. Total Number of Canceled Rides by Customers
--------------------------------------------
CREATE VIEW TotalCanceledridesCustomers AS
SELECT 
    SUM(cancelled_rides_by_customer) AS TotalCanceledridesCustomers
FROM
    data_table;


--------------------------------------------
-- 4. Top 5 Customers Who Booked the Highest Number of Rides
--------------------------------------------
CREATE VIEW Top_5_customers AS
SELECT 
    customer_id, 
    COUNT(booking_id) AS Total_rides
FROM
    data_table
GROUP BY 
    customer_id
ORDER BY 
    Total_rides DESC
LIMIT 5;


--------------------------------------------
-- 5. Number of Rides Canceled by Drivers Due to Personal & Car-related Issues
--------------------------------------------
CREATE VIEW Rides_canceled_drivers AS
SELECT 
    COUNT(reason_for_cancel_by_driver) AS cancelled_by_drivers
FROM
    data_table
WHERE
    reason_for_cancel_by_driver = 'Personal & Car related issues';


--------------------------------------------
-- 6. Maximum and Minimum Driver Ratings for Prime Sedan Bookings
--------------------------------------------
CREATE VIEW maxmin_driverRating_sedan AS
SELECT 
    MAX(driver_rating) AS max_rating,
    MIN(driver_rating) AS min_rating
FROM
    data_table
WHERE
    vehicle_type = 'Prime Sedan';


--------------------------------------------
-- 7. Avg Customer Rating per Vehicle Type
--------------------------------------------
CREATE VIEW customer_rating_vehicle AS
SELECT 
    vehicle_type,
    ROUND(AVG(customer_rating), 2) AS avg_customer_rating
FROM
    data_table
GROUP BY 
    vehicle_type
ORDER BY 
    avg_customer_rating DESC;


--------------------------------------------
-- 8. Total Booking Value of Rides Completed Successfully
--------------------------------------------
CREATE VIEW Total_value_rides_completed AS
SELECT 
    ROUND(SUM(booking_value), 2) AS Total_value
FROM
    data_table
WHERE
    booking_status = 'Success';


--------------------------------------------
-- 9. List All Incomplete Rides Along With the Reason
--------------------------------------------
CREATE VIEW incomplete_rides AS
SELECT 
    customer_id,
    booking_id,
    incomplete_ride_reason
FROM
    data_table
WHERE
    incomplete_rides = 1;
