-- Exercício 2: Encontrar todos os produtos pedidos por um cliente específico
-- Escreva uma consulta SQL que retorne o nome do produto e a quantidade pedida para todos os produtos pedidos por um cliente com um customer_id específico 
-- (por exemplo, customer_id = 1). Essa consulta deve combinar as tabelas Order_Items, Orders e Products.

SELECT Order_Items.quantity, Orders.costumer_id, Products.product_name
FROM Order_Items
JOIN Orders ON Order_Items.order_id = Orders.order_id
JOIN Products ON Products.product_id = Order_Items.product_id 
