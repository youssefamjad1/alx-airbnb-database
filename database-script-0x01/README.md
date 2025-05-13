# Database Schema for Airbnb Clone

This schema defines the tables and relationships for a simplified Airbnb-like platform.

## Tables and Purpose

- **users**: Stores all platform users (guests, hosts, admins).
- **properties**: Listings created by hosts.
- **bookings**: Reservations made by guests on properties.
- **reviews**: Guest feedback for properties.
- **payments**: Payment records for bookings.
- **messages**: Messages exchanged between users.

## Constraints

- All tables use `UUID` as primary keys.
- Foreign keys ensure referential integrity between users, properties, and bookings.
- ENUM-like constraints (via `CHECK`) are used for roles, status, and payment methods.
- `UNIQUE` constraint on email and booking_id in payments.

## Indexes

Indexes were added on:
- Foreign key columns for faster joins
- Columns often queried (like `host_id`, `user_id`, `sender_id`, etc.)

## Notes

- `payments.booking_id` is marked UNIQUE to enforce one payment per booking.
- All timestamps default to `CURRENT_TIMESTAMP` for auto tracking.

---

Project: alx-airbnb-database  
Directory: `database-script-0x01/`
