import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# 1. Verileri Yükle

try:
    df_country = pd.read_csv('top_countries_by_sales.csv')
    
    df_trends = pd.read_csv('processed_data:monthly_sales_trends_2025.csv') 
    print("Veriler yüklendi!")
except Exception as e:
    print(f"Hata oluştu: {e}")

# 2. Grafik Ayarları
sns.set_theme(style="whitegrid")

# --- GRAFİK 1: En Çok Satış Yapan 10 Ülke ---
plt.figure(figsize=(10, 6))
sns.barplot(x='toplam_ciro', y='country', data=df_country.head(10), palette='viridis')
plt.title('Pazar Liderleri: İlk 10 Ülke (Ciro Bazlı)', fontsize=14)
plt.tight_layout()
plt.savefig('sales_by_country.png') # Rapor klasörüne kaydetmek için
plt.show()

# --- GRAFİK 2: Aylık Satış Trendi ---
plt.figure(figsize=(10, 6))
sns.lineplot(x='ay', y='aylik_ciro', data=df_trends, marker='o', color='red', linewidth=2)
plt.title('2025 Yılı Satış Trend Analizi', fontsize=14)
plt.xticks(range(1, 12))
plt.grid(True)
plt.savefig('monthly_trend_analysis.png')
plt.show()
