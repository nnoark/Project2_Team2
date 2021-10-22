CREATE TABLE teams_current_data (
    team_id INT UNIQUE NOTNULL PRIMARY KEY,
    full_name VARCHAR (30),
    nickname VARCHAR(15),
    short_name VARCHAR(3),
    city VARCHAR(20)

);

CREATE TABLE players_current_data (
    player_id INT UNIQUE NOTNULL PRIMARY KEY,
    first_name VARCHAR(30) NOTNULL,
    last_name VARCHAR(30) NOTNULL,
    team_id INT,
    country VARCHAR(20) NOTNULL,
    date_of_birth DATE,
    height DECIMAL NOTNULL,
    weight DECIMAL NOTNULL,
    FOREIGN KEY (team_id) REFERENCES teams_current_data(team_id)
);


CREATE TABLE games_current_data (
    game_id INT UNIQUE NOTNULL PRIMARY KEY,
    season_year DECIMAL,
    arena VARCHAR(50), 
    city VARCHAR(20),
    country VARCHAR(20),
    start_time_UTC VARCHAR(30),
    game_duration VARCHAR(10),
    home_team VARCHAR (30),
    home_score INT,
    home_leader_id INT, 
    away_team VARCHAR (30),
    away_score INT,
    away_leader_id INT
    FOREIGN KEY (home_leader_id) REFERENCES players_current_data(player_id)

);