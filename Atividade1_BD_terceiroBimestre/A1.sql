-- Exercício 1: Listar todos os pedidos com detalhes do cliente
-- Escreva uma consulta SQL que retorne o ID do pedido, a data do pedido, o nome completo do cliente e o email para todos os pedidos.
-- Use um JOIN para combinar as tabelas Orders e Customers.

SELECT order_id, order_date, first_name, email
FROM Orders 
JOIN Customers 
ON Orders.customers_id = Costumers.costumer_id