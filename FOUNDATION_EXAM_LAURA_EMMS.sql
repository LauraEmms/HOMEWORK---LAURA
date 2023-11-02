CREATE DATABASE foundation_exam; 
USE foundation_exam; 

CREATE TABLE movie_info (
Movie_ID INT NOT NULL,
Movie_Name VARCHAR (50),
Movie_Length TIME,
Age_Rating VARCHAR (20),
CONSTRAINT PK_MOVIE_ID PRIMARY KEY(Movie_ID)
);

CREATE TABLE Screens (
Screen_ID INT NOT NULL,
Four_K BIT DEFAULT 0,
CONSTRAINT PK_Screen_ID PRIMARY KEY (Screen_ID)
);

CREATE TABLE Showings (
Showing_ID INT NOT NULL,
Movie_ID INT NOT NULL,
Screen_ID INT NOT NULL,
Start_Time TIME,
Available_Seats INT,
CONSTRAINT PK_Showing_ID PRIMARY KEY (Showing_ID)
);


 INSERT INTO movie_info(movie_ID, movie_name, movie_length, age_rating)
 VALUES 
 (1, "The Movie", "2:19:00", "12A"),
 (2, "The Other Movie", "1:30:00", "15"),
 (3, "The 3D Amazing Movie",  "1:42:00", "PG"),
 (4, "La Allure", "1:09:00", "18"),
 (5, "The Cartoon", "1:15:00", "U"),
 (6, "The Scary Cartoon", "1:23:00", "PG"),
 (7, "The Coming Of Age", "1:40:00", "12A"),
 (8, "The War", "2:07:00", "15"),
 (9, "The Murder Mystery", "1:47:00", "15");
 
 INSERT INTO screens(screen_ID, four_k)
 VALUES 
  (1, True),
  (2, False),
  (3, True),
  (4, True),
  (5, True),
  (6, True),
  (7, True),
  (8, False),
  (9, True),
  (10, True);
  
 INSERT INTO showings(showing_ID, movie_ID,screen_ID, start_time, available_seats)
 VALUES 
  (1, 1, 2, '12:00:00', 10), 
  (2, 1, 2, '17:00:00', 23), 
  (3, 2, 9, '10:30:00', 30), 
  (4, 3, 1, '07:00:00', 38), 
  (5, 3, 5, '10:00:00', 26), 
  (6, 3, 1, '17:00:00', 5), 
  (7, 3, 1, '19:00:00', 0), 
  (8, 3, 5, '14:00:00', 2), 
  (9, 4, 9, '20:00:00', 14), 
  (10, 4, 9, '23:00:00', 23), 
  (11, 5, 6, '09:30:00', 30), 
  (12, 5, 6, '12:30:00', 7), 
  (13, 5, 6, '14:30:00', 0), 
  (14, 5, 6, '15:20:00', 0), 
  (15, 6, 10, '10:00:00', 32), 
  (16, 6, 10, '13:30:00', 25), 
  (17, 6, 10, '17:00:00', 14), 
  (18, 7, 7, '12:00:00', 36), 
  (19, 8, 4, '15:00:00', 24), 
  (20, 9, 3, '17:00:00', 0);
  
  
 -- Write a query to return the name and time of all movies that play after 
-- 12:00 given there is at least 1 available seat. Display the results in time order.


SELECT 
M.Movie_Name AS "Movie Name", 
SH.Start_Time AS "Start time"
FROM 
Showings SH
INNER JOIN
Movie_info M
ON SH.Movie_ID = M.Movie_ID
WHERE SH.Start_Time > '12:00:00' AND SH.Available_Seats >=1
ORDER BY Start_Time ASC;


-- Return the name of the movie with the most showings.  

SELECT * FROM Movie_info M; -- Movie_ID, Movie_Name, Movie_Length, Age_Rating
SELECT * FROM Screens S; -- Screen_ID
SELECT * FROM Showings SH; -- Showing_ID, Movie_ID, Screen_ID, Start_Time, Available_Seats

SELECT M.Movie_Name AS "Movie Name", 
COUNT(S.Screen_ID)
FROM Showings SH
INNER JOIN
Movie_info M
INNER JOIN
Screens S
ON SH.Movie_ID = M.Movie_ID AND SH.Screen_ID = S.ScreenID
WHERE S.Screen_ID IN (
SELECT Screen_ID
FROM Screens
WHERE MAX(Screen_ID)
GROUP BY Screen_ID
);



 




  
  