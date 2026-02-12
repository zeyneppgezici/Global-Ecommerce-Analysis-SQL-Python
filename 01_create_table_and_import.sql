CREATE TABLE ecommerce_sales (
    order_id INT,
    order_date DATE,
    country VARCHAR(50),
    product_category VARCHAR(50),
    unit_price DECIMAL(10,2),
    quantity INT,
    total_amount DECIMAL(10,2),
    customer_id INT
);