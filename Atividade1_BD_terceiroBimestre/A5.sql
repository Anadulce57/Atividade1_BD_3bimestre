-- Exercício 5: Listar os produtos mais vendidos
-- Escreva uma consulta SQL que retorne o nome do produto e a quantidade total vendida, ordenando os resultados pelos produtos mais vendidos. 
-- Combine as tabelas Order_Items e Products, e utilize uma função de agregação para somar a quantidade vendida de cada produto.

SELECT Product.product_name,
SUM(Order_Items.quantity) AS total_sold
FROM Order_items
JOIN Products 
ON Products.product_id = Order_items.product_id

GROUP BY Products.product_name

ORDER BY total_sold DESC
