-- Exercício 3: Calcular o total gasto por cada cliente
-- Escreva uma consulta SQL que calcule o total gasto por cada cliente. O resultado deve incluir o nome completo do cliente e o total gasto. 
-- Essa consulta deve usar JOINs para combinar as tabelas Customers, Orders, Order_Items e Products, e deve usar uma função de agregação para calcular o total

SELECT Customers.first_name, Costumers.last_name,
SUM(Products.price * Order_items) AS total_spent
FROM Customers
JOIN Orders ON Customers.customer_d = Orders.customer_id
JOIN Order_Items ON Orders.order_id = Order_Items.order_d
JOIN Products ON Order_Items.product_id = Products.product_id

GROUP BY Customers.custumer_id, Customers.first_name, Customers.last_name