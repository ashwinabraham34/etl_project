-- Create new table
CREATE TABLE world_cup(
	id INT PRIMARY KEY,
	team TEXT,
	position TEXT,
	player TEXT,
	date_of_birth DATE,
	age INT,
	caps INT,
	goals INT,
	club TEXT
	);

CREATE TABLE premier_club (
    player TEXT,
    club_Name TEXT,
    overall_appearances INT,
    league_goals INT
    );

SELECT * FROM premier_club;
SELECT * FROM world_cup;

SELECT world_cup.player, premier_club.club_name, premier_club.overall_appearances, premier_club.league_goals, world_cup.id, world_cup.team, world_cup.position, world_cup.date_of_birth, world_cup.age, world_cup.caps, world_cup.goals, world_cup.club
FROM world_cup
INNER JOIN premier_club
ON world_cup.player = premier_club.player;

