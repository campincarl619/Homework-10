SELECT staff.first_name,staff.last_name,COUNT(payment.staff_id) AS Transactions
FROM staff JOIN payment
ON staff.staff_id = payment.staff_id
WHERE payment.payment_date BETWEEN '2005-08-01 00:00:01' AND '2005-08-31 23:59:59'
GROUP BY staff.first_name;