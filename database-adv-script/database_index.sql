-- Create Indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);

-- Measure performance using EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT p.*
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
WHERE b.user_id = '00000000-0000-0000-0000-000000000000';
