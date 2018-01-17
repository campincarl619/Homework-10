SELECT first_name,last_name,SUM(amount) AS 'Total Payment'
FROM payment JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY last_name;