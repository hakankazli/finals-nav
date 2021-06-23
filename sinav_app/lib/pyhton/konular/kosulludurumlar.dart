import 'package:flutter/material.dart';

class pkosullu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("Koşullu Durumlar"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(

            centerTitle: true,
            background: Image.asset("images/pythonders.png",fit: BoxFit.fill,),
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
        child: Text("if Bloğu:if bloğu programımızın içinde herhangi bir yerde belli bir koşulu kontrol edecek isek kullanılan bloklardır. Yazımı şu şekildedir;\nif (koşul):\n# if bloğu - Koşul sağlanınca (True) çalışır. Bu hizadaki her işlem bu if bloğuna ait.. if bloğu girintiyle oluşturulur.Yapılacak İşlemler",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("else Bloğu:else blokları if koşulu sağlanmadığı zaman (False) çalışan bloklardır. Kullanımı şu şekildedir;\nelse:\n# else bloğu - Yukarısındaki herhangi bir if bloğu (veya ilerde göreceğimiz elif bloğu) çalışmadığı zaman çalışır.# else bloğu - Girintiyle oluşturulur.Yapılacak İşlemler",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/Adsız.png",fit: BoxFit.fill,),
          ],

        ),

      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("if-elif-else Blokları:\nProgramlamada bir durum bir çok koşula bağlı olabilir. Örneğin bir hesap makinesi programı yazdığımızda kullanıcının girdiğiişlemlere göre koşullarımızı belirleyebiliriz. Bu tür durumlar için if-elif-else kalıplarını kullanırız. Programlarımızda, kaç tanekoşulumuz var ise o kadar elif bloğu oluşturabiliriz. Ayrıca else in yazılması zorunlu değildir. if - elif - else kalıplarında, hangi koşulsağlanırsa program o bloğu çalıştırır ve if-elif blokları sona erer. Şimdi isterseniz kullanıcıya işlem seçtirdiğimiz bir programla , bukalıbı öğrenmeye çalışalım",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Koşullu Durum Örnekleri:",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/adsız15.png",fit: BoxFit.fill,),
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
            Image.asset("images/adsız16.png",fit: BoxFit.fill,),
          ],
        ),
      ),
    ];
  }


}
