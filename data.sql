-- Insert sample Members
INSERT INTO Members (first_name, last_name, age, city) VALUES
('Alice', 'Johnson', 22, 'New York'),
('Bob', 'Smith', 25, 'Chicago'),
('Charlie', 'Brown', 20, 'New York'),
('Diana', 'Miller', 28, 'Boston'),
('Ethan', 'Williams', 23, 'Chicago');

-- Insert sample Sports
INSERT INTO Sports (sport_name, coach_name) VALUES
('Tennis', 'Coach Miller'),
('Basketball', 'Coach Smith'),
('Swimming', 'Coach Davis');

-- Insert sample Enrollments
INSERT INTO Enrollments (member_id, sport_id, join_date) VALUES
(1, 1, '2023-01-10'),
(2, 2, '2023-02-05'),
(3, 1, '2023-03-15'),
(4, 3, '2023-04-12'),
(5, 2, '2023-05-08');

