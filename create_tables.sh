

#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

# Use SQL*Plus to run the SQL statements
# Create all tables for the DBMS 
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF

CREATE TABLE Teams (
    TeamName            VARCHAR2(50),
    WinsThisSeason      NUMBER,
    LossesThisSeason    NUMBER,
    TiesThisSeason      NUMBER,
    PRIMARY KEY (TeamName)
);

CREATE TABLE Players (
    PlayerID            NUMBER,
    TeamName            VARCHAR2(50),
    PlayerName          VARCHAR2(50),
    JerseyNo            NUMBER,
    Positions           VARCHAR2(10),
    Goals               NUMBER DEFAULT 0,
    Assists             NUMBER DEFAULT 0,
    CleanSheets         NUMBER DEFAULT 0,
    RedCard             NUMBER DEFAULT 0,
    YellowCard          NUMBER DEFAULT 0,
    InjuryStatus        VARCHAR2(10),
    PRIMARY KEY (PlayerID),
    CONSTRAINT fk_teamnameplay FOREIGN KEY (TeamName) REFERENCES Teams(TeamName)
);

CREATE TABLE ManagementStaff (
    StaffID             NUMBER,
    StaffName           VARCHAR2(50),
    StaffPosition       VARCHAR2(50),
    TeamName            VARCHAR2(50),
    PRIMARY KEY (StaffID),
    CONSTRAINT fk_teamnamestaff FOREIGN KEY (TeamName) REFERENCES Teams(TeamName)
);

CREATE TABLE Referees (
    RefID               NUMBER,
    RefName             VARCHAR2(50),
    RefPosition         VARCHAR2(50),
    PRIMARY KEY (RefID)
);

CREATE TABLE MatchesT (
    MatchID             NUMBER,
    TeamName            VARCHAR2(50),
    MatchStatus         VARCHAR2(50),
    MatchDate           VARCHAR2(50),
    MatchTime           VARCHAR2(50),
    FinalScore          NUMBER,
    LeadRef             NUMBER,
    VARRef              NUMBER,
    JuniorRef           NUMBER,
    WinLoss             VARCHAR2(5),
    PRIMARY KEY (MatchID),
    CONSTRAINT fk_teamnamematch FOREIGN KEY (TeamName) REFERENCES Teams(TeamName),
    CONSTRAINT fk_leadrefmatch FOREIGN KEY (LeadRef) REFERENCES Referees(RefID),
    CONSTRAINT fk_varrefmatch FOREIGN KEY (VARRef) REFERENCES Referees(RefID),
    CONSTRAINT fk_juniorrefmatch FOREIGN KEY (JuniorRef) REFERENCES Referees(RefID)
);

CREATE TABLE Goals (
    GoalID              NUMBER,
    MatchID             NUMBER,
    TeamName            VARCHAR2(50),
    ScorerID            NUMBER,
    AssisterID          NUMBER,
    PRIMARY KEY (GoalID),
    CONSTRAINT fk_matchidgoal FOREIGN KEY (MatchID) REFERENCES MatchesT(MatchID),
    CONSTRAINT fk_teamnamegoal FOREIGN KEY (TeamName) REFERENCES Teams(TeamName),
    CONSTRAINT fk_scoreridgoal FOREIGN KEY (ScorerID) REFERENCES Players(PlayerID),
    CONSTRAINT fk_assisteridgoal FOREIGN KEY (AssisterID) REFERENCES Players(PlayerID)
);

CREATE TABLE Bookings (
    BookingID           NUMBER,
    MatchID             NUMBER,
    PlayerID            NUMBER,
    RefID               NUMBER,
    CardType            VARCHAR2(50),
    PRIMARY KEY (BookingID),
    CONSTRAINT fk_matchbook FOREIGN KEY (MatchID) REFERENCES MatchesT(MatchID),
    CONSTRAINT fk_playeridbook FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    CONSTRAINT fk_refidbook FOREIGN KEY (RefID) REFERENCES Referees(RefID)
);
CREATE TABLE Formations (
                FormationID             INT,
                FormationLayout        VARCHAR(50),
                TeamName                VARCHAR(50),
                Primary Key             (FormationID),
                CONSTRAINT fk_teamnameform FOREIGN KEY (TeamName)       REFERENCES Teams(TeamName)
);

CREATE TABLE AdminLogins (
    AdminName           VARCHAR2(25),
    Username            VARCHAR2(25),
    Passkey             VARCHAR2(10),
    PRIMARY KEY (Username)
);

CREATE TABLE UserLogins (
    UserName            VARCHAR2(25),
    Viewername          VARCHAR2(25),
    Passkey             VARCHAR2(10),
    PRIMARY KEY (Viewername)
);

EOF

