
#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

# Use SQL*Plus to run the SQL statements
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF

CREATE VIEW LeaderboardVIEW (TeamName, Wins, Losses, Tie, Points, Matches_Played) AS
(SELECT  TeamName, WINSTHISSEASON, LOSSESTHISSEASON, TIESTHISSEASON, (WINSTHISSEASON * 3 + TIESTHISSEASON * 1), (WINSTHISSEASON + LOSSESTHISSEASON + TIESTHISSEASON)
FROM TEAMS);

exit;
EOF
