# Soccer League DBMS (Oracle + Bash + SQL*Plus)

## Project Overview
Command-line database management system built using Bash and SQL*Plus to manage a soccer league database. The system supports table creation, deletion, population, and querying against an Oracle database instance. The schema is fully normalized with enforced primary and foreign key constraints.

## Technologies Used
- Oracle SQL
- SQL*Plus
- Bash (Unix Shell Scripting)
- Linux/Unix Environment

## Schema Overview
The database models:
- Teams
- Players
- Matches
- Goals
- Referees
- Management Staff
- Bookings
- League Standings

Primary and foreign key constraints enforce referential integrity across entities (e.g., Players → Teams, Goals → Matches).

## Menu Functionality
The CLI menu supports:
1. Drop Tables
2. Create Tables
3. Populate Tables
4. Query Tables
5. Exit

