USE siddhu_pajjidb;
INSERT INTO employee_data (ID, Name, Email , Department, DateOfBirth, Salary, IsActive)
VALUES
  (5, 'Jayesh Doe', 'johndoe@example.com', 'Sales', '1990-05-15', 15000.00, true),
  (6, 'Jamanthi Smith', 'janesmith@example.com', 'Marketing', '1992-09-20', 16000.00, false);
SELECT * FROM employee_data
SELECT * FROM employee_data WHERE Salary>10000;