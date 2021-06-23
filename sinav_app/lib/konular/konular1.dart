import 'package:flutter/material.dart';

class customScrollViewWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("MaterialApp widgetları"),
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
        child: Text("Color Nedir:Sistemin arayüzünde uygulama için kullanılacak birincil renk",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("home nedir: \t Kullanıcının sayfada gördüğü herşey  yani sayfa başlığı ve sayfa içeriğini home işaa eder.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("initialRoute nedir:\t Varsayılan ilk açılacak ana sayfa , ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("locale nedir : \t Uygulamanın başlangıç dili ve ülke kodunu belirler. Eğer boş  ise sistem dilini yani local’ini kullanılır.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("routes nedir :\t Uygulamanın sayfalarını map şeklinde içerir. Burada yolları tanımlanan sayfalar adlandırılmiş(Named) sayfalar olarak isimlendirilir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("theme nedir: \t Uygulamanın genel temasını belirler. ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("title nedir:  \t ‘Uygulma Adı’ şeklinde direk string ifade alır",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

    ];
  }


}
