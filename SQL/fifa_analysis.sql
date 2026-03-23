-- Query 1: Total goals scored by each team

SELECT team, SUM(total_goals) AS total_goals
FROM (
    SELECT team1 AS team, SUM(number_of_goals_team1) AS total_goals
    FROM fifa_matches
    GROUP BY team1

    UNION ALL

    SELECT team2 AS team, SUM(number_of_goals_team2) AS total_goals
    FROM fifa_matches
    GROUP BY team2
) AS combined
GROUP BY team
ORDER BY total_goals DESC;

-- Query 2: Average possession for winners vs losers

SELECT 
    AVG(CASE WHEN results = team1 THEN possession_team1 END) AS avg_winner_possession,
    AVG(CASE WHEN results = team2 THEN possession_team2 END) AS avg_loser_possession
FROM fifa_matches
WHERE results != 'Draw';

-- Query 3: Total attempts by each team

SELECT team, SUM(total_attempts) AS total_attempts
FROM (
    SELECT team1 AS team, SUM(total_attempts_team1) AS total_attempts
    FROM fifa_matches
    GROUP BY team1

    UNION ALL

    SELECT team2 AS team, SUM(total_attempts_team2) AS total_attempts
    FROM fifa_matches
    GROUP BY team2
) AS combined
GROUP BY team
ORDER BY total_attempts DESC;

-- Query 4: Goals per match category

SELECT 
    category,
    SUM(number_of_goals_team1 + number_of_goals_team2) AS total_goals
FROM fifa_matches
GROUP BY category
ORDER BY total_goals DESC;

-- Query 5: Top performing teams overall
SELECT 
    team,
    SUM(total_goals) AS total_goals,
    SUM(total_attempts) AS total_attempts,
    SUM(wins) AS total_wins
FROM (
    SELECT team1 AS team, SUM(number_of_goals_team1) AS total_goals, 
           SUM(total_attempts_team1) AS total_attempts, 
           CASE WHEN results = team1 THEN 1 ELSE 0 END AS wins
    FROM fifa_matches
    GROUP BY team1, results

    UNION ALL

    SELECT team2 AS team, SUM(number_of_goals_team2) AS total_goals, 
           SUM(total_attempts_team2) AS total_attempts, 
           CASE WHEN results = team2 THEN 1 ELSE 0 END AS wins
    FROM fifa_matches
    GROUP BY team2, results
) AS combined
GROUP BY team
ORDER BY total_wins DESC, total_goals DESC;