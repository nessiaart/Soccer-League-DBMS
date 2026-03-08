
#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

# Use SQL*Plus to run the SQL statements
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF

SELECT * FROM MANAGEMENTSTAFF;

exit;
EOF
