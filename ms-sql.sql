USE  TEST_DB
GO
CREATE  TABLE dbo.students (
    student_ID integer primary key identity(1,1) ,
    firstname nvarchar(100),
    lastname nvarchar(100)
)

INSERT INTO STUDENTS(firstname, lastname) VALUES ( 'Clark', 'Sales');
INSERT INTO STUDENTS( firstname, lastname) VALUES ( 'Dave', 'Accounting');
INSERT INTO STUDENTS( firstname, lastname) VALUES ( 'Ava', 'tsandishvili');

SELECT * FROM STUDENTS;


/*******************************************/
USE  TEST_DB
GO
create table dbo.payments (
    payment_ID int primary key identity(1,1),
    student_ID int not null,
    amount float,
    date datetime
);
insert into payments (student_ID,amount, date) values (1, 2500, '2024-05-10');
insert into payments (student_ID,  amount, date) values (2, 7500, '2024-05-20');
insert into payments (student_ID, amount, date) values ( 3, 3000, '2024-05-15');
select * from payments;

/*******************************************/

USE  TEST_DB
GO
CREATE VIEW StudentsPayments AS

SELECT s.firstname, s. lastname, p.amount, p. date
FROM students s
JOIN payments p
ON s.student_ID =p.student_ID
go

SELECT * FROM StudentsPayments;
GO



/*******************************************/



