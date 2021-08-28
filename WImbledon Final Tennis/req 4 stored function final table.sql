use tennis3;

DELIMITER //
CREATE FUNCTION is_qualified(
ranking_position CHAR(100)
)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE player_qualification VARCHAR(20);
	IF ranking_position < 10 THEN
		SET player_qualification = 'Yes';
	ELSEIF ranking_position > 10 THEN 
		SET player_qualification = 'No';
	END IF;
    RETURN (player_qualification);
    
END//ranking_position
DELIMITER ;

select * from tennis3.rankings;

SELECT
	rankings_id, ranking_position, ranking_year_won,
    is_qualified(ranking_position)
FROM 
	rankings
