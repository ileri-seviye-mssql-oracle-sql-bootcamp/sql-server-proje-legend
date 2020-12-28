# Kodluyoruz SQL Bootcamp Proje

Bu projenin amacı bir veri tabanının tasarım aşamasında gereken incelemelerin ve ardından yapılacak kavramsal tasarımın bir dokümantasyonunu hazırlamaktır. Bu dokümana örnek olarak repository'nin dosya listesine AdventureWork veri tabanı için hazırlanmış bir doküman konulmuştur.

Sizden talep edilen çalışma;
AdventureWork veri tabanının bir e-ticaret veri tabanı olmasından dolayı e-ticaret dışında bir konuda buna benzer bir doküman hazırlamanızdır.

## Veri Tabanını Tasarlarken Uymanız Gereken Kurallar / Tavsiyeler

* Tablolar arası bağlantılar ayarlanmalıdır.
* Raporlamalar için gerekli View'ler oluşturulmalıdır.
* İşlemler için Stored Procedure oluşturulmalıdır. Örneğin: Kütüphane yönetim sistemi için kitap ödünç alma bir işlemdir ve bunun için bir Stored Procedure oluşturulmalıdır. Bu işlem için gerekli örnek kurallar:
 1. Kişi daha önce cezalı durumda olmamalıdır.
 2. Kitap ödünç verilebilir durumda olmalıdır.
 3. Kişinin üzerinde en fazla 3 adet kitap bulunmalıdır.
 Bunun gibi kuralların tamamı sağlandıktan sonra kitap ödünç verilebilmelidir.
 * Veri tabanı yedekleme stratejileri ayarlanmalıdır.
 
 Burada temel kurallar yazıldı ancak derslerde işlenen bütün konular göz önünde bulundurularak bir proje yapılmalıdır.
 Örneğin bir C# projesinde bir butonun altına yazılan kodların T-SQL karşılığını bir Stored procedure, View veya fonksiyon olarak oluşturmalısınız.

## Projenin GitHub'a Yüklenmesi
Projenizi GitHub'a yüklerken her nesne kendi türünün klasöründe olmalıdır. Tabloların SQL komutlarını "Tablolar" klasöründe, Stored procedur'ler "Stored Procedurler" klasöründe olmalıdır vs.
Kodlarla beraber oluşturacağınız dokümanı da pdf formatında yükleyiniz.

NOT: Örnek olarak yüklenen doküman profesyonel araçlarla hazırlandığından siz Word'ün el verdiği şekilde tablolar ve listeler ile de yapabilirsiniz. 
