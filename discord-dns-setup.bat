@echo off
chcp 65001 > nul
title Discord DNS Ayarlama Aracı

:: Yönetici hakları kontrolü
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Bu programın çalışması için yönetici hakları gerekiyor.
    echo Lütfen dosyaya sağ tıklayıp "Yönetici olarak çalıştır" seçeneğini kullanın.
    pause
    exit /B 1
)

:: Bilgilendirme mesajı
echo Discord DNS Ayarlama Aracına Hoş Geldiniz!
echo Bu araç, Discord'a erişim probleminizi çözmek için DNS ayarlarınızı düzenleyecek.
echo.
echo Devam etmek için herhangi bir tuşa basın...
pause >nul

:: Hosts dosyasının yedeğini al
echo Hosts dosyasının yedeği alınıyor...
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hosts.backup
if %errorLevel% neq 0 (
    echo Yedekleme işlemi başarısız oldu!
    pause
    exit /B 1
)

:: Geçici DNS dosyası oluştur
echo # Discord için güncellenmiş Cloudflare DNS ayarları> "%TEMP%\discord_dns.txt"
echo # Ana Cloudflare IP'leri (1.1.1.1 ve 1.0.0.1) yerine alternatif IP'ler kullanılmıştır>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord ana domainleri>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 www.discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 www.discord.com>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord CDN>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 cdn.discordapp.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 cdn.discordapp.com>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord Media>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 media.discordapp.net>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 media.discordapp.net>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord Gateway ve API>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 gateway.discord.gg>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 gateway.discord.gg>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 api.discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 api.discord.com>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord Status>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 status.discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 status.discord.com>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord Voice>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 voice.discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 voice.discord.com>> "%TEMP%\discord_dns.txt"
echo.>> "%TEMP%\discord_dns.txt"
echo # Discord Updates>> "%TEMP%\discord_dns.txt"
echo 104.17.239.5 updates.discord.com>> "%TEMP%\discord_dns.txt"
echo 104.17.238.5 updates.discord.com>> "%TEMP%\discord_dns.txt"

:: DNS ayarlarını hosts dosyasına ekle
type "%TEMP%\discord_dns.txt" >> %windir%\System32\drivers\etc\hosts

:: Geçici dosyayı sil
del "%TEMP%\discord_dns.txt"

:: DNS önbelleğini temizle
echo DNS önbelleği temizleniyor...
ipconfig /flushdns >nul

:: Discord işlemlerini sonlandır
echo Discord kapatılıyor (eğer açıksa)...
taskkill /F /IM discord.exe >nul 2>&1

:: Başarılı mesajı
cls
echo ===============================
echo İşlem Başarıyla Tamamlandı!
echo ===============================
echo.
echo Yapılan işlemler:
echo 1. Hosts dosyası yedeklendi (%windir%\System32\drivers\etc\hosts.backup)
echo 2. Discord DNS ayarları eklendi
echo 3. DNS önbelleği temizlendi
echo 4. Discord yeniden başlatılmaya hazır
echo.
echo NOT: Discord'u şimdi yeniden başlatabilirsiniz.
echo Eğer bir sorun olursa, hosts.backup dosyasını geri yükleyebilirsiniz.
echo.
echo Çıkmak için herhangi bir tuşa basın...
pause >nul