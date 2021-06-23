import 'package:flutter/material.dart';

class pfonksiyonlar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("fonksiyonlar"),
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
        child: Text("print(): Ekrana yazdırma fonksiyonudur.\n print(""Merhaba Dünya"")" ,style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Image.asset("images/Adsız12.png",fit: BoxFit.fill,),
          ],

        ),

      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
      child: Column(
        children: [
          Image.asset("images/Adsız13.png",fit: BoxFit.fill,),
        ],
      ),
      ),


    ];
  }


}
