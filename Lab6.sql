/*
NAME: Keith R. Elinkowski
CLASS: SDEV 300 7980 Building Secure Web Applications (2192)
SECTION: Lab 6
PROFESSOR: Professor Poma, Craig
DATE: 201904223 0851
*/

/* Setup */

use sdev300;

DROP TABLE Faculty;
DROP TABLE Courses;
DROP TABLE FacultyCourses;

SHOW TABLES;

/* 
1. Create a table named Faculty to store EMPLID, first name, 
last name, email, and year of birth, and Hire date. You should 
select the appropriate data types, sizes and constraints for 
the table. Hint: All tables need a Primary key.
*/

CREATE TABLE Faculty (
	EMPLID varchar(30) primary key,
	FirstName varchar(30),
	LastName varchar(30),
	EMail varchar(60),
	YearOfBirth year(4),
	HireDate date
	);
	
/*
Create a table named Courses to store CourseID, discipline 
name (e.g. SDEV), course number (e.g. 300), number of credits 
(e.g. 3), date first offered (e.g. June 10, 2010) and course 
title. You should select the appropriate data types, sizes 
and constraints for the table.
*/

CREATE TABLE Courses (
	CourseID int primary key,
	DisciplineName varchar(4),
	CourseNumber varchar(4),
	NumberOfCredits int,
	DateFirstOffered date,
	CourseTitle varchar(75)
	);

/*
3. Create a table named FacultyCourses to store the Faculty 
and the Courses they have taught. You should design the table 
based on the Faculty and Courses tables you previously created. 
(Hint: Use Primary and Foreign key relationships)
*/

CREATE TABLE FacultyCourses (
	FacultyCourseID int primary key,
	CourseID int references Courses(CourseID),
	EMPLID varchar(30) references Faculty(EMPLID)
	);
	
/*
4. Create Insert statements to populate at least 20 faculty 
records, 20 Course records, and 25 FacultyCourses records.
*/

/* Faculty */

INSERT into Faculty
	VALUES('chemsworth', 'Chris', 'Hemsworth', 'chris.hemsworth@avengers.org', '1983', '2002-08-15');
	
INSERT into Faculty
	VALUES('jchan', 'Jackie', 'Chan', 'jackie.chan@kungfu.edu', '1954', '1962-12-05');
	
INSERT into Faculty
	VALUES('wsmith', 'Will', 'Smith', 'will.smith@mib.org', '1968', '1986-10-21');

INSERT into Faculty
	VALUES('akumar', 'Akshay', 'Kumar', 'akshay.kumar@bollywood.com', '1967', '1991-01-25');
	
INSERT into Faculty
	VALUES('asandler', 'Adam', 'Sandler', 'adam.sandler@thepriceiswrong.ca', '1966', '1987-12-03');	
	
INSERT into Faculty
	VALUES('skhan', 'Salman', 'Khan', 'salman.khan@indianfilmactors.in', '1965', '1988-08-26');

INSERT into Faculty
	VALUES('cevans', 'Chris', 'Evans', 'chris.evans@avengers.org', '1981', '1997-09-02');	
	
INSERT into Faculty
	VALUES('gclooney', 'George', 'Clooney', 'george.clooney@therealbatman.com', '1961', '1978-10-01');
	
INSERT into Faculty
	VALUES('djohnson', 'Dwayne', 'Johnson', 'dwayne.johnson@therock.com', '1972', '1996-08-11');

INSERT into Faculty
	VALUES('rdowney', 'Robert', 'Downey', 'robert.downey@avengers.org', '1965', '1970-05-09');

INSERT into Faculty
	VALUES('ajolie', 'Angelina', 'Jolie', 'angelina.jolie@hackers.net', '1975', '1982-10-08');

INSERT into Faculty
	VALUES('jlawrence', 'Jennifer', 'Lawrence', 'jennifer.lawrence@xmen.com', '1990', '2006-07-21');

INSERT into Faculty
	VALUES('rwitherspoon', 'Reese', 'Witherspoon', 'reese.witherspoon@legallyblonde.org', '1976', '1991-10-04');

INSERT into Faculty
	VALUES('mkunis', 'Mila', 'Kunis', 'mila.kunis@that70show.com', '1994', '1994-06-29');

INSERT into Faculty
	VALUES('jroberts', 'Julia', 'Roberts', 'julia.roberts@prettywoman.edu', '1967', '1987-02-13');

INSERT into Faculty
	VALUES('cblanchett', 'Cate', 'Blanchett', 'cate.blanchett@midgard.gov', '1969', '1990-08-27');

INSERT into Faculty
	VALUES('mmccarthy', 'Melissa', 'McCarthy', 'melissa.mccarthy@ghostbusters.com', '1970', '1997-04-02');

INSERT into Faculty
	VALUES('ggadot', 'Gal', 'Gadot', 'gal.gadot@jla.org', '1985', '2007-11-18');

INSERT into Faculty
	VALUES('sjohansson', 'Scarlett', 'Johansson', 'scarlett.johansson@averngers.org', '1984', '1994-07-22');

INSERT into Faculty
	VALUES('ctheron', 'Charlize', 'Theron', 'charlize.theron@furyroad.net', '1975', '1995-09-12');	
	
/* Courses */

INSERT into Courses
	VALUES('01', 'FACS', '150g', '3', '2019-09-01', 'Visual Culture and Literacy I');
	
INSERT into Courses
	VALUES('02', 'FACS', '250', '3', '2018-09-01', 'Visual Culture and Literacy II');
	
INSERT into Courses
	VALUES('03', 'FACS', '350', '3', '2017-09-01', 'Art Theory and Criticism');
	
INSERT into Courses
	VALUES('04', 'FACS', '450x', '4', '2016-09-01', 'Senior Seminar');
	
INSERT into Courses
	VALUES('05', 'FADN', '102', '3', '2015-09-01', 'Design Fundamentals');

INSERT into Courses
	VALUES('06', 'FADW', '101', '3', '2014-09-01', 'Introduction to Drawing: Studio Projects, Methods, Materials');

INSERT into Courses
	VALUES('07', 'FASC', '106', '3', '2013-09-01', 'Sculpture I');

INSERT into Courses
	VALUES('08', 'AHIS', '363m', '3', '2012-09-01', 'Contemporary Art and the Culture Wars');

INSERT into Courses
	VALUES('09', 'AHIS', '370g', '3', '2011-09-01', 'Modern Art III: 1940 to the Present');

INSERT into Courses
	VALUES('10', 'ARTS', '1001', '3', '2010-09-01', 'Intro to Contemp. Art & Theory');

INSERT into Courses
	VALUES('11', 'ARTS', '1002', '3', '2009-09-01', 'Art and Life');

INSERT into Courses
	VALUES('12', 'ARTS', '1101', '3', '2008-09-01', 'Drawing');

INSERT into Courses
	VALUES('13', 'ARTS', '1102', '3', '2007-09-01', 'Painting');

INSERT into Courses
	VALUES('14', 'ARTS', '1103', '3', '2006-09-01', 'Printmaking');

INSERT into Courses
	VALUES('15', 'THEA', '125', '3', '2005-09-01', 'Script Analysis');

INSERT into Courses
	VALUES('16', 'THEA', '142', '3', '2004-09-01', 'Introduction to Theatre Design');

INSERT into Courses
	VALUES('17', 'THEA', '211', '3', '1995-09-01', 'History of Theatre and Drama I');

INSERT into Courses
	VALUES('18', 'THEA', '212', '3', '1996-09-01', 'History of Theatre and Drama II');

INSERT into Courses
	VALUES('19', 'THEA', '213', '3', '1997-09-01', 'History of Theatre and Drama III');

INSERT into Courses
	VALUES('20', 'THEA', '331', '3', '1998-09-01', 'Directing I');	
	
/* FacultyCourses */

INSERT into FacultyCourses
	VALUES('01', '20', 'rdowney');
	
INSERT into FacultyCourses
	VALUES('02', '19', 'djohnson');

INSERT into FacultyCourses
	VALUES('03', '18', 'gclooney');

INSERT into FacultyCourses
	VALUES('04', '17', 'cevans');

INSERT into FacultyCourses
	VALUES('05', '16', 'skhan');

INSERT into FacultyCourses
	VALUES('06', '15', 'asandler');

INSERT into FacultyCourses
	VALUES('07', '14', 'akumar');

INSERT into FacultyCourses
	VALUES('08', '13', 'wsmith');

INSERT into FacultyCourses
	VALUES('09', '12', 'jchan');

INSERT into FacultyCourses
	VALUES('10', '11', 'chemsworth');

INSERT into FacultyCourses
	VALUES('11', '10', 'ctheron');

INSERT into FacultyCourses
	VALUES('12', '09', 'sjohansson');

INSERT into FacultyCourses
	VALUES('13', '08', 'ggadot');

INSERT into FacultyCourses
	VALUES('14', '07', 'mmccarthy');

INSERT into FacultyCourses
	VALUES('15', '06', 'cblanchett');

INSERT into FacultyCourses
	VALUES('16', '05', 'rdowney');

INSERT into FacultyCourses
	VALUES('17', '04', 'mkunis');

INSERT into FacultyCourses
	VALUES('18', '03', 'rwitherspoon');

INSERT into FacultyCourses
	VALUES('19', '02', 'jlawrence');

INSERT into FacultyCourses
	VALUES('20', '01', 'ajolie');

INSERT into FacultyCourses
	VALUES('21', '20', 'cevans');

INSERT into FacultyCourses
	VALUES('22', '19', 'ctheron');

INSERT into FacultyCourses
	VALUES('23', '18', 'chemsworth');

INSERT into FacultyCourses
	VALUES('24', '17', 'sjohansson');

INSERT into FacultyCourses
	VALUES('25', '16', 'rdowney');	
	
/* 
5. Create an update statement to update all Courses to 6 credits 
*/
SELECT * FROM Courses WHERE NumberOfCredits = 3;

UPDATE Courses SET NumberOfCredits = 6;

SELECT * FROM Courses WHERE NumberOfCredits = 6;

/* 
6. Create an update statement to update any Faculty with a year of 
birth of 1994 to change it to 1993. 
*/

SELECT * FROM Faculty where YearOfBirth = 1994;

UPDATE Faculty SET YearOfBirth = 1993 WHERE YearOfBirth = 1994;

SELECT * FROM Faculty where YearOfBirth = 1993;

/*
7. Write an appropriate SQL statement to delete any Faculty record 
whose Last name starts with the letter 'R' or the letter 'S'. 
(Hint: this should only be one SQL statement not two.)
*/

SELECT * FROM Faculty WHERE LastName LIKE 'R%' OR LastName LIKE 'S%';

DELETE FROM Faculty Where LastName LIKE 'R%' OR LastName Like 'S%';

SELECT * FROM Faculty WHERE LastName LIKE 'R%' OR LastName LIKE 'S%';

/* 
8. Write an appropriate SQL statement to delete any Course record 
that was first offered in 2004
*/
SELECT * FROM Courses WHERE year(DateFirstOffered) = 2004;

DELETE FROM Courses WHERE year(DateFirstOffered) = 2004;

SELECT * FROM Courses WHERE year(DateFirstOffered) = 2004;

/*
9. Use appropriate select statements to display all records in 
all 3 tables. The Faculty query should display the Faculty by 
last name in descending order and Course query should display 
the courses in ascending order by course title. The display 
order of the FacultyCourses table is not specified. Hint: you 
should create three separate select statements to satisfy this 
requirement.
*/	

/* Faculty */

SELECT * FROM Faculty ORDER BY LastName DESC;

/* Courses */

SELECT * FROM Courses ORDER BY CourseTitle ASC;

/* FacultyCourses */

SELECT * FROM FacultyCourses ORDER BY FacultyCourseID ASC;

/*
10. Create a select statement to display all Faculty who have 
not taught at least 3 courses.
*/

SELECT LastName
FROM Faculty AS f INNER JOIN FacultyCourses AS w on f.EMPLID = w.EMPLID
GROUP BY f.EMPLID, f.LastName
HAVING COUNT(*) >= 3;

SELECT LastName
FROM Faculty AS f INNER JOIN FacultyCourses AS w on f.EMPLID = w.EMPLID
GROUP BY f.EMPLID, f.LastName
HAVING COUNT(*) < 3;


/* 
11. Create a select statement to display all Courses offered 
before 1999.
*/

SELECT * FROM Courses WHERE year(DateFirstOffered) < 1999;

/*
12. Use select and appropriate joins to display all columns 
from the Faculty and Course tables for each Faculty and 
Course in the FacultyCourse table. Note: this will be a 
3-table join.
*/

SELECT *
FROM FacultyCourses LEFT JOIN
	Faculty
	ON FacultyCourses.EMPLID = Faculty.EMPLID LEFT JOIN
	Courses
	ON FacultyCourses.CourseID = Courses.CourseID; 
	

