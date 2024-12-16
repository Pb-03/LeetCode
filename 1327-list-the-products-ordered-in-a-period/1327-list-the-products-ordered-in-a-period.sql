SELECT 
    p.product_name, 
    SUM(o.unit) AS unit
FROM 
    Products p
LEFT JOIN 
    Orders o ON p.product_id = o.product_id
WHERE 
    SUBSTR(o.order_date, 1, 7) = '2020-02'
GROUP BY 
    p.product_id
HAVING 
    unit >= 100;
