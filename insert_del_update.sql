use siddhu_pajjidb;
INSERT INTO employee_data(ID,Name,Email,Department,DateOfBirth,Salary,IsActive)
values
	(7, 'Aryan kapoor', 'akapoor@example.com', 'IT' ,'1990-05-15', 40000, true),
    (8, 'Nimish Sen', 'nsen@example.com', 'Marketting', '1990-05-15', 50000, true);
UPDATE employee_data
SET Salary=75000 WHERE ID=2;
select * from employee_data;