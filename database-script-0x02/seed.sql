-- Sample Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('11111111-1111-1111-1111-111111111111', 'Alice', 'Walker', 'alice@example.com', 'hashedpass1', '1234567890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpass2', '0987654321', 'host'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Johnson', 'carol@example.com', 'hashedpass3', '1029384756', 'admin');

-- Sample Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES 
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Beach House', 'A cozy beachside house.', 'Miami, FL', 150.00),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Secluded cabin in the mountains.', 'Aspen, CO', 200.00);

-- Sample Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 600.00, 'confirmed'),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-15', 1000.00, 'pending');

-- Sample Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
('rrrrrrr1-rrrr-rrrr-rrrr-rrrrrrrrrrr1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Amazing place! Very clean and comfortable.'),
('rrrrrrr2-rrrr-rrrr-rrrr-rrrrrrrrrrr2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 4, 'Great location but no Wi-Fi.');

-- Sample Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
('ppppppp1-pppp-pppp-pppp-ppppppppppp1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 600.00, 'credit_card'),
('ppppppp2-pppp-pppp-pppp-ppppppppppp2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 1000.00, 'paypal');

-- Sample Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
('mmmmmmm1-mmmm-mmmm-mmmm-mmmmmmmmmmm1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, is the beach house available in July?'),
('mmmmmmm2-mmmm-mmmm-mmmm-mmmmmmmmmmm2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it is available from July 1st.');
