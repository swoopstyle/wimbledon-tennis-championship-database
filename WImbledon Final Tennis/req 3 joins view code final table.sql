use tennis3;

select players.player_first_name, players.player_last_name, sponsorships.sponsorship_amount 
from 
sponsorships 
inner join players 
on players.player_id = sponsorships.sponsorship_id;

CREATE VIEW vw_playerssponsorships
AS SELECT players.player_first_name, players.player_last_name, sponsorships.sponsorship_amount
FROM players, sponsorships
WHERE players.player_id = sponsorships.sponsorship_id;

