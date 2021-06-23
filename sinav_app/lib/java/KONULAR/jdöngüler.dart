import 'package:flutter/material.dart';

class diziler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("DÖNGÜLER"),
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
            Text(" FOR:İstenen deyim(ler)in kaç kez tekrarlanacağı biliniyorsa, for döngü yapısını kullanmak kolaydır. Tekrarlanacak deyim tek ise sözdizimi şöyledir:",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("ÖRNEK",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/JAVAFOR.png",fit: BoxFit.fill,),
          ],

        ),

      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("WHİLE:Bir ya da bir grup deyimimn belli bir koşul sağlandığı sürece tekrarlanması için kullanılan bir denetim yapısıdır.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("örnek:",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/javawhile.png",fit: BoxFit.fill,),
          ],
        ),
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
            Text("örnek:.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/dowhilejava.png",fit: BoxFit.fill,),
          ],
        ),
      ),
    ];
  }


}
