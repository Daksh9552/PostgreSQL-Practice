SELECT * FROM products;

/* 1) CASE statement 
	if the product quantity is more than 10 say the product is in stock
	if quantity is between 5-10 say it is limited stock
	else say it is out of stock
*/

SELECT product_name, quantity,
	CASE 
		WHEN quantity >=10 THEN 'in stock'
		WHEN quantity <10 AND quantity >=5 THEN 'limited stock'
		ELSE 'out of stock'
	END AS stock_available
FROM products;


/* 2) CASE STATEMENT 
	using case statement and like operator, check if category contains 'Electronics'
	or 'Furniter'
*/

SELECT product_name, category,
	CASE 
		WHEN category LIKE '%Electronics' THEN 'Electronic item'
		WHEN category LIKE '%Furniture' THEN 'Furniture item'
		ELSE 'Accessory item'
	END AS item_type
FROM products;

/* 3) CASE STATEMENT
	if product prise is more than 50000 then it is expensive 
	if it is between 10000 to 50000 then it is moderate 
	and if it is lower than 10000 then it is affordable
*/

SELECT product_name, price,
	CASE 
		WHEN price >=50000 THEN 'Expensive'
		WHEN price BETWEEN 10000 AND 50000 THEN 'Moderate'
		ELSE 'Affordable'
	END AS price_category
FROM products;




























