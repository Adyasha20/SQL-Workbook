-- Day 3
-- Problem: Big Countries
-- Platform: LeetCode

SELECT name, population, area FROM WORLD WHERE area >= 3000000 OR population >=25000000;
