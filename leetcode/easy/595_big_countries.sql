-- 595. Big Countries
-- https://leetcode.com/problems/big-countries/
-- Difficulty: Easy

-- =============================================
-- TABLE SCHEMA
-- =============================================

-- World table:
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | name        | varchar |
-- | continent   | varchar |
-- | area        | int     |
-- | population  | int     |
-- | gdp         | bigint  |
-- +-------------+---------+

-- =============================================
-- PROBLEM
-- =============================================
-- A country is big if:
-- - area >= 3,000,000 OR
-- - population >= 25,000,000

-- Find: name, population, area of big countries

-- =============================================
-- SOLUTION 1: Simple WHERE with OR
-- =============================================

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- =============================================
-- SOLUTION 2: Using UNION (alternative)
-- =============================================

SELECT name, population, area
FROM World
WHERE area >= 3000000
UNION
SELECT name, population, area
FROM World
WHERE population >= 25000000;

-- =============================================
-- EXAMPLE DATA
-- =============================================
-- Input:
-- Afghanistan | Asia      | 652230  | 25500100 | 20343000000
-- Albania     | Europe    | 28748   | 2831741  | 12960000000
-- Algeria     | Africa    | 2381741 | 37100000 | 188681000000
-- Andorra     | Europe    | 468     | 78115    | 3712000000
-- Angola      | Africa    | 1246700 | 20609294 | 100990000000

-- Output:
-- Afghanistan | 25500100 | 652230
-- Algeria     | 37100000 | 2381741