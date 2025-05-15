# Index Performance Analysis

## Goal
To demonstrate how adding indexes improves query performance in the AirBnB database.

---

## Example Query Without Index

```sql
EXPLAIN ANALYZE
SELECT p.*
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
WHERE b.user_id = 'some-user-uuid';
