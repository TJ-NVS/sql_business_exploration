/******************************************************************************
*******************************************************************************

Answer business questions

*******************************************************************************
*******************************************************************************/

USE	magist;

/* What categories of tech products does Magist have? */

SELECT DISTINCT 
    product_category_name 
FROM products 
WHERE product_category_name IN (
    'informatica_acessorios', 'telefonia', 'eletronicos', 'computadores'
);

/* How many tech products have been sold & percentage?*/

SELECT 
    COUNT(oi.product_id) AS total_tech_sold,
    (COUNT(oi.product_id) / (SELECT COUNT(*) FROM order_items)) * 100 AS percentage_of_total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IN (
    'informatica_acessorios', 'telefonia', 'eletronicos', 
     'computadores'
);

/* What’s the average price of the products being sold?*/
SELECT 
    AVG(price) AS avg_product_price 
FROM order_items;

SELECT 
    p.product_category_name AS category,
    ROUND(AVG(oi.price), 2) AS average_price,
    COUNT(oi.product_id) AS units_sold
FROM
    order_items oi
        JOIN
    products p ON oi.product_id = p.product_id
WHERE
    p.product_category_name IN ('informatica_acessorios' , 'telefonia', 'eletronicos', 'computadores')
GROUP BY p.product_category_name
ORDER BY average_price DESC;

/* Are expensive tech products popular?*/
SELECT 
    CASE 
        WHEN oi.price > 150 THEN 'Expensive Tech (>150€)'
        ELSE 'Affordable Tech (<=150€)'
    END AS price_tier,
    COUNT(*) AS units_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IN (
    'informatica_acessorios', 'telefonia', 'eletronicos', 
     'computadores'
)
GROUP BY price_tier;

/* How many months of data are included?*/

SELECT 
    TIMESTAMPDIFF(MONTH, MIN(order_purchase_timestamp), MAX(order_purchase_timestamp)) AS total_months
FROM orders;

/* How many sellers vs. Tech sellers?*/

SELECT 
    COUNT(DISTINCT s.seller_id) AS total_sellers,
    COUNT(DISTINCT CASE WHEN p.product_category_name IN ('informatica_acessorios', 'telefonia', 'eletronicos', 'pc_gamer', 'computadores', 'sinalizacao_e_seguranca', 'telefonia_fixa') THEN s.seller_id END) AS tech_sellers,
    (COUNT(DISTINCT CASE WHEN p.product_category_name IN ('informatica_acessorios', 'telefonia', 'eletronicos', 'pc_gamer', 'computadores', 'sinalizacao_e_seguranca', 'telefonia_fixa') THEN s.seller_id END) / COUNT(DISTINCT s.seller_id)) * 100 AS percentage_tech_sellers
FROM sellers s
LEFT JOIN order_items oi ON s.seller_id = oi.seller_id
LEFT JOIN products p ON oi.product_id = p.product_id;

/* Total amount earned by all sellers vs. Tech sellers?*/

SELECT 
    SUM(oi.price) AS total_earned_all,
    SUM(CASE WHEN p.product_category_name IN ('informatica_acessorios', 'telefonia', 'eletronicos', 'pc_gamer', 'computadores', 'sinalizacao_e_seguranca', 'telefonia_fixa') THEN oi.price ELSE 0 END) AS total_earned_tech
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

/* Average monthly income of all sellers vs. Tech sellers?*/
SELECT 
    SUM(oi.price) / 25 / COUNT(DISTINCT oi.seller_id) AS avg_monthly_income_per_seller,
    SUM(CASE WHEN p.product_category_name IN ('informatica_acessorios', 'telefonia', 'eletronicos', 'pc_gamer', 'computadores', 'sinalizacao_e_seguranca', 'telefonia_fixa') THEN oi.price ELSE 0 END) / 25 / 
    COUNT(DISTINCT CASE WHEN p.product_category_name IN ('informatica_acessorios', 'telefonia', 'eletronicos', 'pc_gamer', 'computadores', 'sinalizacao_e_seguranca', 'telefonia_fixa') THEN oi.seller_id END) AS avg_monthly_income_per_tech_seller
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

/* Average time between order placement and delivery?*/
SELECT 
    AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS avg_delivery_days
FROM orders
WHERE order_status = 'delivered';

/* How many orders are delivered on time vs. delayed?*/
SELECT 
    CASE 
        WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN 'On Time / Early'
        ELSE 'Delayed'
    END AS delivery_status,
    COUNT(*) AS order_count
FROM orders
WHERE order_status = 'delivered' AND order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;

/* Is there a pattern for delayed orders (e.g., big products)?*/
SELECT 
    CASE 
        WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN 'On Time'
        ELSE 'Delayed'
    END AS delivery_status,
    AVG(p.product_weight_g) AS avg_weight_grams,
    AVG(p.product_length_cm * p.product_height_cm * p.product_width_cm) AS avg_volume_cm3
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'delivered' AND o.order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;


/* to check the exact date of the very last order recorded in the dataset*/
SELECT 
    MAX(order_purchase_timestamp) AS latest_recorded_order
FROM
    orders;


/* Proof 1: Check the Last Available Timestamp (The Hard Ceiling)*/
SELECT 
    MAX(order_purchase_timestamp) AS last_order_date,
    MAX(order_approved_at) AS last_approval_date,
    MAX(order_delivered_carrier_date) AS last_carrier_handoff
FROM
    orders;


/* Proof 2: Look at the Exact Distribution of September Orders*/
SELECT 
    DATE(order_purchase_timestamp) AS order_date,
    COUNT(*) AS daily_orders
FROM
    orders
WHERE
    order_purchase_timestamp >= '2018-09-01'
GROUP BY 
    order_date
ORDER BY 
    order_date ASC;