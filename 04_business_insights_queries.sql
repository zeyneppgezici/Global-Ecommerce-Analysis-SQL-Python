-- En yüksek ciro yapan ilk 10 ülkeyi getirir
SELECT 
    country, 
    SUM(total_amount) AS toplam_ciro,
    COUNT(order_id) AS siparis_sayisi
FROM ecommerce_sales
GROUP BY country
ORDER BY toplam_ciro DESC
LIMIT 10;

-- Ürün kategorilerinin satış performansını analiz eder
SELECT 
    product_category, 
    SUM(quantity) AS satilan_urun_adedi,
    SUM(total_amount) AS toplam_ciro,
    ROUND(AVG(unit_price), 2) AS ortalama_birim_fiyat
FROM ecommerce_sales
GROUP BY product_category
ORDER BY toplam_ciro DESC;

-- Aylık bazda ciro değişimi
SELECT 
    MONTH(order_date) AS ay, 
    SUM(total_amount) AS aylik_ciro,
    COUNT(order_id) AS aylik_siparis_sayisi
FROM ecommerce_sales
GROUP BY ay
ORDER BY ay;