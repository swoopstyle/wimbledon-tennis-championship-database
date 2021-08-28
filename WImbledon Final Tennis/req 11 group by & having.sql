# What is the count of unique sponsors among the players that appear at least 2 times?

use tennis3;
SELECT sponsorship_name_id,
	sponsorship_sponsor_name,
        COUNT(sponsorship_sponsor_name)sponsorship_sponsor_name1_count
FROM
	sponsorships
GROUP BY
	sponsorship_sponsor_name
HAVING 
	COUNT(sponsorship_sponsor_name) >= 2
ORDER BY 
	sponsorship_name_id;   
