DELIMITER $$

CREATE TRIGGER before_insert_pelanggan
BEFORE INSERT ON Pelanggan
FOR EACH ROW
BEGIN
    IF NEW.Email IS NULL OR NEW.Email = '' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Email pelanggan tidak boleh kosong';
    END IF;
END$$

DELIMITER ;
