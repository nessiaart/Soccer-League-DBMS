
#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

echo "================================================================="
echo "| Oracle All Inclusive Tool
|"
echo "| Delete Players:
|"
echo "| <CTRL-Z Anytime to Enter Interactive CMD Prompt>
|"
echo "-----------------------------------------------------------------"
#Request player id 
echo "Enter Player ID: "
read DeleteID

#Delete player based on ID 
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF
    DELETE FROM Players
    WHERE PlayerID = $DeleteID;
EOF
