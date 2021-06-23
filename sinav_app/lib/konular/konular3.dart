import 'package:flutter/material.dart';

class konular3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("appBar widgetları"),
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
        child: Text("brightness Nedir:appbar karanlık mı parlak mı olacak..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("automaticallyImplyLeading nedir: \t leading in otomatik oluşturulmasını konrol eder. false ise oluşturulmaz varsayaılanı true dir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("leading nedir:\tleading ataması yapılmamışsa flutter otomatik olarak oluşturur ve draver ile sekronize açalışır. safya geçişinde ise geri duğmesi olarak yerini alır..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("actions nedir : \tappBar sağında tıklanabilir widgetler grubu oluşturur. IconButtons, PopupMenuButton gibi.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("bottom nedir :\t appBar ın alt kısmında sayfalar arasında geçiş sağlamak için kullanılan tabbar(buton kümesi) oluşturur..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

    ];
  }


}
