# Discord DNS Changer

This tool provides a simple solution for accessing Discord in regions where access might be restricted. Instead of using a VPN that could slow down your entire internet connection, this tool only modifies DNS settings specifically for Discord, ensuring optimal performance while maintaining connectivity.

## Features

- Changes DNS settings only for Discord
- Uses Cloudflare's reliable DNS servers
- Doesn't affect your overall internet speed
- Easy to install and uninstall
- Creates automatic backups of your original settings
- No third-party software or VPN required
- Completely free to use

## How It Works

The tool modifies your system's hosts file to route Discord traffic through Cloudflare's DNS servers. This method:
- Only affects Discord traffic
- Doesn't slow down your internet
- Doesn't require any additional software
- Works persistently (survives system restarts)

## Installation

1. Download both `discord-dns-setup.bat` and `discord-dns-restore.bat`
2. Right-click on `discord-dns-setup.bat`
3. Select "Run as Administrator"
4. Follow the on-screen instructions
5. Restart Discord after completion

## Uninstallation

1. Right-click on `discord-dns-restore.bat`
2. Select "Run as Administrator"
3. Follow the on-screen instructions
4. Restart Discord after completion

## Important Notes

- Requires administrator privileges to run
- Creates a backup of your original hosts file
- May need to be run again after Windows updates
- Only affects Discord connectivity, not other applications

## Troubleshooting

If Discord still doesn't connect after running the tool:
1. Make sure you ran the script as administrator
2. Try closing Discord completely (check Task Manager)
3. Clear Discord's cache
4. Restart your computer
5. Run the script again

## Technical Details

The tool modifies your system's hosts file (located at `C:\Windows\System32\drivers\etc\hosts`) to route Discord traffic through Cloudflare's DNS servers. It uses the following IP addresses:
- 104.17.239.5
- 104.17.238.5

These IPs are chosen for their reliability and speed in accessing Discord services.

---

# Discord DNS Değiştirici

Bu araç, Discord'a erişimin kısıtlı olabileceği bölgelerde kullanım için basit bir çözüm sunar. Tüm internet bağlantınızı yavaşlatabilecek bir VPN kullanmak yerine, bu araç sadece Discord için DNS ayarlarını değiştirir ve böylece en iyi performansı sağlarken bağlantı sorunlarını çözer.

## Özellikler

- Sadece Discord için DNS ayarlarını değiştirir
- Cloudflare'in güvenilir DNS sunucularını kullanır
- Genel internet hızınızı etkilemez
- Kurulumu ve kaldırılması kolaydır
- Orijinal ayarlarınızın otomatik yedeğini alır
- Üçüncü parti yazılım veya VPN gerektirmez
- Tamamen ücretsizdir

## Nasıl Çalışır

Araç, sistem hosts dosyanızı değiştirerek Discord trafiğini Cloudflare DNS sunucuları üzerinden yönlendirir. Bu yöntem:
- Sadece Discord trafiğini etkiler
- İnternet hızınızı düşürmez
- Ek yazılım gerektirmez
- Kalıcıdır (sistem yeniden başlatmalarında ayarlar korunur)

## Kurulum

1. `discord-dns-setup.bat` ve `discord-dns-restore.bat` dosyalarını indirin
2. `discord-dns-setup.bat` dosyasına sağ tıklayın
3. "Yönetici olarak çalıştır" seçeneğini seçin
4. Ekrandaki talimatları takip edin
5. İşlem tamamlandıktan sonra Discord'u yeniden başlatın

## Kaldırma

1. `discord-dns-restore.bat` dosyasına sağ tıklayın
2. "Yönetici olarak çalıştır" seçeneğini seçin
3. Ekrandaki talimatları takip edin
4. İşlem tamamlandıktan sonra Discord'u yeniden başlatın

## Önemli Notlar

- Çalıştırmak için yönetici izinleri gerektirir
- Orijinal hosts dosyanızın yedeğini oluşturur
- Windows güncellemelerinden sonra tekrar çalıştırılması gerekebilir
- Sadece Discord bağlantısını etkiler, diğer uygulamaları etkilemez

## Sorun Giderme

Discord hala bağlanmıyorsa:
1. Betiği yönetici olarak çalıştırdığınızdan emin olun
2. Discord'u tamamen kapatın (Görev Yöneticisi'ni kontrol edin)
3. Discord'un önbelleğini temizleyin
4. Bilgisayarınızı yeniden başlatın
5. Betiği tekrar çalıştırın

## Teknik Detaylar

Araç, sistem hosts dosyanızı (`C:\Windows\System32\drivers\etc\hosts`) değiştirerek Discord trafiğini Cloudflare DNS sunucuları üzerinden yönlendirir. Aşağıdaki IP adreslerini kullanır:
- 104.17.239.5
- 104.17.238.5

Bu IP'ler, Discord servislerine erişimde güvenilirlik ve hız için özel olarak seçilmiştir.
