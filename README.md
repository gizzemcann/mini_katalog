# Mini Katalog Uygulaması

## Proje Hakkında
Bu proje, Flutter eğitimi kapsamında geliştirilmiş temel seviye bir mobil e-ticaret katalog simülasyonudur. Uygulama içerisinde güncel teknoloji ürünleri listelenmekte, detay sayfalarına yönlendirme yapılabilmekte ve dinamik olarak çalışan bir sepet simülasyonu barındırmaktadır.

## Kullanılan Teknolojiler & Mimari
* **Dart & Flutter SDK** * **Flutter Sürümü:** `3.44.0` **Dart Sürümü:** `^3.5.0`
* **Arayüz (UI):** Sadece `material.dart` bileşenleri kullanılarak modern ve scannable bir tasarım yapılmıştır.
* **Veri Yönetimi:** Proje verileri, yerel olarak tanımlanmış bir JSON dizisinden (`mockJsonData`) dinamik olarak parse edilerek çekilmektedir. İster `WANTAPI` ister `DummyJSON` veri yapısı gelsin, kurşun geçirmez model yapısı sayesinde uygulama hatasız çalışmaktadır.
* **State Yönetimi:** Dışarıdan hiçbir üçüncü parti paket (Provider, Bloc vb.) kullanılmadan, tamamen Flutter'ın yerel `setState` mekanizması ile dinamik ürün ekleme, sepetten ürün silme ve sepeti temizleme (Checkout) işlevleri kodlanmıştır.

## Proje Özellikleri (İstenen Kriterler)
* **Discover (Ana Sayfa):** Ürünlerin grid yapısında (`GridView.builder`) listelendiği, arama çubuğu ve reklam banner'ı barındıran ana ekran.
* **Ürün Detay Sayfası:** Seçilen ürüne ait görsel, fiyat, marka ve uzun açıklama metninin gösterildiği, `Navigator` ve `Route Arguments` kullanılarak dinamik yönlendirme yapılan ekran.
* **Cart (Sepet Sayfası):** Ana sayfadan eklenen ürünlerin listelendiği, anlık toplam fiyat (Total) hesaplayan, ürün silme ve sepeti onaylama özelliklerine sahip `Stateful` ekran.

## Çalıştırma Adımları
1. Projeyi bilgisayarınıza indirin veya terminalden klonlayın.
2. VS Code terminalini açarak proje ana dizinine gidin.
3. Bağımlılıkları yüklemek için şu komutu çalıştırın:
   ```bash
   flutter pub get
4.Uygulamayı bir emülatör veya gerçek cihazda başlatmak için:
```bash
flutter run


