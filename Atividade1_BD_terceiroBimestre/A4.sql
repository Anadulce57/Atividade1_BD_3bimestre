-- Exercício 4: Encontrar os clientes que nunca fizeram um pedido
-- Escreva uma consulta SQL que retorne os nomes dos clientes que nunca fizeram um pedido. 
-- Para isso, use um LEFT JOIN entre as tabelas Customers e Orders e filtre os resultados para encontrar clientes sem pedidos.

SELECT first_name, order_id
FROM Customers 
LEFT JOIN Orders 
ON Costumer.costumer_id = Orders.costumer_id 