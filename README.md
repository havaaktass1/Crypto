Crypto Crazy, SwiftUI kullanarak geliştirdiğim bir kripto para takip uygulamasıdır. Bu projeyi geliştirirken amacım, SwiftUI'nin modern kullanıcı arayüzü yapısını öğrenmek, API entegrasyonu gerçekleştirmek ve MVVM mimarisini gerçek bir uygulama üzerinde deneyimlemekti.

Uygulama, internet üzerinden güncel kripto para verilerini bir REST API aracılığıyla çekerek kullanıcıya liste halinde sunmaktadır. Veriler JSON formatında alınmakta ve Swift'in Codable yapıları kullanılarak işlenmektedir. Ağ işlemleri URLSession ile gerçekleştirilmiş, veri çekme süreçlerinde ise async/await yapıları kullanılarak daha okunabilir ve modern bir kod yapısı oluşturulmuştur.

Proje boyunca MVVM (Model-View-ViewModel) mimarisi kullanılarak kullanıcı arayüzü, veri yönetimi ve iş mantığı birbirinden ayrılmıştır. Bu sayede proje daha sürdürülebilir, okunabilir ve geliştirilebilir bir yapıya kavuşturulmuştur. Veri değişikliklerinin arayüze otomatik olarak yansıtılması için ObservableObject ve @Published özelliklerinden faydalanılmıştır.

Uygulama içerisinde kullanıcılar güncel kripto para bilgilerini görüntüleyebilmekte ve Refresh özelliği sayesinde verileri yeniden çekebilmektedir. API'den gelen verilerin işlenmesi sırasında hata yönetimi mekanizmaları da uygulanarak olası bağlantı veya veri hatalarının kontrol edilmesi sağlanmıştır.

Bu proje kapsamında aşağıdaki teknolojiler ve yazılım geliştirme yaklaşımları kullanılmıştır:

SwiftUI
MVVM (Model-View-ViewModel) Mimarisi
URLSession
REST API Entegrasyonu
JSON Decoding (Codable)
Async/Await
ObservableObject ve @Published
NavigationView ve List Kullanımı
Hata Yönetimi ve Veri Doğrulama

Bu proje sayesinde SwiftUI ile modern iOS uygulama geliştirme, API entegrasyonu, asenkron programlama ve mimari tasarım prensipleri üzerine uygulamalı deneyim kazandım. Crypto Crazy, gerçek zamanlı verilerle çalışan, temiz kod prensipleri dikkate alınarak geliştirilmiş bir kripto para takip uygulamasıdır.
