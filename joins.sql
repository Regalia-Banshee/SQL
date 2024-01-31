USE siddhu_pajjidb;

CREATE TABLE Employee (
  EmployeeID INT,
  EmployeeName VARCHAR(255),
  DepartmentID INT
);

CREATE TABLE Department (
  DepartmentID INT,
  DepartmentName VARCHAR(255)
);
INSERT INTO Employee
VALUES 
	(1,"John honai",2),
    (2,"Alan Turing",1),
    (3,"John Nash",3),
    (4,"Raman C.V",1),
    (5,"Harshad Mehta",2),
    (6,"Hansal Mehta",5),
    (7,"Rahul Modi",NULL);
    
INSERT INTO Department 
VALUES
	(1,"IT"),
    (2,"Finance"),
    (3,"Sales"),
    (4,"HR"),
    (5,"Marketting"),
    (6,"Operations"),
    (7,NULL);
SELECT Employee.EmployeeID, Employee.EmployeeName, Department.DepartmentID, Department.DepartmentName
FROM Employee,Department;

SELECT Employee.EmployeeID , Employee.EmployeeName FROM Employee
WHERE Employee.DepartmentID IS NOT NULL;

SELECT Employee.EmployeeID, Employee.EmployeeName, Department.DepartmentID, Department.DepartmentName
FROM Employee
LEFT JOIN Department ON Employee.DepartmentID = Department.DepartmentID
UNION DISTINCT
SELECT Employee.EmployeeID, Employee.EmployeeName, Department.DepartmentID, Department.DepartmentName
FROM Employee
RIGHT JOIN Department ON Employee.DepartmentID = Department.DepartmentID; #Since full join wasnt working , did LEFT JOIN UNION RIGHT JOIN

SELECT Employee.EmployeeID, Employee.EmployeeName, Department.DepartmentID, Department.DepartmentName
FROM Employee
LEFT JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

SELECT Employee.EmployeeID, Employee.EmployeeName, Department.DepartmentID, Department.DepartmentName
FROM Employee
RIGHT JOIN Department ON Employee.DepartmentID = Department.DepartmentID;