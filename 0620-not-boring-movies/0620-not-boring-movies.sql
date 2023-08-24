# Write your MySQL query statement below
Select Cinema.id, Cinema.movie, Cinema.description, Cinema.rating
FROM Cinema
WHERE Cinema.id%2 != 0 AND Cinema.description != "boring"
order by  Cinema.rating desc;