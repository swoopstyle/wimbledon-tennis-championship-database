-- Turn ON Event Scheduler 
SET GLOBAL event_scheduler = ON;
USE tennis3;

-- One time event -- 

CREATE TABLE tournament_events
(tournament_id INT NOT NULL AUTO_INCREMENT, 
tournament_time VARCHAR(255) NOT NULL,
created_at DATETIME NOT NULL,
PRIMARY KEY (tournament_id)
);

-- Creating an event that will be scheduled
-- Change Delimiter
DELIMITER //

CREATE EVENT one_time_event
ON SCHEDULE AT NOW() + INTERVAL 1 MINUTE
DO BEGIN
	INSERT INTO tournament_events(tournament_time ,created_at)
	VALUES ('10:00 BST', NOW());
END//

-- Change Delimiter
DELIMITER ;

-- Select Data to see that tournament_event table is empty
-- Then Select data again in approx 1 min to see insertion. 
SELECT *
FROM tournament_events;
