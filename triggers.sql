-- ========= TRIGGER =========
CREATE TRIGGER trg_CheckPayment
ON Payments
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Amount < 0)
    BEGIN
        RAISERROR ('Invalid Payment Amount', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
