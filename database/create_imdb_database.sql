DROP DATABASE IF EXISTS imdbtest_db;

CREATE DATABASE imdbtest_db;

USE imdbtest_db;

DROP TABLE IF EXISTS names_basic;
CREATE TABLE names_basic(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nconst  VARCHAR(50) NOT NULL,
primaryName VARCHAR(255),
birthYear date,
deathYear date,
primaryProfession VARCHAR(50),
knownForTitles VARCHAR(255)
);


DROP TABLE IF EXISTS titles_basic;
CREATE TABLE titles_basic(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
tconst VARCHAR(50) NOT NULL,
titleType VARCHAR(50),
primaryTitle VARCHAR(255),
originalTitle VARCHAR(255),
isAdult boolean,
startYear date,
endYear date,
runtimeMinutes int,
genres VARCHAR(255)
);


DROP TABLE IF EXISTS titles_crew;
CREATE TABLE titles_crew(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nconst  VARCHAR(50) NOT NULL,
directors VARCHAR(255),
writers VARCHAR(255)
);


DROP TABLE IF EXISTS titles_principals;
CREATE TABLE titles_principals(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
tconst VARCHAR(50) NOT NULL,
ordering INT,
nconst  VARCHAR(50) NOT NULL,
category VARCHAR(50),
job VARCHAR(50),
characters VARCHAR(255)
);



DROP TABLE IF EXISTS titles_episodes;
CREATE TABLE titles_episodes(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
tconst VARCHAR(50) NOT NULL,
parentTconst VARCHAR(50) NOT NULL,
seasonNumber INT,
episodeNumber INT

);


DROP TABLE IF EXISTS titles_akas;
CREATE TABLE titles_akas(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
titleId VARCHAR(50) NOT NULL,
ordering  INT,
title  VARCHAR(255),
region VARCHAR(255),
language  VARCHAR(50),
types VARCHAR(255),
attributes VARCHAR(255),
isOriginalTitle boolean
);






