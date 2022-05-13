-- DROP THE TABLE INSTRUCTOR FROM THE DATABASE IN CASE IT ALREADY EXISTS.
DROP TABLE  INSTRUCTOR;


-- CREATE THE INSTRUCTOR TABLE AS DEFINED ABOVE. HAVE THE INS_ID BE THE PRIMARY KEY, AND ENSURE THE LASTNAME AND FIRSTNAME ARE NOT NULL.
-- (HINT: INS_ID IS OF TYPE INTEGER, COUNTRY OF TYPE CHAR(2), AND REST OF THE FIELDS VARCHAR) 
CREATE TABLE INSTRUCTOR (
INS_ID INT NOT NULL PRIMARY KEY,
LASTNAME VARCHAR(30) NOT NULL,
FIRSTNAME VARCHAR(30) NOT NULL,
CITY VARCHAR(30),
COUNTRY CHAR(2)
);


-- INSERT ONE ROW INTO THE INSTRUCTOR TABLE FOR THE THE INSTRUCTOR RAV AHUJA.
-- (HINT: VALUES FOR THE CHARACTER FIELDS REQUIRE A SINGE QUOTATION MARK (') BEFORE AND AFTER EACH VALUE)
INSERT INTO INSTRUCTOR VALUES (1, 'AHUJA', 'RAV','TORONTO','CA');


-- INSERT TWO ROWS AT ONCE IN THE INSTRUCTOR TABLE FOR INSTRUCTORS RAUL CHONG AND HIMA VASUDEVAN.
-- (HINT: LIST THE VALUES FOR THE SECOND ROW AFTER THE FIRST ROW)
INSERT INTO INSTRUCTOR VALUES
(2, 'CHONG', 'RAUL','TORONTO','CA'),
(3,'VASUDEVAN','HIMA','CHICAGO','US');


-- SELECT ALL ROWS FROM THE INSTRUCTOR TABLE.
SELECT * FROM INSTRUCTOR;


-- SELECT THE FIRSTNAME, LASTNAME AND COUNTRY WHERE THE CITY IS TORONTO
SELECT FIRSTNAME,LASTNAME,COUNTRY FROM INSTRUCTOR WHERE CITY = 'TORONTO' ;


-- UPDATE THE ROW FOR RAV AHUJA AND CHANGE HIS CITY TO MARKHAM.
UPDATE INSTRUCTOR SET CITY='MARKHAM' WHERE INS_ID='1';


-- DELETE THE ROW FOR RAUL CHONG FROM THE TABLE.
DELETE FROM INSTRUCTOR WHERE INS_ID='2';


-- RETRIEVE ALL ROWS IN THE INSTRUCTOR TABLE.
SELECT * FROM INSTRUCTOR;
