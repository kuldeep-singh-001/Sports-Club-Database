CREATE DATABASE Sports_club;
use Sports_club;

-- Members
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT CHECK(age > 0),
    city VARCHAR(50)
);

-- Sports
CREATE TABLE Sports (
    sport_id INT PRIMARY KEY AUTO_INCREMENT,
    sport_name VARCHAR(50) NOT NULL,
    coach_name VARCHAR(50)
);

-- Enrollments (bridge table)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    sport_id INT,
    join_date DATE NOT NULL,
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE,
    FOREIGN KEY (sport_id) REFERENCES Sports(sport_id) ON DELETE CASCADE
);
