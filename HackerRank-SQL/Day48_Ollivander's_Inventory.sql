-- Day 48
-- Problem: Ollivander's Inventory
-- Platform: HackerRank

SELECT W.id, WP.age, W.coins_needed, W.power          --Select the wand's id, age, coins needed, and power to display
FROM Wands W                                          --Use the Wands table as the main table and give it the alias W
JOIN Wands_Property WP                                --Join the Wands_Property table with the Wands table
ON W.code = WP.code                                   --Match each wand with its properties using the common code column
WHERE WP.is_evil = 0                                  --Keep only non-evil wands
AND W.coins_needed = (                                --Keep only the wand whose cost equals the minimum cost returned by the subquery
    SELECT MIN(W2.coins_needed)                       --Find the minimum coins needed among matching wands
    FROM Wands W2                                     --Read data from the Wands table again using alias W2
    JOIN Wands_Property WP2                           --Join the Wands_Property table again using alias WP2
    ON W2.code = WP2.code                             --Match each wand with its corresponding properties
    WHERE WP2.is_evil = 0                             --Consider only non-evil wands
    AND WP2.age = WP.age                              --Compare only wands having the same age
    AND W2.power = W.power                            --Compare only wands having the same power
)
ORDER BY W.power DESC, WP.age DESC;                   --Sort the result by power (highest first), and if powers are equal, by age (highest first)
