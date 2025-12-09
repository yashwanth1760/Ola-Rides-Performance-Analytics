# 🚖 Ola-Rides-Performance-Analytics


A comprehensive analytics project examining ride-booking patterns, customer behavior, and operational metrics for Ola cab services in Bangalore during January 2025.

## 📊 Project Overview

This project analyzes 100,000+ ride bookings to provide actionable insights into:
- Booking success rates and patterns
- Revenue generation and ride economics
- Cancellation trends and root causes
- Customer and driver rating analysis
- Vehicle type performance metrics

## 📁 Dataset Description

### Key Metrics
- **Total Bookings:** 100K
- **Total Revenue:** ₹32.32M
- **Successful Bookings:** 68.98% (68.98K rides)
- **Cancellation Rate:** 36.24%
- **Date Range:** January 1-31, 2025
- **Location:** Bangalore, India

### Data Columns

| Column Name | Description | Data Type |
|-------------|-------------|-----------|
| `date` | Booking date | DATE |
| `time` | Booking time | TIME |
| `booking_id` | Unique booking identifier | VARCHAR |
| `booking_status` | Status (Success/Cancelled/Incomplete) | VARCHAR |
| `customer_id` | Unique customer identifier | VARCHAR |
| `vehicle_type` | Type of vehicle booked | VARCHAR |
| `pickup_location` | Starting location | VARCHAR |
| `drop_location` | Destination location | VARCHAR |
| `avg_vtat` | Average Vehicle Turn Around Time (minutes) | FLOAT |
| `avg_ctat` | Average Customer Turn Around Time (minutes) | FLOAT |
| `incomplete_rides` | Binary flag for incomplete rides | INT |
| `incomplete_ride_reason` | Reason for incomplete ride | VARCHAR |
| `booking_value` | Total booking amount (₹) | FLOAT |
| `ride_distance` | Distance traveled (km) | FLOAT |
| `driver_rating` | Customer rating for driver (0-5) | FLOAT |
| `customer_rating` | Driver rating for customer (0-5) | FLOAT |
| `year` | Year of booking | INT |
| `day` | Day of month | INT |
| `month_name` | Month name | VARCHAR |
| `booking_status_intType` | Binary status (1=Success, 0=Failed) | INT |

### Vehicle Types Available
- Prime Sedan
- Prime SUV
- Prime Plus
- Mini
- Auto
- Bike
- E-Bike

## 🎯 Key Insights

### Revenue Performance
- **Total Booking Value:** ₹32.32M across all bookings
- **Top Revenue Generator:** Prime Sedan (₹6.80M total, ₹4.71M successful)
- **Highest Value Customers:** Top 5 customers contributed ₹17,712.50 combined

### Distance Metrics
- **Total Distance Traveled:** ~890K km across all successful rides
- **Average Distance by Vehicle:**
  - Prime SUV: 9.06 km (highest)
  - Bike: 9.03 km
  - Mini: 8.99 km<img width="1280" height="720" alt="Slide1" src="https://github.com/user-attachments/assets/f2243a2c-b3ec-408a-a136-8e859674d3e1" />

  - E-Bike: 8.90 km (lowest)

### Cancellation Analysis
**By Drivers:**
- Personal & Car-related issues: 27.48%
- Customer-related issues: 18.19%
- More than permitted people: 18.17%

**By Customers:**
- Unknown reasons: 72.52% (major concern)
- Wrong address: 5.71%
- AC not working: 5.58%
- Change of plans: 5.45%

### Rating Analysis
- **Driver Ratings:** Range from 3.61 to 3.70 across vehicle types
- **Customer Ratings:** Range from 3.61 to 3.70 across vehicle types
- **Prime Sedan Ratings:** Max 4.9, Min 3.1 (driver rating)


## 💡 Recommendations

### Operational Improvements
1. **Reduce Unknown Cancellations:** Implement mandatory cancellation reason selection
2. **Driver Training:** Focus on personal & car-related issue prevention (27.48% of driver cancellations)
3. **Vehicle Maintenance:** Address AC issues causing 5.58% customer cancellations

### Revenue Optimization
1. **Premium Segment Focus:** Prime Sedan generates highest revenue despite similar distances
2. **Distance-Based Pricing:** Align pricing with Prime SUV's higher average distance (9.06 km)
3. **Loyalty Programs:** Target top 5 customers (₹17,712.50 combined spend)

### Customer Experience
1. **Rating Improvement:** All ratings between 3.61-3.70 indicate room for service enhancement
2. **Booking Success Rate:** 68.98% leaves 31.02% optimization opportunity
3. **Incomplete Ride Resolution:** Systematic tracking and follow-up needed

## 🛠️ Technologies Used

- **Database:** MySQL
- **Visualization:** Power BI
- **Analysis:** SQL , Python

## 📈 Dashboard Highlights

The project includes 5 interactive dashboards:
1. **Overall Summary:** KPIs, booking trends, status breakdown
2. **Vehicle Analysis:** Performance metrics by vehicle type
3. **Revenue Deep Dive:** Weekly trends, top customers, distance analysis
4. **Cancellation Analysis:** Driver vs customer cancellation patterns
5. **Rating Dashboard:** Service quality metrics across vehicle types


**Note:** All data is fictional and generated for analytical demonstration purposes. Real-world implementation would require data privacy compliance and additional business validation.
