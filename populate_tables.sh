
#!/bin/sh

# Oracle Database connection information
USER="your_username"
PASSWORD="your_password"
CONNECTION_STRING="your_connection_string"

# Use SQL*Plus to run the SQL statements
#Insert information to all tables 
sqlplus64 "$USER/$PASSWORD@$CONNECTION_STRING" <<EOF

INSERT INTO Teams
VALUES('Bayern Munchen', 1, 0, 2);  

INSERT INTO Teams
VALUES('Leverkusen', 0, 3, 0); 

INSERT INTO Teams
VALUES ('Borussia Dortmund', 1, 0, 0); 

INSERT INTO Teams
VALUES ('RB Leipzig',1, 0, 2); 

INSERT INTO Teams
VALUES ('VfB Stuttgart', 0, 2, 0); 

INSERT INTO Teams 
VALUES ('Hoffenheim', 2, 0, 0);

INSERT INTO Players
VALUES(1,  'Bayern Munchen','Leon Goretzka', 1, 'ST', 2, 0, 0, 0, 4, NULL);

INSERT INTO Players
VALUES(2, 'Bayern Munchen','Sven Ulreich', 2,'GK', 0, 1, 0, 0, 1, NULL );

INSERT INTO Players 
VALUES(3, 'Bayern Munchen', 'Joshua Kimmich', 6, 'CM', 0, 0, 0, 1, 2, NULL);

INSERT INTO Players 
VALUES(4, 'Bayern Munchen', 'Robert Lewandowski', 9, 'ST', 0, 0, 0, 0, 3, NULL);

INSERT INTO Players 
VALUES (5, 'Bayern Munchen', 'Alphonso Davies', 19, 'RW', 1, 0, 0, 1, 2, NULL);





INSERT INTO Players
VALUES(6,  'Leverkusen','Lukas Hradecky', 8, 'GK', 0, 0, 0, 0, 2, NULL);

INSERT INTO Players
VALUES(7, 'Leverkusen','Granit Xhaka', 13,'CM', 1, 0, 0, 1, 0, 'INJURED' );

INSERT INTO Players 
VALUES(8, 'Leverkusen', 'Moussa Diaby', 7, 'RW', 0, 0, 0, 0, 3, NULL);

INSERT INTO Players 
VALUES(9, 'Leverkusen', 'Nadiem Amiri', 11, 'LW', 1, 0, 0, 1, 2, NULL);

INSERT INTO Players 
VALUES(10, 'Leverkusen', 'Jonathan Tah', 4, 'CB', 0, 1, 0, 0, 2, NULL);



INSERT INTO Players
VALUES(11,  'RB Leipzig','Janis Blaswich', 9, 'ST', 2, 1, 0, 0, 2, 'INJURED');

INSERT INTO Players
VALUES(12,  'RB Leipzig', 'Willi Orban', 10, 'RW', 1, 1, 0, 0, 1, NULL);

INSERT INTO Players 
VALUES(13, 'RB Leipzig', 'Christopher Nkunku', 18, 'LW', 1, 0, 0, 1, 3, NULL);

INSERT INTO Players 
VALUES(14, 'RB Leipzig', 'Marcel Sabitzer', 7, 'CM', 0, 1, 0, 0, 2, NULL);

INSERT INTO Players 
VALUES(15, 'RB Leipzig', 'Dayot Upamecano', 5, 'CB', 0, 0, 0, 0, 2, NULL);



INSERT INTO Players
VALUES(16,  'Borussia Dortmund','Alexander Meyer', 7, 'GK', 0, 0, 0, 0, 0, NULL);

INSERT INTO Players
VALUES(17,  'Borussia Dortmund','Mats Hummels', 12, 'CB', 2, 0, 0, 0, 1, 'INJURED');

INSERT INTO Players 
VALUES(18, 'Borussia Dortmund', 'Erling Haaland', 9, 'ST', 0, 0, 0, 0, 0, NULL);

INSERT INTO Players 
VALUES (19, 'Borussia Dortmund', 'Jadon Sancho', 7, 'RW', 0, 0, 0, 1, 3, NULL);

INSERT INTO Players
 VALUES(20, 'Borussia Dortmund', 'Emre Can', 23, 'CM', 0, 0, 0, 1, 1, NULL);



INSERT INTO Players
VALUES(21,  'VfB Stuttgart', 'Fabian Bredlow', 15, 'GK', 1, 0, 0, 1,0, NULL);

INSERT INTO Players
VALUES(22, 'VfB Stuttgart','Pascal Stenzel', 11, 'CM', 0, 0, 0, 0, 2, NULL);

INSERT INTO Players 
VALUES(23, 'VfB Stuttgart', 'Nicolas Gonzalez', 22, 'ST', 0, 0, 0, 1, 0, 'INJURED');

INSERT INTO Players 
VALUES(24, 'VfB Stuttgart', 'Wataru Endo', 3, 'LB', 0, 0, 0, 0, 2, NULL);

INSERT INTO Players 
VALUES(25, 'VfB Stuttgart', 'Gonzalo Castro', 8, 'CM', 0, 0, 0, 0, 1, NULL);


INSERT INTO Players 
VALUES(26, 'Hoffenheim', 'Andrej Kramaric', 27, 'ST', 2, 0, 0, 0, 0, NULL);

INSERT INTO Players 
VALUES(27, 'Hoffenheim', 'Florian Grillitsch', 11, 'CM', 0, 1, 0, 0, 3, NULL);

INSERT INTO Players
 VALUES(28, 'Hoffenheim', 'Pavel Kaderabek', 2, 'RB', 1, 0, 0, 0, 1, NULL);

INSERT INTO Players 
VALUES(29, 'Hoffenheim', 'Oliver Baumann', 1, 'GK', 0, 0, 0, 0, 1, NULL);

INSERT INTO Players 
VALUES(30, 'Hoffenheim', 'Munas Dabbur', 9, 'ST', 1, 1, 0, 1, 0, NULL);

INSERT INTO ManagementStaff
VALUES  (1, 'Thomas Tuchel', 'Head Coach', 'Bayern Munchen');

INSERT INTO ManagementStaff 
VALUES (2, 'Xabi Alonso', 'Head Coach', 'Leverkusen');

INSERT INTO ManagementStaff
VALUES  (3, 'Edin Terzic', 'Head Coach', 'Borussia Dortmund');

INSERT INTO ManagementStaff 
VALUES (4, 'Marco Rose', 'Head Coach', 'RB Leipzig');

INSERT INTO ManagementStaff
VALUES  (5, 'Sebastian Hoeness', 'Head Coach', 'VfB Stuttgart');

INSERT INTO ManagementStaff
VALUES  (6, 'Pellegrino Matarazzo', 'Head Coach', 'Hoffenheim');

INSERT INTO Referees
VALUES (1, 'Felix Brych', 'Head Referee');

INSERT INTO Referees 
VALUES (2, 'Robert Hartmann', 'VAR');

INSERT INTO Referees 
VALUES (3, 'Tobias Stieler', 'JuniorReferee');

INSERT INTO Referees 
VALUES (4, 'Bibiana Steinhaus', 'Head Referee');

INSERT INTO Referees 
VALUES (5, 'Daniel Siebert', 'VAR');

INSERT INTO Referees 
VALUES (6, 'Frank Willenborg', 'JuniorReferee');

INSERT INTO Referees 
VALUES (7, 'Felix Zwayer', 'Head Referee');

INSERT INTO Referees 
VALUES (8, 'Deniz Aytekin', 'VAR');

INSERT INTO Referees 
VALUES (9, 'Sascha Stegemann', 'JuniorReferee');

INSERT INTO MatchesT
VALUES (1, 'Bayern Munchen', 'COMPLETE','09-29-2023','15:00',1,1,2,3,'WIN');

INSERT INTO MatchesT
VALUES (2, 'Leverkusen', 'COMPLETE','09-29-2023','15:00',0,1,2,3, 'LOSS');


INSERT INTO MatchesT
VALUES (3, 'Borussia Dortmund', 'COMPLETE','10-25-2023', '14:00',2,1,2,3,'WIN');

INSERT INTO MatchesT
VALUES (4, 'Leverkusen', 'COMPLETE','10-25-2023','14:00',1,1,2,3, 'LOSS');


INSERT INTO MatchesT
VALUES (5, 'Bayern Munchen', 'COMPLETE','10-26-2023', '13:00',1,7,5,9, 'TIE');

INSERT INTO MatchesT
VALUES (6, 'RB Leipzig', 'COMPLETE','10-26-2023','13:00',1,7,5,9, 'TIE');


INSERT INTO MatchesT
VALUES (7, 'VfB Stuttgart', 'COMPLETE','11-07-2023', '13:00',0,1,8,3,'LOSS');

INSERT INTO MatchesT
VALUES (8, 'RB Leipzig', 'COMPLETE','11-07-2023','13:00',2, 1,8,3, 'WIN');



INSERT INTO MatchesT 
VALUES (9, 'Hoffenheim', 'COMPLETE', '11-01-2023', '14:00', 2, 7, 5, 6, 'WIN');

INSERT INTO MatchesT 
VALUES (10, 'Leverkusen', 'COMPLETE', '11-01-2023', '14:00', 1, 7, 5, 6, 'LOSS');


INSERT INTO MatchesT 
VALUES (11, 'Bayern Munchen', 'COMPLETE', '10-31-2023', '13:00', 1, 1, 2, 3, 'TIE');

INSERT INTO MatchesT 
VALUES (12, 'RB Leipzig', 'COMPLETE', '10-31-2023', '13:00', 1, 1, 2, 3, 'TIE');


INSERT INTO MatchesT 
VALUES (13, 'VfB Stuttgart', 'COMPLETE', '10-27-2023', '13:00', 0, 4, 8, 9, 'LOSS');

INSERT INTO MatchesT 
VALUES (14, 'Hoffenheim', 'COMPLETE', '10-27-2023', '13:00', 2, 4, 8, 9, 'WIN');


INSERT INTO MatchesT 
VALUES (15, 'Hoffenheim', 'SCHEDULED', '11-20-2023', '20:15', NULL, 4, 5, 6, NULL);

INSERT INTO MatchesT 
VALUES (16, 'VfB Stuttgart', 'SCHEDULED', '11-20-2023', '20:15', NULL, 4, 5, 6, NULL);


INSERT INTO MatchesT 
VALUES (17, 'Hoffenheim', 'SCHEDULED', '11-30-2023', '15:15', NULL, 4, 5, 9, NULL);

INSERT INTO MatchesT 
VALUES (18, 'VfB Stuttgart', 'SCHEDULED', '11-30-2023', '15:15', NULL, 4, 5, 9, NULL);


INSERT INTO MatchesT 
VALUES (19, 'Hoffenheim', 'SCHEDULED', '12-2-2023', '13:15', NULL, 4, 5, 6, NULL);

INSERT INTO MatchesT 
VALUES (20, 'Bayern Munchen', 'SCHEDULED', '12-2-2023', '13:15', NULL, 4, 5, 6, NULL);

INSERT INTO Goals
VALUES (1, 1, 'Bayern Munchen', 1, 2);

INSERT INTO Goals
VALUES (2, 3, 'Borussia Dortmund', 1, 2);

INSERT INTO Goals
VALUES (3, 3, 'Borussia Dortmund', 1, 2);

INSERT INTO Goals
VALUES (4, 4, 'Leverkusen', 1, 2);

INSERT INTO Goals
VALUES (5, 5, 'Bayern Munchen', 1, 2);

INSERT INTO Goals
VALUES (6, 6, 'RB Leipzig', 1, 2);

INSERT INTO Goals
VALUES (7, 8, 'RB Leipzig', 1, 2);

INSERT INTO Goals
VALUES (8, 8, 'RB Leipzig', 1, 2);

INSERT INTO Goals
VALUES (9, 9, 'Hoffenheim', 26, 30);

INSERT INTO Goals
VALUES (10, 9, 'Hoffenheim', 28, NULL);


INSERT INTO Goals
VALUES (11, 10, 'Leverkusen', 9, 10);

INSERT INTO Goals
VALUES (12, 11, 'Bayern Munchen', 5, NULL);

INSERT INTO Goals
VALUES (13, 12, 'RB Leipzig', 13, 14);

INSERT INTO Goals
VALUES (14, 12, 'Hoffenheim', 26, NULL);

INSERT INTO Goals
VALUES (15, 12, 'Hoffenheim', 30, 27);

INSERT INTO Bookings
VALUES (1, 1, 1, 1, 'Yellow');

INSERT INTO Bookings
VALUES (2, 5, 1, 7, 'Yellow');

INSERT INTO Bookings
VALUES (3, 1, 1, 1, 'Yellow');

INSERT INTO Bookings
VALUES (4, 11, 1, 1, 'Yellow');


INSERT INTO Bookings
VALUES (5, 5, 2, 7, 'Yellow');



INSERT INTO Bookings
VALUES (6, 1, 3, 1, 'Red');

INSERT INTO Bookings
VALUES (7, 5, 3, 7, 'Yellow');

INSERT INTO Bookings
VALUES (8, 1, 3, 1, 'Yellow');


INSERT INTO Bookings
VALUES (9, 11, 4, 1, 'Yellow');

INSERT INTO Bookings
VALUES (10, 1, 4, 1, 'Yellow');

INSERT INTO Bookings
VALUES (11, 5, 4, 7, 'Yellow');


INSERT INTO Bookings
VALUES (12, 5, 5, 7, 'Red');

INSERT INTO Bookings
VALUES (13, 5, 5, 7, 'Yellow');

INSERT INTO Bookings
VALUES (14, 5, 5, 7, 'Yellow');

INSERT INTO Bookings
VALUES (15, 2, 6, 1, 'Yellow');

INSERT INTO Bookings
VALUES (16, 4, 6, 1, 'Yellow');


INSERT INTO Bookings
VALUES (17, 10, 7, 7, 'Red');


INSERT INTO Bookings
VALUES (18, 4, 8, 1, 'Yellow');

INSERT INTO Bookings
VALUES (19, 2, 8, 1, 'Yellow');

INSERT INTO Bookings
VALUES (20, 5, 8, 7, 'Yellow');


INSERT INTO Bookings
VALUES (21, 10, 9, 7, 'Red');

INSERT INTO Bookings
VALUES (22, 4, 9, 1, 'Yellow');

INSERT INTO Bookings
VALUES (23, 2, 9, 1, 'Yellow');


INSERT INTO Bookings
VALUES (24, 10, 10, 7, 'Yellow');

INSERT INTO Bookings
VALUES (25, 2, 10, 1, 'Yellow');


INSERT INTO Bookings
VALUES (26, 6, 11, 7, 'Yellow');

INSERT INTO Bookings
VALUES (27, 12, 11, 1, 'Yellow');


INSERT INTO Bookings
VALUES (28, 8, 12, 1, 'Yellow');


INSERT INTO Bookings
VALUES (29, 6, 13, 7, 'Red');

INSERT INTO Bookings
VALUES (30, 8, 13, 1, 'Yellow');

INSERT INTO Bookings
VALUES (31, 12, 13, 1, 'Yellow');

INSERT INTO Bookings
VALUES (32, 6, 13, 7, 'Yellow');


INSERT INTO Bookings
VALUES (33, 12, 14, 1, 'Yellow');

INSERT INTO Bookings
VALUES (34, 12, 14, 1, 'Yellow');


INSERT INTO Bookings
VALUES (35, 8, 15, 7, 'Yellow');

INSERT INTO Bookings
VALUES (36, 6, 15, 7, 'Yellow');


INSERT INTO Bookings
VALUES (37, 3, 17, 1, 'Yellow');


INSERT INTO Bookings
VALUES (38, 3, 19, 1, 'Red');

INSERT INTO Bookings
VALUES (39, 3, 19, 1, 'Yellow');

INSERT INTO Bookings
VALUES (40, 3, 19, 1, 'Yellow');

INSERT INTO Bookings
VALUES (41, 3, 19, 1, 'Yellow');


INSERT INTO Bookings
VALUES (42, 3, 20, 1, 'Red');

INSERT INTO Bookings
VALUES (43, 3, 20, 1, 'Yellow');


INSERT INTO Bookings
VALUES (44, 7, 21, 1, 'Red');


INSERT INTO Bookings
VALUES (45, 13, 22, 4, 'Yellow');

INSERT INTO Bookings
VALUES (46, 13, 22, 4, 'Yellow');


INSERT INTO Bookings
VALUES (47, 7, 23, 1, 'Red');


INSERT INTO Bookings
VALUES (48, 13, 24, 4, 'Yellow');

INSERT INTO Bookings
VALUES (49, 7, 24, 1, 'Yellow');


INSERT INTO Bookings
VALUES (50, 7, 25, 1, 'Yellow');


INSERT INTO Bookings
VALUES (51, 9, 27, 7, 'Yellow');

INSERT INTO Bookings
VALUES (52, 14, 27, 4, 'Yellow');

INSERT INTO Bookings
VALUES (53, 14, 27, 4, 'Yellow');


INSERT INTO Bookings
VALUES (54, 14, 28, 4, 'Yellow');


INSERT INTO Bookings
VALUES (55, 9, 29, 7, 'Yellow');


INSERT INTO Bookings
VALUES (56, 14, 30, 4, 'Red');

INSERT INTO Formations (FormationID, FormationLayout, TeamName)
VALUES (1, '4-3-3', 'Bayern Munchen');

INSERT INTO Formations (FormationID, FormationLayout, TeamName)
VALUES (2, '5-3-2', 'Leverkusen');

INSERT INTO Formations (FormationID, FormationLayout, TeamName)
VALUES (3, '3-4-3', 'Borussia Dortmund');

INSERT INTO Formations (FormationID, FormationLayout, TeamName)
VALUES (4, '4-4-2', 'RB Leipzig');

INSERT INTO Formations (FormationID, FormationLayout, TeamName)
VALUES (5, '3-5-2', 'VfB Stuttgart');

INSERT INTO Formations (FormationID, FormationLayout, TeamName)
VALUES (6, '3-4-3', 'Hoffenheim');

INSERT INTO AdminLogins
VALUES ('Vanessa Entonu', 'Nessa123', 'FinnFiona');

INSERT INTO UserLogins
VALUES ('Vlad Scraba', 'Vlad123', 'Ih8Dell');


