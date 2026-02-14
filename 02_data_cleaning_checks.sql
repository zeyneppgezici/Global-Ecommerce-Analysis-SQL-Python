-- Tekrarlanan Kayıt (Duplicate) Kontrolü:
-- Aynı sipariş numarasının birden fazla kez girilip girilmediğini kontrol eder.
SELECT order_id, COUNT(*) 
FROM ecommerce_sales 
GROUP BY order_id 
HAVING COUNT(*) > 1;

-- Veri Tutarlılığı Kontrolü:
-- Toplam tutarın (unit_price * quantity) matematiksel olarak doğru olup olmadığını kontrol eder.
SELECT * FROM ecommerce_sales 
WHERE unit_price * quantity <> total_amount;