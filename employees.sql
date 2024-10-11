show databases;
use class;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    HireDate DATE
);

insert into Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate) values
(1, 'John', 'Doe', 'Sales', 50000, '2019-01-15'),
(2, 'Jane', 'Smith', 'IT', 60000, '2018-03-23'),
(3, 'Alice', 'Johnson', 'HR', 45000, '2020-05-10'),
(4, 'Bob', 'Brown', 'IT', 70000, '2017-08-12'),
(5, 'Charlie', 'Davis', 'Sales', 55000, '2021-04-05'),
(6, 'Eve', 'Wilson', 'Marketing', 48000, '2020-07-25'),
(7, 'Frank', 'Taylor', 'IT', 72000, '2016-12-02'),
(8, 'Grace', 'Miller', 'Marketing', 47000, '2021-06-15'),
(9, 'Harry', 'Garcia', 'HR', 43000, '2019-11-09'),
(10, 'Ivy', 'Moore', 'Sales', 51000, '2020-10-30');

#Retrieve all employees from the "Sales" department.

select * from Employees;

#Find the employees whose salary is greater than 50,000.

select FirstName, LastName from Employees as highestsalary
where Salary > 50000;

#List all employees in descending order of their hire date.

select * from Employees
order by HireDate desc;

#Select the FirstName, LastName, and Department of employees who were hired after January 1, 2020.

select FirstName, LastName, Department from Employees
where HireDate > 2020-06-01;

#Insert a new employee with EmployeeID = 11, first name "Mike", last name "Adams", in the "IT" department with a salary of 65000, hired on March 10, 2022.

insert into Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate) values
(11, 'Mike', 'Adams', 'IT', 65000, '2022-03-10');

#Update the salary of employees in the "Marketing" department by increasing it by 3000.

update Employees
set Salary = Salary + 3000
where Department = 'Marketing';

update Employees
set Salary = Salary + 2000
where Department = 'IT';

#Update the department of "Alice Johnson" to "Finance."

update Employees
set Department = 'Finance'
where LastName = 'Johnson';

#Delete the record of the employee whose last name is "Moore."

delete from Employees
where LastName = 'Moore';

#Remove all employees with a salary less than 45,000.
delete from employees
where Salary < 45000;
