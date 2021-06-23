import 'package:flutter/material.dart';

class diziler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("VERİ TİPİ"),
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
            Text("İlkel Veri Tipleri \n Tam sayılar:Byte: -128 ve 127 arasında değerler alır. (8 bit)\n\n Short: -32768 ve 32767 arasında değerler alır. (16 bit)\n Integer: Orta uzunluktaki sayıları tutmak için kullanılır. \nEn fazla kullanılan veri tipidir. (32 bit)\nLong: Çok uzun sayıları tutmak için kullanılır. (64 bit)",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),


      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Ondalıklı Sayılar:Float: Bu tip virgülden sonra 7 haneye kadar yeterli duyarlılıktadır. (Tek duyarlı — 32 bit)\n Double: Bu tip virgülden sonra 17 haneye kadar yeterli duyarlılıktadır. (Çift duyarlı — 64 bit)\nChar: Javada karakterleri temsil eder. 16 bit yer kaplar.\nBoolean: Bu tip sadece True-False değerini alabilir..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("do..while:Bir mantıksal deyim sağlanana kadar belli deyim(ler)in tekrarlanmasını sağlayan denetim yapısıdır.Sözdizimi şöyledir:İşlenecek deyim tek ise sözdizimi şöyledir ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Referans Tipleri:Class\n Interface\n Array.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
    ];
  }


}
