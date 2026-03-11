-- create database TechsolutionsDB;

use TechsolutionsDB;

-- create table Department(
-- DeptID Int primary key auto_increment,
-- DeptName varchar(50) Not Null,
-- Location Varchar (250)
-- );

-- create Table Employee(
-- empID Int primary key auto_increment,
-- FirstName varchar(20),
-- LastName varchar(30),
-- Gender Varchar (20),
-- Salary float,
-- HireDate Date,
-- DeptID int,
-- Foreign key (DeptID) references Department(DeptID)
-- );

-- create table Project(
-- ProjectID int primary key auto_increment,
-- ProjectName varchar(50),
-- StartDate Date,
-- EndDate date,
-- Budget float
-- );

-- create table Works_On(
-- empID int,
-- ProjectID int,
-- HoursWorked decimal(5,2),
-- Foreign Key(empID) references Employee(empID),
-- Foreign Key(ProjectID) references Project(ProjectID)
-- );

-- INSERT INTO Department (DeptName, Location) VALUES
-- ('Human Resources','New York'),
-- ('IT','California'),
-- ('Finance','Chicago'),
-- ('Marketing','Texas'),
-- ('Operations','Florida');


-- INSERT INTO Employee (FirstName, LastName, Gender, Salary, HireDate, DeptID) VALUES
-- ('John','Smith','Male',55000,'2022-01-15',1),
-- ('Emily','Johnson','Female',62000,'2021-03-10',2),
-- ('Michael','Brown','Male',58000,'2023-06-20',3),
-- ('Sarah','Davis','Female',60000,'2020-09-05',4),
-- ('David','Wilson','Male',65000,'2022-11-18',5);

-- INSERT INTO Project (ProjectName, StartDate, EndDate, Budget) VALUES
-- ('Website Development','2024-01-01','2024-06-30',50000),
-- ('Mobile App','2024-02-15','2024-08-30',75000),
-- ('Database Upgrade','2024-03-10','2024-07-20',40000),
-- ('Marketing Campaign','2024-04-01','2024-09-01',30000),
-- ('Security System','2024-05-05','2024-12-15',60000);

-- INSERT INTO Works_On (empID, ProjectID, HoursWorked) VALUES
-- (6,6,120.50),
-- (7,7,150.75),
-- (8,8,90.00),
-- (9,9,110.25),
-- (10,10,140.50);

-- #update the salary  of an employee whose empID=102 by increasing it by 10 percent,
-- UPDATE Employee
-- SET Salary = Salary + (Salary * 0.10)
-- WHERE empID = 102;


-- SELECT * FROM Department;
-- SELECT * FROM Employee;
-- SELECT * FROM Project;
-- SELECT * FROM Works_On;

-- #Delete a project whose projectID=5
-- Delete from work_On
-- Where projectID=5;

-- Delete from project
-- Where projectID =5;

-- #Part C: Basic Queries
-- #DIsplay all employee who earns more than 50000

-- Select * from employee where salary >50000;

-- #Display firstName, LastName and Salary of EMployees sorted by salary in decending order
-- Select FirstName, LastName, Salary
-- From employee
-- order by Salary DESC;

-- SELECT Employee.FirstName, Employee.LastName, Department.DeptName
-- FROM Employee
-- JOIN Department
-- ON Employee.DeptID = Department.DeptID
-- WHERE Department.DeptName = 'IT';

#part d

-- #Display employee names along with their department names
-- Select E.FirstName, E.LastName, E.Salary, D.DeptName
-- from EMPLOYEE E join DEPARTMENT D on E.DeptID = D.DeptID;

-- #show employees and the project they are working on
-- Select E.FirstName, E.LastName, P.ProjectName
-- from EMPLOYEE E join WORKS_ON W on E.EmpID = W.EmpID
-- join PROJECT P on W.ProjectID = P.ProjectID;

-- # Display Project Names with total hours worked by employees name

-- select P.ProjectName, sum(w.HoursWorked) AS TotalHoursWorked from PROJECT P
-- join WORKS_ON W on P.ProjectID = W.ProjectID
-- group by P.ProjectName;

-- #Part E
-- #Find the Average Salary of employees in each department
-- select D.DeptName, avg(E.Salary) AS AverageSalary
-- from DEPARTMENT D
-- join EMPLOYEE E on D.DeptID = E.DeptID
-- GROUP BY D.DeptName;

-- # Display the Department with the highest number of employees
-- select d.deptname, count(e.empid) as totalemployees from department d
-- join employee e on d.deptid = e.deptid
-- group by d.deptname order by totalemployees desc
-- limit 1;

-- # find the employees whose salary is gerater than the average of all employee
-- select empid, firstname, lastname, salary
-- from employee
-- where salary > (select avg(salary) from employee);

-- #part f

-- #Create a view named HighSalaryEmployees that shows employees with salary greater 60,000
-- CREATE VIEW HighSalaryEmployees AS
-- SELECT 
--     empID,
--     FirstName,
--     LastName,
--     Salary
-- FROM 
--     Employee
-- WHERE 
--     Salary > 60000;
--     
-- #Create an index on the LastName column of the Employee Table
-- CREATE INDEX idx_LastName ON Employee(LastName);

