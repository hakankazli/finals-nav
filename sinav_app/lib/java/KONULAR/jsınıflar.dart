import 'package:flutter/material.dart';

class diziler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("SINIF"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(

            centerTitle: true,
            background: Image.asset("images/javaplatformunedir.jpg",fit: BoxFit.fill,),
          ),
        ),

        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          delegate:SliverChildListDelegate(listeElemanlari()),

        ),

      ],

    );
  }

  List<Widget> listeElemanlari() {
    return [
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text(" Java’da sınıf (class)  kavramını doğada cins isimlere benzetebiliriz. Bir cins kendi başına belirli bir nesne değildir; ancak belirli türden nesnelerin ortak özelliklerini belirten soyut bir kavramdır. Örneğin, ağaç bir cins isimdir. Ama bahçedeki elma-ağacı ya da sokaktaki çınar-ağacı belirli varlıklardır. Onlar, ağaç sınıfının birer nesnesidir (üyesidir). Cinsler alt-cinslere ayrılabilir. Alt-cinsler, üst-cinslerin özelikleri yanında kendilerine has başka özelikler de taşırlar. Örneğin, memeli-hayvanlar geniş bir sınıftır. Filler, kaplanlar, şempanzeler, balinalar, insanlar vb. memeliler sınıfının (üst-sınıf) birer alt-sınıfıdır. Alt-sınıftakiler, üst-sınıfın özeliklerini taşımakla birlikte, birbirlerinden kesinlikle farklıdırlar.  Her cinsin ve her alt-cinsin kendine özgü özelikleri (nitelikler ve davranışlar) vardır. Bu özelikler, onları diğer cinslerden ayırır.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Java’da sınıfları doğadaki cinsler gibi düşürsek, konuyu kavramamız kolaylaşacaktır. Java sınıfı, tıpkı bir cinste olduğu gibi, ortak özelikleri belirlenmiş bir topluluğun adıdır. Bir java sınıfının niteliklerini değişkenlerle (attributes, fields), davranışlarını metotlarla (fonksiyon, procedure) belirleriz. Başka bir deyişle, istediğimiz özeliklerini belirterek bir sınıf (cins-isim) tanımlarız. Bu sınıfın nitelikleri  değişkenlerle (attributes, fields) ve davranışları metotlarla (fonksiyon, procedure) ortaya konulur. Kısaca, bir java sınıfı kendi özniteliklerini belirleyen değişkenleri ve fonksiyonları içeren bir birimdir. Bu nedenle, Pascal ve C gibi yapısal dillerdeki yapı (record, struct) kavramının bir genellemesidir. Record ve struct yalnızca değişkenler içerebilir. Fonksiyon ve procedure’ler onların dışında kalır. Java sınıfı ise, değişkenler yanında fonksiyonları da içeren daha genel bir yapıya sahiptir. Bir sınıf içindeki fonksiyonlar o sınıfın değişkenlerine erişebildiği gibi, farklı sınıflar arasında da iletişim sağlanabilmektedir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],

        ),

      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Sınıf ve alt-sınıfların tanımı, bütünüyle programcının gereksemelerine göre yapılabilir. Alt-sınıflardan başka alt-sınıflar üretilebilir. Böylece en üst-sınıftan başlayarak en alt-sınıfa ulaşan hiyerarşik bir yapıya sahip olurlar. En alttaki sınıf, kendisinin üstünde olan bütün sınıfların özniteliklerini taşır. Buna kalıtım (inheritance) özeliği diyoruz. Bu özelik, Java’nın üstün özeliklerinden birisidir ve ilerideki konularda nasıl işe yaradığını göreceğiz.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Java programları sınıf (class) lardan oluşur. Bütün sınıflar aynı yapıya sahiptirler. Aralarındaki farkı yaratan şey, içerdikleri değişkenler ve metotlardır. Bazıları hiç değişken ve/veya metot içermez, bazıları az, bazıları çok değişken ve  metot içerebilir.Uyarı : Bir sınıftaki değişkenler o sınıfın niteliklerini, metotlar ise o sınıfın davranışlarını belirler. Bu nedenle, sun da dahil olmak üzere bazı kaynaklarda değişken terimi yerine nitelem (attribute), fonksiyon ve procedure yerine de metot terimi kullanılır. Biz de bu derslerde genellikle bu geleneğe uyacağız. Ama, özellikle değişkeni ve fonksiyonu vurgulamak gerektiğinde bu gelenekten biraz sapabileceğiz.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("örnek:.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/SINIFjava.png",fit: BoxFit.fill,),
          ],
        ),
      ),
    ];
  }


}
