CREATE TABLE active_info (
	id INT,
	full_name VARCHAR UNIQUE NOT NULL PRIMARY KEY,
	year_drafted DECIMAL,
	overall DECIMAL,
	pick DECIMAL,
	round_ DECIMAL,
	id_y DECIMAL,
	drafted_by VARCHAR
);


CREATE TABLE salaries_21 (
	team VARCHAR,
	full_name VARCHAR,
	salary DECIMAL,
	FOREIGN KEY (full_name) REFERENCES active_info(full_name)
	
);


CREATE TABLE stats_per36 (
	id SERIAL UNIQUE PRIMARY KEY,
	player VARCHAR,
	pos VARCHAR,
	age INT,
	team VARCHAR,
	games_played INT,
	game_sec DECIMAL, 
	minutes_played DECIMAL,
	field_goal DECIMAL,
	fga DECIMAL,
	ft DECIMAL,
	fta DECIMAL,
	three_point DECIMAL,
	three_pa DECIMAL,
	two_point DECIMAL,
	two_pa DECIMAL,
	orb DECIMAL,
	drb DECIMAL,
	trb DECIMAL,
	ast DECIMAL,
	stl DECIMAL,
	blk DECIMAL,
	tov DECIMAL,
	pf DECIMAL,
	pts DECIMAL
	
);


CREATE TABLE stats_per100 (
	id SERIAL,
	player VARCHAR,
	pos VARCHAR,
	age INT,
	team VARCHAR,
	games_played INT,
	game_sec DECIMAL, 
	minutes_played DECIMAL,
	field_goal DECIMAL,
	fga DECIMAL,
	fg_percent DECIMAL,
	three_point DECIMAL,
	three_pa DECIMAL,
	three_point_percent DECIMAL,
	two_point DECIMAL,
	two_pa DECIMAL,
	two_point_percent DECIMAL,
	ft DECIMAL,
	fta DECIMAL,
	ft_percent DECIMAL,
	orb DECIMAL,
	drb DECIMAL,
	trb DECIMAL,
	ast DECIMAL,
	stl DECIMAL,
	blk DECIMAL,
	tov DECIMAL,
	pf DECIMAL,
	pts DECIMAL,
	or_tg DECIMAL,
	dr_tg DECIMAL,
	FOREIGN KEY (id) REFERENCES stats_per36(id)
	
);
ALTER TABLE active_info
DROP COLUMN id_y;

ALTER TABLE active_info
DROP COLUMN pick;

ALTER TABLE active_info
RENAME COLUMN overall TO overall_pick;

ALTER TABLE salaries_21
DROP CONSTRAINT salaries_21_full_name_fkey;

ALTER TABLE stats_per100
RENAME COLUMN game_sec TO games_started;

ALTER TABLE stats_per36
RENAME COLUMN game_sec TO games_started;

ALTER TABLE stats_per100
DROP COLUMN or_tg;

ALTER TABLE stats_per100
DROP COLUMN dr_tg;

ALTER TABLE stats_per100
DROP CONSTRAINT stats_per100_id_fkey;

SELECT * FROM stats_per100;

SELECT COUNT(full_name) 
FROM active_info;
