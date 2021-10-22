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
SELECT * FROM active_info;

CREATE TABLE salaries_21 (
	team VARCHAR,
	full_name VARCHAR,
	salary DECIMAL,
	FOREIGN KEY (full_name) REFERENCES active_info(full_name)
	
);
SELECT * FROM salaries_info;

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
SELECT * FROM stats_per36;

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
