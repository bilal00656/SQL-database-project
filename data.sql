-- ========= INSERT TRAINERS =========
INSERT INTO Trainers (TrainerName, Specialization, Phone) VALUES
('Bilal Hassan','Strength Training','555-1010'),
('Hashim Ali','Yoga','555-2020'),
('Abdul Rehman Khalid','Cardio','555-3030'),
('Aitezaz Malik','CrossFit','555-4040'),
('Abdul Rehman','Pilates','555-5050');

-- ========= INSERT MEMBERS =========
INSERT INTO Members (Name, Age, Gender, Phone, JoinDate, TrainerID, PlanID) VALUES
('Fatima',25,'Female','555-1212','2024-01-12',1,2),
('Ali Hassan',32,'Male','555-2323','2024-02-05',2,3);
