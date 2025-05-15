-- Index on User email (already unique, but we create explicitly for clarity)
CREATE INDEX idx_user_email ON User(email);

-- Index on Booking user_id
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking property_id
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Property host_id
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Index on Property location
CREATE INDEX idx_property_location ON Property(location);
