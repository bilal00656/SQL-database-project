-- ========= STORED PROCEDURE =========
CREATE PROCEDURE AddPayment
    @MemberID INT,
    @Amount DECIMAL(10,2),
    @Date DATE
AS
BEGIN
    INSERT INTO Payments (MemberID, Amount, PaymentDate)
    VALUES (@MemberID, @Amount, @Date);
END;
