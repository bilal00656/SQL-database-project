-- =====================================
-- DATABASE: Gym Management System
-- =====================================

CREATE DATABASE gym_management_system;
GO

USE gym_management_system;
GO

-- ========= TABLE: Trainers =========
CREATE TABLE Trainers (
    TrainerID INT IDENTITY(1,1) PRIMARY KEY,
    TrainerName VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100),
    Phone VARCHAR(15)
);

-- ========= TABLE: MembershipPlans =========
CREATE TABLE MembershipPlans (
    PlanID INT IDENTITY(1,1) PRIMARY KEY,
    PlanName VARCHAR(50),
    DurationMonths INT,
    Fee DECIMAL(10,2)
);

-- ========= TABLE: Members =========
CREATE TABLE Members (
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15),
    JoinDate DATE,
    TrainerID INT,
    PlanID INT,
    FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID),
    FOREIGN KEY (PlanID) REFERENCES MembershipPlans(PlanID)
);
