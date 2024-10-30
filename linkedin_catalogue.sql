-- Lifespan Trends
-- Question: Is there a notable difference in the average lifespan of creative courses versus technical courses?
-- This query calculates the average lifespan (in days) for courses in the "Creative" and "Technology" categories.
SELECT Category,
    AVG(DATEDIFF(`Retire Date`, `Release Date`)) AS Average_Lifespan_Days
FROM ll.catalogue
WHERE `Release Date` IS NOT NULL
    AND `Retire Date` IS NOT NULL
    AND Category IN ('Creative', 'Technology')
GROUP BY Category;
--------------------------------------------------------------------------------
-- Release Date Patterns
-- Question: Are there specific months or quarters where new courses are more frequently released?
-- The following queries analyze course release patterns by month and by quarter.
-- Count releases by month
SELECT MONTH(`Release Date`) AS Release_Month,
    COUNT(*) AS Release_Count
FROM ll.catalogue
WHERE `Release Date` IS NOT NULL
GROUP BY Release_Month
ORDER BY Release_Count DESC;
-- Count releases by quarter
SELECT QUARTER(`Release Date`) AS Release_Quarter,
    COUNT(*) AS Release_Count
FROM ll.catalogue
WHERE `Release Date` IS NOT NULL
GROUP BY Release_Quarter
ORDER BY Release_Count DESC;
--------------------------------------------------------------------------------
-- Most Frequently Mentioned Skills
-- Question: What are the top 5 most frequently mentioned skills across all courses?
-- This query splits the "Skill" field into individual skills and calculates the frequency of each skill.
WITH RECURSIVE SplitSkills AS (
    SELECT TRIM(
            SUBSTRING_INDEX(SUBSTRING_INDEX(Skill, ',', numbers.n), ',', -1)
        ) AS Skill
    FROM ll.catalogue
        INNER JOIN (
            SELECT 1 n
            UNION ALL
            SELECT 2
            UNION ALL
            SELECT 3
            UNION ALL
            SELECT 4
            UNION ALL
            SELECT 5
            UNION ALL
            SELECT 6
            UNION ALL
            SELECT 7
            UNION ALL
            SELECT 8
            UNION ALL
            SELECT 9
            UNION ALL
            SELECT 10
        ) numbers ON CHAR_LENGTH(Skill) - CHAR_LENGTH(REPLACE(Skill, ',', '')) >= numbers.n - 1
)
SELECT Skill,
    COUNT(*) AS Frequency
FROM SplitSkills
GROUP BY Skill
ORDER BY Frequency DESC
LIMIT 5;
--------------------------------------------------------------------------------
-- Date-Based Queries
-- Question: For each year, find how many courses were released and how many were retired.
-- This query calculates the number of courses released and retired per year.
WITH ReleaseCounts AS (
    SELECT YEAR(`Release Date`) AS Year,
        COUNT(*) AS Released_Courses
    FROM ll.catalogue
    WHERE `Release Date` IS NOT NULL
    GROUP BY Year
),
RetireCounts AS (
    SELECT YEAR(`Retire Date`) AS Year,
        COUNT(*) AS Retired_Courses
    FROM ll.catalogue
    WHERE `Retire Date` IS NOT NULL
    GROUP BY Year
)
SELECT COALESCE(ReleaseCounts.Year, RetireCounts.Year) AS Year,
    COALESCE(Released_Courses, 0) AS Released_Courses,
    COALESCE(Retired_Courses, 0) AS Retired_Courses
FROM ReleaseCounts
    LEFT JOIN RetireCounts ON ReleaseCounts.Year = RetireCounts.Year
ORDER BY Year;
--------------------------------------------------------------------------------
-- Longest Update Gap
-- Question: Calculate the time difference between "Release Date" and "Last Updated Date" for each course and find the courses with the longest update gap.
-- This query finds the courses with the longest duration between release and last update.
SELECT `Course ID`,
    `Course Title`,
    `Release Date`,
    `Last Updated Date`,
    DATEDIFF(`Last Updated Date`, `Release Date`) AS Update_Gap_Days
FROM ll.catalogue
WHERE `Release Date` IS NOT NULL
    AND `Last Updated Date` IS NOT NULL
ORDER BY Update_Gap_Days DESC
LIMIT 10;