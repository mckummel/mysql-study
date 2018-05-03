USE section12;

CREATE TABLE students
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100)
);

CREATE TABLE papers
(
    title VARCHAR(100),
	grade INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'My First Book Report', 94),
(2, 'My Second Book Report', 98),
(4, 'My First Book Report', 89);


SELECT students.first_name, papers.title, papers.grade
FROM students
INNER JOIN papers ON students.id = papers.student_id;

SELECT students.first_name, papers.title, papers.grade
FROM students
LEFT JOIN papers ON students.id = papers.student_id;

SELECT students.first_name, IFNULL(papers.title,'MISSING'), IFNULL(papers.grade,0)
FROM students
LEFT JOIN papers ON students.id = papers.student_id;

SELECT students.first_name, IFNULL(AVG(papers.grade),0)
FROM students
LEFT JOIN papers ON students.id = papers.student_id
GROUP BY students.first_name;

SELECT students.first_name, IFNULL(AVG(papers.grade),0) AS average_grade,
	CASE WHEN AVG(papers.grade) >= 75 THEN 'PASSING'
    ELSE 'FAILING'
    END AS 'passing_status'
FROM students
LEFT JOIN papers ON students.id = papers.student_id
GROUP BY students.first_name
ORDER BY average_grade DESC;
