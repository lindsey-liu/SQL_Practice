--175. Combine Two Tables
SELECT FirstName, LastName, City, State 
FROM Person
LEFT JOIN Address ON Person.PersonId=Address.PersonId;

--596. Classes More Than 5 Students
SELECT class 
FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;

--595. Big Countries
SELECT name, population, area
FROM World
WHERE population > 25000000 OR area > 3000000;

--182. Duplicate Emails
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email)>1

--181. Employees Earning More Than Their Managers
SELECT A.Name AS 'Employee'
FROM
    Employee A,
    Employee B
WHERE                     
    A.ManagerId = B.Id AND
    A.Salary > B.Salary;

--183. Customers Who Never Order
SELECT Customers.Name AS 'Customers'
FROM Customers

LEFT JOIN Orders
ON Orders.CustomerId = Customers.Id

WHERE Orders.CustomerId is NULL;
