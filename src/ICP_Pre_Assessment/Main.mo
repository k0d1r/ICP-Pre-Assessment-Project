// hesap makinesi
// değişkenler (let -> immutable, var -> mutable)
// operatörler
// async metodu
// if condition
// canister => akıllı sözleşme

actor hesap_makinesi {
    // Mutable hücre değişkeni
    var hucre: Int = 0;

    // Toplama fonksiyonu
    public func toplama(s: Int): async Int {
        hucre += s; // s sayısını hucre'ye ekle
        return hucre; // Güncel hücre değerini döndür
    };

    // Çıkarma fonksiyonu
    public func cikarma(s: Int): async Int {
        hucre -= s; // s sayısını hucre'den çıkar
        return hucre; // Güncel hücre değerini döndür
    };

    // Çarpma fonksiyonu
    public func carpma(s: Int): async Int {
        hucre *= s; // hucre'yi s ile çarp
        return hucre; // Güncel hücre değerini döndür
    };

    // Bölme fonksiyonu
    public func bolme(s: Int): async ?Int {
        if (s != 0) {
            hucre /= s; // hucre'yi s'ye böl
            return ?hucre; // Güncel hücre değerini döndür
        } else {
            return null; // Bölme 0'a yapılırsa null döndür
        }
    };
    // Hücreyi temizleme fonksiyonu
    public func temizle(): async () {
        hucre := 0; // Hücreyi sıfırla
    };
}
