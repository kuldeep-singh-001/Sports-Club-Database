-- 1. Scalar Subquery in SELECT
-- Show each member with the average age of all members
SELECT 
    first_name || ' ' || last_name AS member_name,
    age,
    (SELECT AVG(age) FROM Members) AS avg_age
FROM Members;

-- 2. Subquery in WHERE with IN
-- Find members enrolled in sports coached by 'Coach Smith'
SELECT 
    first_name || ' ' || last_name AS member_name
FROM Members
WHERE member_id IN (
    SELECT member_id
    FROM Enrollments
    WHERE sport_id IN (
        SELECT sport_id 
        FROM Sports 
        WHERE coach_name = 'Coach Smith'
    )
);

-- 3. Subquery in WHERE with EXISTS
-- Find sports that have at least one enrolled member
SELECT sport_name
FROM Sports s
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.sport_id = s.sport_id
);

-- 4. Correlated Subquery
-- Find members older than the average age of members from their city
SELECT 
    first_name || ' ' || last_name AS member_name,
    age,
    city
FROM Members m
WHERE age > (
    SELECT AVG(age)
    FROM Members
    WHERE city = m.city
);

-- 5. Subquery in FROM (Inline View)
-- List each sport with the number of enrolled members
SELECT 
    s.sport_name,
    counts.enrolled_count
FROM Sports s
JOIN (
    SELECT sport_id, COUNT(*) AS enrolled_count
    FROM Enrollments
    GROUP BY sport_id
) counts ON s.sport_id = counts.sport_id;
