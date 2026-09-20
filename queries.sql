-- Productos con stock bajo
SELECT sku, name, stock, price FROM products WHERE stock <= 3 ORDER BY stock ASC;
-- Valor total del inventario
SELECT ROUND(SUM(stock * price), 2) AS inventory_value FROM products;
-- Historial de movimientos
SELECT p.sku, p.name, m.quantity, m.reason, m.created_at FROM stock_movements m JOIN products p ON p.id = m.product_id ORDER BY m.created_at DESC;
