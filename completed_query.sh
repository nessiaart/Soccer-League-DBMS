


#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

# Use SQL*Plus to run the SQL statements
#Completed matches query: Uses list agg to display the teams involved in a match, which groups using the information in the group by
#It is ordered by matchdate and teamnames for alphabetic and chronologic reasons 
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF
SELECT
    LISTAGG(TeamName, ', ') WITHIN GROUP (ORDER BY TeamName) AS TeamNames,
    MatchStatus,
    MatchDate,
    MAX(MatchTime) AS MatchTime,
    LISTAGG(FinalScore, ', ') WITHIN GROUP (ORDER BY TeamName) AS FinalScores
FROM MatchesT
WHERE MatchStatus = 'COMPLETE'
GROUP BY MatchStatus, MatchDate, MatchTime
ORDER BY MatchDate, TeamNames;
EOF
