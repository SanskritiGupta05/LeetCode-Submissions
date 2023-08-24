# Explaination

1. You use a `LEFT JOIN` between the `Signups` table (`s`) and the `Confirmations` table (`c`) on the `user_id` to combine the two tables' data.

2. Inside the `SELECT` clause, you use the `ROUND` function to round the average confirmation rate to two decimal places.

3. The `AVG` function calculates the average of the values produced by the `IF` statement.

4. Inside the `IF` statement, you check if the `action` column in the `Confirmations` table is equal to "confirmed". If it is, you assign a value of 1; otherwise, you assign a value of 0. This effectively converts "confirmed" actions to 1 and other actions to 0.

5. The `AVG` function then calculates the average of these converted values, giving you the confirmation rate.

6. The `GROUP BY` clause groups the results by `user_id`.

Your solution provides the confirmation rate for each user by calculating the average of 1s (confirmed actions) and 0s (other actions) for each user. The use of `LEFT JOIN` ensures that users who have no confirmations are also included in the result with a confirmation rate of 0. Your approach is concise and effectively achieves the required result.​
