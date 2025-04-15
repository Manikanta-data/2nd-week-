create database online_sales;

use online_sales;
-- Create the online_sales table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample data into online_sales
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 120.50, 101),
(2, '2024-01-20', 89.99, 102),
(3, '2024-02-10', 200.00, 103),
(4, '2024-02-15', 150.75, 104),
(5, '2024-03-05', 310.00, 105),
(6, '2024-03-18', 450.25, 106),
(7, '2024-03-25', 500.00, 107),
(8, '2024-04-01', 75.00, 108),
(9, '2024-04-12', 90.25, 109),
(10, '2024-04-28', 60.00, 110),
(11, '2024-05-10', 500.00, 111),
(12, '2024-05-12', 650.00, 112);

SELECT 
  EXTRACT(YEAR FROM order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

select
*
from online_sales