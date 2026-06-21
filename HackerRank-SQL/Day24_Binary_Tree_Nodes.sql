-- Day 24
-- Problem: Binary Tree Nodes
-- Platform: HackerRank

SELECT N,                            --Select the node value (N)
CASE                                 --Start a CASE statement (like if-else)
    WHEN P IS NULL THEN 'Root'       --If parent (P) is NULL, then the node is the Root
    WHEN N NOT IN (                  --Check if this node never appears as a parent
        SELECT DISTINCT P            --Get all unique parent values
        FROM BST                     --Read data from BST table
        WHERE P IS NOT NULL          --Ignore NULL because root is not considered a parent value here
    ) THEN 'Leaf'                    --Label those nodes as Leaf
    ELSE 'Inner'                     --If node is neither Root nor Leaf, then it must be an Inner node
END                                  --End the CASE statement
FROM BST                             --Use data from BST table
ORDER BY N;                          --Sort output by node value
