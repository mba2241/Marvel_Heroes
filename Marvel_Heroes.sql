/*
It’s time to work on some famous characters .We need to work on Marvel Characters data set which is having "charcters_stats".csv.
Following requirements are there which we need to fulfill
*/
-- 1. Import required libraries

-- create a new database called "Marvel_Heroes_DB"
CREATE DATABASE Marvel_Heroes_DB;
GO -- seperates out statements 

-- use switches you into the database you specify
USE Marvel_Heroes_DB;
GO

-- used extension SQL sever import to import Character statmeent. 

-- 2. Read csv
SELECT 
    * 
FROM 
    dbo.charcters_stats; 
GO

-- 3. Show first records from csv
SELECT
    TOP 1 *
FROM
    dbo.charcters_stats; 
GO

-- 4. Show number of rows and columns
SELECT
    COUNT(*) As 'Number of columns' 
FROM
    SYS.COLUMNS 
WHERE
    object_id = OBJECT_ID('dbo.charcters_stats')
(SELECT 
    COUNT( *) AS "Number of Rows"
FROM 
    dbo.charcters_stats);
GO

-- 5. You need to find the values of alignment ,can use value_counts()
SELECT 
    COUNT(DISTINCT Alignment) As Value_Counts
FROM     
    dbo.charcters_stats;
-- the three  distinct value are Good, Bad, Neutral.(Except NUll)
    
-- 6. Find out only good alignment holders superheroes
SELECT 
    *
FROM
    dbo.charcters_stats
WHERE
    Alignment LIKE '%good%';
GO

-- 7. Show first five records which you found in point 6
SELECT 
    TOP 5 *
FROM
    dbo.charcters_stats
WHERE
    Alignment LIKE '%good%';
GO

-- 8. Show top five records having top speed of heroes of good alignment (12 have 100 speed )
SELECT 
    TOP 5 *
FROM
    dbo.charcters_stats
WHERE
    Alignment LIKE '%good%'
ORDER BY
    Speed DESC;
GO

-- 9. Show 5 records of super heroes who have maximum power of good alignment (33 have a 100 max power)
SELECT 
    TOP 50 *
FROM
    dbo.charcters_stats
WHERE
    Alignment LIKE '%good%'
ORDER BY
    [Power] DESC;
GO

-- 10. Find out how many super heroes are there with power 100 of good alignment
SELECT 
    COUNT([Power]) AS Number_of_Heroes
FROM
    dbo.charcters_stats
WHERE
    Alignment LIKE '%good%' AND [Power] LIKE '%100%' ;
GO


-- 11. Shape them what you got in point 10

-- 12. Show all records from point 10
SELECT 
    *
FROM
    dbo.charcters_stats
WHERE
    Alignment LIKE '%good%' AND [Power] LIKE '%100%';
GO

-- 13. Retrieve total of first five records of max power of good alignment super heroes

-- 14. Draw a bar plot of all super heroes who are having good alignment and max power of
--     top five only , take same object of point 13 , show name and total in plot with green bars

-- 15. Extract villains having bad alignment

-- 16. Show first five records of point 15

-- 17. Show top five fastest super villains in terms of super speed

-- 18. Top five super villains in terms of intelligence

-- 19. Show who is most dangerous super villain after calculating their total (top 5 only)

-- 20. Draw a histogram for speed of super heroes having fig size 10,5 , provide speed in histogram for 
--     only good alignment super heroes ,title should be "distribution of speed" , xlabel should be "speed"

-- 21. Draw a histogram for combat of super villains having fig size 10,5 , provide combat in histogram for 
--     only bad alignment super heroes ,title should be "distribution of combat" , xlabel should be "combat"