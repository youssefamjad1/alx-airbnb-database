# Partition Performance Report

## Objective
Partition the Booking table by `start_date` to improve query performance on date range queries.

## Approach
- Implemented range partitioning on `start_date` with yearly partitions.
- Migrated data from the original Booking table to the partitioned Booking_partitioned table.
- Tested query performance for fetching bookings within specific date ranges using EXPLAIN ANALYZE.

## Observations
- Queries targeting a specific year scanned only the relevant partition instead of the entire table.
- Significant reduction in execution time and I/O operations for date range queries.
- Improved maintainability and scalability for managing large datasets in Booking.

## Conclusion
Partitioning by `start_date` effectively optimized query performance for date-based searches and prepared the database for handling growing data volumes efficiently.
