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
