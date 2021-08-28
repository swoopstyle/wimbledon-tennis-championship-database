use tennis3;
DELIMITER //
CREATE PROCEDURE InsertNewPlayer(
	IN registration_id_new INTEGER,
    IN registration_first_name_new VARCHAR(40),
    IN registration_last_name_new VARCHAR(40),
    IN registration_gender_new VARCHAR(40))
BEGIN
	INSERT INTO registration (registration_id, registration_first_name, registration_last_name, registration_gender)
    Values (registration_id_new, registration_first_name_new, registration_last_name_new, registration_gender_new);
    
END //
DELIMITER ;

CALL InsertNewPlayer (25, 'Venus', 'Williams', 'female');

SELECT *
FROM registration;

/*
INTEGER NOT NULL,
    registration_first_name VARCHAR(40) NOT NULL,
    registration_last_name VARCHAR(40) NULL,
    registration_gender VARCHAR(20),*/