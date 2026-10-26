SELECT * FROM products;

-- Adding a column with Null values
ALTER TABLE products
ADD COLUMN discounted_price NUMERIC (10, 2);

--Addinv values to the column except some rows
UPDATE products
SET discounted_price= price*0.1
WHERE product_name NOT IN ('Laptop', 'Smartphone');

--Handle the null values using COALESCE statement
SELECT product_name,
	COALESCE (price, discounted_price)
	AS final_price
FROM products;