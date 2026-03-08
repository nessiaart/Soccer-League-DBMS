
#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

echo "================================================================="
echo "| SOCCERTEAM DBMS "
echo "| Create Player:"
echo "| <CTRL-Z Anytime to Enter Interactive CMD Prompt>"
echo "-------------------------------------------------------------"

#Get user input for all columns in player table 
echo "Enter Player ID: "
read PlayerID

echo "Enter Team Name: "
read TeamName

echo "Enter Player Name: "
read PlayerName

echo "Enter Jersey Number: "
read JerseyNo

echo "Enter Position: "
read Positions

echo "Enter Goals: "
read Goals

echo "Enter Assists: "
read Assists

echo "Enter CleanSheets: "
read CleanSheets

echo "Enter Red Cards: "
read RedCards

echo "Enter Yellow Cards: "
read YellowCards

echo "Enter Injury Status: "
read InjuryStatus

#Use all user input to create new player in the players table
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF
    INSERT INTO Players (PlayerID, TeamName, PlayerName, JerseyNo, Positions, Goals, Assists, CleanSheets, RedCard, YellowCard, InjuryStatus)
    VALUES ($PlayerID, '$TeamName', '$PlayerName', $JerseyNo, '$Positions', $Goals, $Assists, $CleanSheets, $RedCards, $YellowCards, '$InjuryStatus');
EOF
