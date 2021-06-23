import 'package:flutter/material.dart';

class diziler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("KALITIM"),
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
            Text(" Java’da kalıtım nedir?Nesne Yönelimli Programlama dillerinde kalıtım olgusu, bir sınıfta (class) tanımlanmış değişkenlerin ve/veya metotların (fonksiyon, procedure) yeniden tanımlanmasına gerek olmaksızın yeni bir sınıfa taşınabilmesidir. Bunun için yapılan iş, bir sınıftan bir alt-sınıf (subclass) türetmektir. Türetilen alt-sınıf, üst-sınıfta tanımlı olan bütün değişkenlere ve metotlara sahip olur. Bu özeliğe kalıtım özeliği (inheritance) diyoruz.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Programcı, yeni alt-sınıfları tanımlarken, üst-sınıftan (superclass) kalıtsal olarak geleceklere ek olarak, kendisine gerekli olan başka değişken ve metotları da tanımlayabilir.Bu yolla, bir kez kurulmuş olan sınıfın tekrar tekrar kullanılması olanaklı olur. Böylece, programlar daha kısa olur, programın yazılma zamanı azalır ve gerektiğinde değiştirilmesi ve onarılması (debug) kolay olur.Alt-sınıf türetme hiyerarşik bir yapıda olur. Bir alt-sınıfın türetildiği sınıf, o alt-sınıfın üst-sınıfıdır. Java’da bir alt-sınıfın ancak bir tane üst-sınıfı olabilir (C++ ‘dakinden farklı olduğuna dikkat ediniz). Ama bir sınıftan birden çok alt-sınıf türetilebilir.Üst-sınıfa ata (parent), alt-sınıfa da oğul (child) denir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
          ],
        ),

      ),


    ];
  }


}