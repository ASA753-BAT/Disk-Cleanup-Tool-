# disk-h-zl-bi-imlendirme-# 💽 Disk Temizleme Aracı (Windows)

Bu proje, Windows işletim sistemlerinde kullanılmak üzere geliştirilmiş basit bir **Disk Temizleme Aracı**dır. Toplu komut dosyası (`.bat`) ile çalışır ve seçilen diski **tamamen temizleyip yeniden biçimlendirir**.

> ⚠️ **UYARI:** Bu araç, seçilen diskteki TÜM verileri kalıcı olarak siler. Dikkatli kullanınız!

---

## 🚀 Özellikler

- Bağlı diskleri listeler (model, kapasite ve index bilgisi)
- Kullanıcıdan temizlenecek disk numarasını alır
- İşlem öncesi onay ister
- `diskpart` aracıyla:
  - Diski temizler (`clean`)
  - Yeni bir bölüm oluşturur
  - NTFS olarak hızlı biçimlendirir
  - Sürücü harfi atar
- İşlem tamamlandığında kullanıcıyı bilgilendirir

---

## 🖥️ Kullanım

1. Dosyayı `disk-temizle.bat` adıyla kaydedin.
2. Dosyaya **sağ tıklayıp "Yönetici olarak çalıştır"** seçeneğiyle çalıştırın.
3. Açılan pencerede talimatları izleyin.

---

## 🔐 Gereksinimler

- Windows 10 / 11
- Yönetici (Administrator) yetkileri
- `diskpart` aracı (Windows ile birlikte gelir)

---

## ⚠️ Uyarılar

- Yanlış disk seçimi geri döndürülemez veri kaybına yol açar.
- Sistem diski veya aktif çalışan bir disk seçilmemelidir.
- Verilerinizi silmeden önce mutlaka yedekleyin.

---

## 🛡️ Güvenlik İpuçları

- Komut dosyasını sanal makinelerde veya test disklerinde denemeden gerçek disklerde kullanmayın.
- Komutu çalıştırmadan önce `wmic diskdrive` ile listelenen bilgileri dikkatlice inceleyin.
- Script’in daha güvenli çalışması için sadece harici diskleri listeleyen bir sürüm oluşturabilirsiniz.

---
