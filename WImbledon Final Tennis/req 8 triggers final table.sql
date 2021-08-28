use tennis3;

DELIMITER //
CREATE TRIGGER committee_membersItem_Before_Insert
BEFORE INSERT on committee_members
FOR EACH ROW
BEGIN
	SET NEW.committee_members_umpire1_first_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_umpire1_first_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_umpire1_first_name FROM 2)));
	SET NEW.committee_members_umpire1_last_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_umpire1_last_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_umpire1_last_name FROM 2)));
	SET NEW.committee_members_umpire2_first_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_umpire2_first_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_umpire2_first_name FROM 2)));
	SET NEW.committee_members_umpire2_last_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_umpire2_last_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_umpire2_last_name FROM 2)));
	SET NEW.committee_members_royalumpire_first_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_royalumpire_first_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_royalumpire_first_name FROM 2)));	
	SET NEW.committee_members_royalumpire_last_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_royalumpire_last_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_royalumpire_last_name FROM 2)));             
	SET NEW.committee_members_reserve_first_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_reserve_first_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_reserve_first_name FROM 2)));  
	SET NEW.committee_members_reserve_last_name = CONCAT(UPPER(SUBSTRING(NEW.committee_members_reserve_last_name,1,1)),
						LOWER(SUBSTRING(NEW.committee_members_reserve_last_name FROM 2)));     
END//
DELIMITER ;


INSERT INTO committee_members (committee_members_id,
committee_members_umpire1_first_name,
committee_members_umpire1_last_name,
committee_members_umpire2_first_name,
committee_members_umpire2_last_name,
committee_members_royalumpire_first_name,
committee_members_royalumpire_last_name,
committee_members_reserve_first_name,
committee_members_reserve_last_name)
VALUES (27, 'KADer', 'NOUNI', 'ManUEl', 'MESsina', 'AdEL','Nour', 'NICo', 'HelWERth');


INSERT INTO committee_members (committee_members_id,
committee_members_umpire1_first_name,
committee_members_umpire1_last_name,
committee_members_umpire2_first_name,
committee_members_umpire2_last_name,
committee_members_royalumpire_first_name,
committee_members_royalumpire_last_name,
committee_members_reserve_first_name,
committee_members_reserve_last_name)
VALUES (499, 'DaMIen', 'DumUSOis', 'JAMes', 'KeothavONg	', 'Julie', 'KjenDLie', 'MiRIam', 'Bley');

INSERT INTO committee_members (committee_members_id,
committee_members_umpire1_first_name,
committee_members_umpire1_last_name,
committee_members_umpire2_first_name,
committee_members_umpire2_last_name,
committee_members_royalumpire_first_name,
committee_members_royalumpire_last_name,
committee_members_reserve_first_name,
committee_members_reserve_last_name)
VALUES (64, 'Donna', 'KelSO', 'JaKE', 'Garner', 'Freddie', 'SORE', 'Lynn', 'WELch');

SELECT *
FROM tennis3.committee_members;

/*DROP TRIGGER IF EXISTS tournamentItem_Before_Insert;*/
/*DROP TRIGGER IF EXISTS committee_membersItem_Before_Insert;*/