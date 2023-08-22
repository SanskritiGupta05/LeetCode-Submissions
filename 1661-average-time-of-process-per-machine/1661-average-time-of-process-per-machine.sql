# Write your MySQL query statement below
SELECT 
    machine_id,
    ROUND(SUM(timestamp * (activity_type = 'end') - timestamp * (activity_type = 'start')) / COUNT(DISTINCT process_id), 3) AS processing_time
FROM 
    Activity
GROUP BY 
    machine_id;
