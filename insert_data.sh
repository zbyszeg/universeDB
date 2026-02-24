#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "insert into teams (team_id, name) values
(1,'France'),
(2,'Croatia'),
(3,'Belgium'),
(4,'England'),
(5,'Sweden'),
(6,'Brazil'),
(7,'Uruguay'),
(8,'Colombia'),
(9,'Switzerland'),
(10,'Japan'),
(11,'Mexico'),
(12,'Denmark'),
(13,'Russia'),
(14,'Spain'),
(15,'Algeria'),
(16,'Portugal'),
(17,'Argentina'),
(18,'Germany'),
(19,'Netherlands'),
(20,'Costa Rica'),
(21,'Chile'),
(22,'Nigeria'),
(23,'Greece'),
(24,'United States');")"

echo "$($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values
(2018,'Final',1,2,4,2),
(2018,'Third Place',3,4,2,0),
(2018,'Semi-Final',2,4,2,1),
(2018,'Semi-Final',1,3,1,0),
(2018,'Quarter-Final',2,13,3,2),
(2018,'Quarter-Final',4,5,2,0),
(2018,'Quarter-Final',3,6,2,1),
(2018,'Quarter-Final',1,7,2,0),
(2018,'Eighth-Final',4,8,2,1),
(2018,'Eighth-Final',5,9,1,0),
(2018,'Eighth-Final',3,10,3,2),
(2018,'Eighth-Final',6,11,2,0),
(2018,'Eighth-Final',2,12,2,1),
(2018,'Eighth-Final',13,14,2,1),
(2018,'Eighth-Final',7,16,2,1),
(2018,'Eighth-Final',1,17,4,3),
(2014,'Final',18,17,1,0),
(2014,'Third Place',19,6,3,0),
(2014,'Semi-Final',17,19,1,0),
(2014,'Semi-Final',18,6,7,1),
(2014,'Quarter-Final',19,20,1,0),
(2014,'Quarter-Final',17,3,1,0),
(2014,'Quarter-Final',6,8,2,1),
(2014,'Quarter-Final',18,1,1,0),
(2014,'Eighth-Final',6,21,2,1),
(2014,'Eighth-Final',8,7,2,0),
(2014,'Eighth-Final',1,22,2,0),
(2014,'Eighth-Final',18,15,2,1),
(2014,'Eighth-Final',19,11,2,1),
(2014,'Eighth-Final',20,23,2,1),
(2014,'Eighth-Final',17,9,1,0),
(2014,'Eighth-Final',3,24,2,1);")"
