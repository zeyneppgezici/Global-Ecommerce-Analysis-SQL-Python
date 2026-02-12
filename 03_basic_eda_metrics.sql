/* ADIM: 03 - Temel EDA (Keşifçi Veri Analizi) Metrikleri
AÇIKLAMA: Veri setindeki genel toplamları ve ortalamaları hesaplar.
*/

-- 1. Genel Performans Özeti
-- Toplam satış miktarı, benzersiz ülke sayısı, toplam ciro ve ortalama sepet tutarı
SELECT 
    COUNT(order_id) AS toplam_siparis_sayisi,
    COUNT(DISTINCT country) AS aktif_ulke_sayisi,
    SUM(total_amount) AS toplam_ciro,
    AVG(total_amount) AS ortalama_siparis_tutari
FROM ecommerce_sales;

-- 2. Veri Seti Zaman Aralığı
-- Analizimizin hangi tarihleri kapsadığını kontrol edelim
SELECT 
    MIN(order_date) AS baslangic_tarihi, 
    MAX(order_date) AS bitis_tarihi 
FROM ecommerce_sales;