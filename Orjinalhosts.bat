@echo off
chcp 65001 > nul
title Discord DNS Ayarlarını Geri Alma Aracı

:: Yönetici hakları kontrolü
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Bu programın çalışması için yönetici hakları gerekiyor.
    echo Lütfen dosyaya sağ tıklayıp "Yönetici olarak çalıştır" seçeneğini kullanın.
    pause
    exit /B 1
)

:: Bilgilendirme mesajı
echo Discord DNS Ayarlarını Geri Alma Aracına Hoş Geldiniz!
echo.
echo Bu araç, daha önce yapılan DNS ayarlarını kaldıracak.
echo.
echo Devam etmek için herhangi bir tuşa basın...
pause >nul

:: Yedek dosyasını kontrol et
if not exist %windir%\System32\drivers\etc\hosts.backup (
    echo Yedek hosts dosyası bulunamadı!
    echo Ayarları manuel olarak kaldırmanız gerekecek.
    pause
    exit /B 1
)

:: Discord işlemlerini sonlandır
echo Discord kapatılıyor (eğer açıksa)...
taskkill /F /IM discord.exe >nul 2>&1

:: Yedek dosyasını geri yükle
echo Orijinal hosts dosyası geri yükleniyor...
copy /Y %windir%\System32\drivers\etc\hosts.backup %windir%\System32\drivers\etc\hosts

:: DNS önbelleğini temizle
echo DNS önbelleği temizleniyor...
ipconfig /flushdns >nul

:: Başarılı mesajı
cls
echo ===============================
echo İşlem Başarıyla Tamamlandı!
echo ===============================
echo.
echo Yapılan işlemler:
echo 1. Orijinal hosts dosyası geri yüklendi
echo 2. DNS önbelleği temizlendi
echo 3. Discord yeniden başlatılmaya hazır
echo.
echo NOT: Discord'u şimdi yeniden başlatabilirsiniz.
echo.
echo Çıkmak için herhangi bir tuşa basın...
pause >nul