CREATE DATABASE tennis3;
use tennis3;

-- 1. player list -- 
CREATE TABLE players (
    player_id INTEGER NOT NULL,
    player_first_name VARCHAR(40) NOT NULL,
    player_last_name VARCHAR(40)  NULL,
    player_rank VARCHAR(20),
    CONSTRAINT PK_Address PRIMARY KEY (player_id)
);

-- 2. registration list -- 
CREATE TABLE registration (
    registration_id INTEGER NOT NULL,
    registration_first_name VARCHAR(40) NOT NULL,
    registration_last_name VARCHAR(40) NULL,
    registration_gender VARCHAR(20),
    CONSTRAINT PK_registration PRIMARY KEY (registration_id)
);

-- 3. tournament list -- 
CREATE TABLE tournament (
    tournament_id INTEGER NOT NULL,
    tournament_name_id VARCHAR(40) NOT NULL,
    tournament_location VARCHAR(40) NOT NULL,
    tournament_surface VARCHAR(40) NOT NULL,
    CONSTRAINT PK_tournament PRIMARY KEY (tournament_id)
);

-- 4. sponsorships list -- 
CREATE TABLE sponsorships (
    sponsorship_id INTEGER NOT NULL,
    sponsorship_name_id INTEGER,
    sponsorship_sponsor_name VARCHAR(40) NOT NULL,
    sponsorship_amount VARCHAR(40) NOT NULL,
    CONSTRAINT PK_sponsorship PRIMARY KEY (sponsorship_id)
);

-- 5. rankings list -- 
CREATE TABLE rankings (
    rankings_id INTEGER NOT NULL,
    ranking_position VARCHAR(40) NOT NULL,
    ranking_year_won VARCHAR(40) NOT NULL,
    CONSTRAINT PK_rankings PRIMARY KEY (rankings_id)
);

-- 6. networth list -- 
CREATE TABLE networth (
    networth_id INTEGER NOT NULL,
    networth_position INTEGER NOT NULL,
    networth_ranking_year_won VARCHAR(40) NOT NULL,
    CONSTRAINT PK_networth PRIMARY KEY (networth_id)
);
-- 7. statistics list -- 
CREATE TABLE statistics (
    statistics_id INTEGER NOT NULL,
    statistics_aces INTEGER NOT NULL,
    statistics_fastestserve VARCHAR(40),
    statistics_points_won VARCHAR(40),
    CONSTRAINT PK_statistics PRIMARY KEY (statistics_id)
);
-- 8. committee_members list -- 
CREATE TABLE committee_members (
committee_members_id INTEGER NOT NULL,
committee_members_umpire1_first_name VARCHAR(40),
committee_members_umpire1_last_name VARCHAR(40),
committee_members_umpire2_first_name VARCHAR(40),
committee_members_umpire2_last_name  VARCHAR(40),
committee_members_royalumpire_first_name VARCHAR(40),
committee_members_royalumpire_last_name VARCHAR(40),
committee_members_reserve_first_name VARCHAR(40),
committee_members_reserve_last_name VARCHAR(40),
CONSTRAINT PK_committee_members PRIMARY KEY (committee_members_id));


-- 1. Information inserted to players -- 
INSERT INTO players 
(player_id, player_first_name, player_last_name, player_rank)
VALUES 
('1', 'Serena' , 'Williams', 'pro'),
('2', 'Simona' , 'Halep' , 'intermediate'),
('3', 'Ernest' , 'Gulbis' , 'pro'),
('4', 'Rafael', 'Nadal', 'pro'),
('5', 'Billie Jean', 'King', 'pro'),
('6', 'Novak', 'Djokovic', 'intermediate'),
('7', 'Andre', 'Aggasi', 'intermediate'),
('8', 'Steffi', 'Graf', 'pro'),
('9', 'Ilie', 'Nastase', 'pro'),
('10', 'Roger', 'Federer', 'beginner'),
('11', 'Andy', 'Murray', 'beginner'),
('12', 'Petra', 'Kvitova', 'beginner');

-- 2. Information inserted to registration -- 
INSERT INTO registration
(registration_id, registration_first_name, registration_last_name, registration_gender)
VALUES
('1', 'Serena' , 'Williams', 'female'),
('2', 'Simona' , 'Halep' , 'female'),
('3', 'Ernest' , 'Gulbis' , 'male'),
('4', 'Rafael', 'Nadal', 'male'),
('5', 'Billie Jean', 'King', 'female'),
('6', 'Novak', 'Djokovic', 'male'),
('7', 'Andre', 'Aggasi', 'male'),
('8', 'Steffi', 'Graf', 'female'),
('9', 'Ilie', 'Nastase', 'male'),
('10', 'Roger', 'Federer', 'male'),
('11', 'Andy', 'Murray', 'male'),
('12', 'Petra', 'Kvitova', 'female');


-- 3. Information inserted to tournament -- 
INSERT INTO tournament
(tournament_id, tournament_name_id, tournament_location, tournament_surface)
VALUES
('1', 'Wimbledon', 'England', 'grass'),
('2', 'French Open', 'France', 'clay'),
('3', 'Australian Open', 'Australia', 'clay'),
('4', 'Miami Open', 'USA', 'hard court');

-- 4. Information inserted to sponsorships -- 
INSERT INTO sponsorships
(sponsorship_id, sponsorship_sponsor_name,sponsorship_name_id, sponsorship_amount)
VALUES
('1', 'Nike' , '1', '200,000'),
('2', 'Reebook' , '2' , '100,000'),
('3', 'Adidas' , '3' , '50,000'),
('4', 'Fila', '4', '25,000'),
('5', 'Head', '5', '100,000'),
('6', 'Lotto', '6', '75,000'),
('7', 'Puma', '7', '30,000'),
('8', 'Nike', '8', '100,000'),
('9', 'Wilson', '9', '150,000'),
('10', 'Adidas', '10', '10,000'),
('11', 'Prince', '11', '20,000'),
('12', 'Head', '12', '30,000');

-- 5. Information inserted to rankings -- 
INSERT INTO rankings
(rankings_id, ranking_position, ranking_year_won) 
VALUES
('1', 'first', '2010'),
('2', 'second' , '2013'),
('3', 'fourth' , '2014'),
('4', 'sixth', '2012'),
('5', 'eighth', '2015'),
('6', 'tenth', '2016'),
('7', 'seventh', '2019'),
('8', 'ninth', '2021'),
('9', 'twentieth', '2020'),
('10', 'fourtieth', '2017'),
('11', 'third', '2018'),
('12', 'eleventh', '2015');

-- 6. Information inserted to networth -- 
INSERT INTO networth 
(networth_id, networth_position, networth_ranking_year_won)
VALUES 
('1', '10000' , '184529'),
('2', '12345' , '98754789'),
('3', '8645' , '3453687'),
('4', '385628', '8666332'),
('5', '346587 ', '765656'),
('6', '723475234', '4654665333'),
('7', '2342', '647577'),
('8', '24233', '8649000'),
('9', '5643', '6475216'),
('10', '5348', '647453'),
('11', '43267', '7653489'),
('12', '256793', '65433111');

-- 7. Information inserted to statistics --
INSERT INTO statistics 
  (statistics_id, statistics_aces, statistics_fastestserve, statistics_points_won)
VALUES
('1', '10', '140mph', '2000'),
('2', '5', '120mph' , '1700'),
('3', '2', '100mph' , '1000'),
('4', '0', '70mph', '6000'),
('5', '3', '80mph', '1500'),
('6', '2', '55mph', '750'),
('7', '1', '60mph', '300'),
('8', '2', '110mph', '1700'),
('9', '0', '130mph', '1300'),
('10', '2', '40mph', '600'),
('11', '4', '50mph', '400'),
('12', '1','40mph', '500'); 
 
-- 8. Information inserted to committee of members -- 
INSERT INTO committee_members
(committee_members_id,
committee_members_umpire1_first_name,
committee_members_umpire1_last_name,
committee_members_umpire2_first_name,
committee_members_umpire2_last_name,
committee_members_royalumpire_first_name,
committee_members_royalumpire_last_name,
committee_members_reserve_first_name,
committee_members_reserve_last_name)
VALUES
(1, 'Ali', 'Nili', 'Carlos','Ramos', 'Fergus', 'Murphy', 'John', 'Blom');

-- Alter tables adding foreign keys-- 

ALTER TABLE tournament
ADD CONSTRAINT FK_Tournament
FOREIGN KEY (tournament_id) REFERENCES players(player_ID);

ALTER TABLE networth
ADD CONSTRAINT FK_Networth
FOREIGN KEY (networth_id) REFERENCES players(player_ID);

ALTER TABLE registration
ADD CONSTRAINT FK_Registration
FOREIGN KEY (registration_id) REFERENCES players(player_ID);

ALTER TABLE sponsorships
ADD CONSTRAINT FK_Sponsorship
FOREIGN KEY (sponsorship_id) REFERENCES players(player_ID);

ALTER TABLE rankings
ADD CONSTRAINT FK_Rankings
FOREIGN KEY (rankings_id) REFERENCES players(player_ID);

ALTER TABLE statistics
ADD CONSTRAINT FK_Statistics
FOREIGN KEY (statistics_id) REFERENCES players(player_ID);

