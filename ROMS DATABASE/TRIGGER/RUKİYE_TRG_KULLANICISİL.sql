CREATE TRIGGER trg_KullaniciSil
ON USERS
AFTER DELETE
AS
BEGIN
SELECT deleted.FIRST_NAME + ' kullanýcý adýna ve ' + deleted.EMAIL +
' email adresine sahip kullanýcý silindi.' FROM deleted;
END;