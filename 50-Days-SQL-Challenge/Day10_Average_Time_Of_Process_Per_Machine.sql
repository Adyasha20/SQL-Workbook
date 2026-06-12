-- Day 10
-- Problem: Average Time of Process per Machine
-- Platform: LeetCode

SELECT a.machine_id,
ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time      --It calculates the average time taken per process (end − start) for each machine and rounds it to 3 decimal places, naming the result processing_time.
FROM Activity a                                                  --Take table as a = start rows
JOIN Activity b                                                  --Join same table again → b = end rows.This is called self join
ON a.machine_id = b.machine_id                                   --Same machine
AND a.process_id = b.process_id                                  --Same process.Ensures we match: start and end of the SAME process
AND a.activity_type = 'start'                                    --Select only start rows
AND b.activity_type = 'end'                                      --Select only end rows
GROUP BY a.machine_id;                                           --Calculate average for each machine
