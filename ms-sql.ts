CREATE VIEW StudentsPayments AS

SELECT s. firstname, s. lastname, p.amount, p. date
FROM students s
JOIN payments p
ON s. student_id =p.student_id;

SELECT * FROM StudentsPayments;