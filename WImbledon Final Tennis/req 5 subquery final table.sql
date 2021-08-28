# Find the players first name, players surname and players rank by a Nike sponsor
use tennis3;

select player_first_name, player_last_name, player_rank
from 
players
where players.player_id
IN 
(select sponsorship_name_id from sponsorships where sponsorship_sponsor_name = 'Nike')
