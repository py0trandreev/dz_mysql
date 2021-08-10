CREATE OR REPLACE VIEW prodcatals (product_name, catalog_name) AS
SELECT 
p.name ,  
c.name
FROM products as p JOIN catalogs as c
ON c.id = p.catalog_id;