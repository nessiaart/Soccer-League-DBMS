


#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

# Use SQL*Plus to run the SQL statements
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF

/*MVP_Query: Displays the list of players who have scored goals and also assisted their team, good for calculating MVPs.*/

SELECT PLAYERNAME, GOALS, ASSISTS
FROM PLAYERS p
WHERE EXISTS (
    SELECT 1
    FROM PLAYERS
    WHERE playerID = p.playerID
    AND goals > 0)
AND EXISTS (SELECT 1
    FROM PLAYERS
    WHERE playerID = p.playerID
    AND assists > 0);
EOF

