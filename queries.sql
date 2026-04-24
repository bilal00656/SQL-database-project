-- ========= BASIC QUERIES =========
SELECT * FROM Members;

SELECT * 
FROM Payments 
WHERE Status = 'Paid';

-- ========= JOINS =========
SELECT m.Name, t.TrainerName
FROM Members m
JOIN Trainers t ON m.TrainerID = t.TrainerID;

-- ========= AGGREGATE =========
SELECT COUNT(*) AS TotalMembers FROM Members;

SELECT SUM(Amount) AS TotalRevenue FROM Payments;
