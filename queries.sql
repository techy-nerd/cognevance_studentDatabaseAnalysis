-- Insert Data
INSERT INTO Students VALUES
(1, 'Amit', 20, 'Male'),
(2, 'Riya', 19, 'Female'),
(3, 'Karan', 21, 'Male'),
(4, 'Sneha', 20, 'Female');

INSERT INTO Courses VALUES
(101, 'Maths'),
(102, 'Physics'),
(103, 'Computer Science');

INSERT INTO Marks VALUES
(1, 1, 101, 85, 90),
(2, 1, 102, 78, 88),
(3, 2, 101, 92, 95),
(4, 2, 103, 89, 93),
(5, 3, 102, 67, 80),
(6, 4, 103, 95, 97);

-- Filtering
SELECT * FROM Students WHERE age > 19;

-- Sorting
SELECT * FROM Students ORDER BY name;

-- Searching
SELECT * FROM Students WHERE name = 'Amit';

-- Aggregate
SELECT COUNT(*) FROM Students;
SELECT AVG(marks) FROM Marks;
SELECT MAX(marks) FROM Marks;

-- Reports
SELECT student_id, AVG(marks)
FROM Marks
GROUP BY student_id
ORDER BY AVG(marks) DESC
LIMIT 1;

-- JOIN
SELECT s.name, c.course_name, m.marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Courses c ON m.course_id = c.course_id;
