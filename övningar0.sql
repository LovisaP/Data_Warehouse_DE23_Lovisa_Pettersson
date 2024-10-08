SHOW DATABASES;

USE DATABASE GOOGLE_KEYWORDS_SEARCH_DATASET__DISCOVER_ALL_SEARCHES_ON_GOOGLE;

SHOW SCHEMAS;

USE SCHEMA DATAFEEDS;

SHOW TABLES;

SHOW VIEWS;

SHOW COLUMNS;

SELECT COUNT(*) FROM GOOGLE_KEYWORDS;

SELECT DISTINCT column_name FROM GOOGLE_KEYWORDS;

SELECT * FROM GOOGLE_KEYWORDS LIMIT 10;

SELECT MIN(DATE) FROM GOOGLE_KEYWORDS;
SELECT MAX(DATE) FROM GOOGLE_KEYWORDS;

SELECT KEYWORD FROM GOOGLE_KEYWORDS ORDER BY keyword DESC LIMIT 10;

SELECT PLATFORM, COUNT(CALIBRATED_USERS) FROM GOOGLE_KEYWORDS GROUP BY PLATFORM LIMIT 10;

SELECT KEYWORD, COUNT(CALIBRATED_USERS) AS Serch_Count
FROM GOOGLE_KEYWORDS
WHERE COUNTRY = 752
GROUP BY KEYWORD
ORDER BY Serch_Count
DESC LIMIT 20;

SELECT COUNTRY, COUNT(CALIBRATED_CLICKS) AS Serch_Count
FROM GOOGLE_KEYWORDS
WHERE SITE = 'spotify.com'
GROUP BY COUNTRY
ORDER BY Serch_Count
DESC LIMIT 10;

