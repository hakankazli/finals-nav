import 'package:flutter/material.dart';

class cdonguler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("döngüler"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(

            centerTitle: true,
            background: Image.asset("images/C#.jpg",fit: BoxFit.fill,),
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
        child: Text("For döngüsü:For döngüsü, belirtilen komutların istenen koşullar sağlandığı sürece kodların tekrarlanmasını sağlar. En sık kullanılan döngü çeşididir. For döngüsünde ki başlangıç, bitiş ve artış (azalış) gibi değerleri istediğimiz kadar tekrarlamasını sağlayan yapıdır.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Örnek:",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/fordöngü.png",fit: BoxFit.fill,),
          ],

        ),

      ),


      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("While döngüsü:\n While döngüsü, belirtilen komutların istenen koşullar sağlandığı sürece tekrar tekrar çalıştırılması için kullanılan döngü çeşididir. For döngüsünden farkı ise verilen şartı kontrol etmesidir. Genellikle dongünün kaç kez tekrarlanacağı bilinmediği durumlarda kullanılır. Döngünün çalışması için belirtilen koşulların false olması durumda döngü çalışmaz.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [

            Image.asset("images/WHİLEDÖNGÜSÜ.png",fit: BoxFit.fill,),
          ],
        ),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Do-While Döngüsü: While döngüsünde olduğu gibi döngünün kaç kez tekrarlanacağının bilinmediği durumlarda kullanılır. While döngüsünde koşula bağlı olarak tekrarlanır. Do-while döngüsünde ise koşul en son kontrol edilir. Bu durumda kullanıldığında döngüde işlemler en az bir kere koşuldan bağımsız çalışır.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Image.asset("images/doWHİLEDÖNGÜSÜ.png",fit: BoxFit.fill,),
          ],
        ),
      ),

    ];
  }


}
