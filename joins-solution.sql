--Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".customer_id;

--Get all orders and their line items (orders, quantity and product).
SELECT "orders".order_date, "line_items".quantity, "products".description FROM "orders"
JOIN "line_items" ON "orders".id = "line_items".id
JOIN "products" on "orders".id = "products".id

--Which warehouses have cheetos?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id 
WHERE "products".id = 5

--Which warehouses have diet pepsi?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id 
WHERE "products".id = 6

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM "customers"
JOIN "orders" ON "customers".id = "orders".address_id

--How many customers do we have?
SELECT count(*) FROM "customers"

--How many products do we carry?
SELECT count(*) FROM "products"

--What is the total available on-hand quantity of diet pepsi?
SELECT  sum("warehouse_product".on_hand) FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id 
WHERE "products".description = 'diet pepsi'
