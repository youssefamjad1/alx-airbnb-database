# Task 0 – Advanced SQL Joins  
*ALX Airbnb Database Module – “Unleashing Advanced Querying Power”*

---

## 📑 Overview
This task demonstrates three essential join patterns—**INNER**, **LEFT**, and **FULL OUTER** (emulated)—against the core entities of the Airbnb schema (`User`, `Property`, `Booking`, and `Review`).  
All queries live in `joins_queries.sql`.

---

## 🗂 Files

| File | Purpose |
|------|---------|
| `joins_queries.sql` | The SQL script containing the three join queries, ready to run. |
| `README.md` | You’re reading it—explains the task, schema, and how to test quickly. |

---

## 🏗 Schema Reference (excerpt)

| Table | Key columns used here |
|-------|-----------------------|
| **User** (`user_id`, `first_name`, `last_name`, `email`) |
| **Property** (`property_id`, `name`) |
| **Booking** (`booking_id`, `property_id`, `user_id`, `start_date`, `end_date`, `status`, `total_price`) |
| **Review** (`review_id`, `property_id`, `rating`, `comment`, `created_at`) |

See the full project spec for all other attributes and constraints.

---

## 🔧 Queries Inside

1. **INNER JOIN** – get every booking *with* its guest details.  
2. **LEFT JOIN** – list every property and any reviews (shows `NULL`s where no reviews).  
3. **FULL OUTER JOIN** – show all users and all bookings, matched when possible.  
   *Because MySQL lacks a native FULL OUTER JOIN, the script uses*  
   ```sql
   LEFT JOIN … UNION RIGHT JOIN …

# Task 1 – Practice Subqueries  
*ALX Airbnb Database – Advanced SQL Querying*

---

## 📌 Objective
This task demonstrates SQL subqueries using the Airbnb schema. The goal is to practice both:

- Non-correlated subqueries
- Correlated subqueries

---

## 🗂 Files

| File            | Purpose                                 |
|-----------------|------------------------------------------|
| `subqueries.sql` | SQL script with 2 subqueries            |
| `README.md`     | Task explanation and how to run queries |

---

## 📑 Queries

### 1️⃣ Non-correlated subquery:  
**Find all properties where the average rating is greater than 4.0**

```sql
SELECT *
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

# Task 2 – Apply Aggregations and Window Functions  
*ALX Airbnb Database – Advanced SQL Querying*

---

## 📌 Objective
This task demonstrates how to use SQL aggregation and window functions for analysis, using the Airbnb schema.

---

## 🗂 Files

| File                                | Description                                   |
|-------------------------------------|-----------------------------------------------|
| `aggregations_and_window_functions.sql` | SQL script with aggregation and window functions |
| `README.md`                         | Task explanation and instructions             |

---

## 🧮 Queries

### 1️⃣ Total Bookings per User  
**Query to count total bookings made by each user**

```sql
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;
