import 'package:flutter/material.dart';

class konular4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("Button widgetları"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(

            centerTitle: true,
            background: Image.asset("images/flutter_questtionmark.jpg",fit: BoxFit.fill,),
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
        child: Text("RaisedButton Nedir:Zeminden hafif yükseltilmiş buton.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

      ),
      Container(
        child: Text("FlatButton nedir: \t Zemine yapışık  buton..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,

      ),
      Container(

        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("FloatingActionButton nedir:\t Sayfanın üzerinde yüzen buton. , ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container(

        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("PopupMenuButton. nedir : \t Basıldığında bir popup menü açan buton..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container(

        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("routes nedir :\t Uygulamanın sayfalarını map şeklinde içerir. Burada yolları tanımlanan sayfalar adlandırılmiş(Named) sayfalar olarak isimlendirilir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container(

        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("DropdownButton: \t Basıldığında açılır kapanir alt menu açan buton. ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container(

        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("ButtonBar nedir:  \t ‘Butonlardan oluşan buton kümesi.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

    ];
  }


}
