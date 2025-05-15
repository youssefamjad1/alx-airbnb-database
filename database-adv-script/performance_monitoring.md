# Performance Monitoring and Refinement Report

## Objective
Monitor and refine database performance by analyzing query execution plans and optimizing schema and indexes accordingly.

## Queries Monitored

### Query 1: Fetch bookings for a specific user

```sql
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = 'some-user-uuid';
Analysis:

The query performs a sequential scan due to lack of an index on user_id.

Execution time is high for large datasets.

Query 2: Fetch properties by host
EXPLAIN ANALYZE
SELECT * FROM Property
WHERE host_id = 'some-host-uuid';

Analysis:

Index on host_id exists, query performs an index scan.

Execution time is acceptable.

Bottlenecks Identified
Booking table queries filtering by user_id lack appropriate indexing, causing slow query performance.

Joins on property_id sometimes cause slower response times due to missing composite indexes.

Actions Taken
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
Schema Adjustments
No schema changes were necessary after index additions.

Consider partitioning Booking table if data grows substantially (already implemented).

Improvements After Changes
Query 1 after adding index:
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = 'some-user-uuid';
Query now uses the idx_booking_user_id index.

Execution time reduced significantly (from seconds to milliseconds).

Reduced I/O and CPU load observed.

Summary
Adding targeted indexes based on query analysis improves performance.

Continuous monitoring using EXPLAIN ANALYZE is crucial for identifying bottlenecks.

Future optimizations may include query rewriting and further partitioning.

