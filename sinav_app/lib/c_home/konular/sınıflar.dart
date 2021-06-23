import 'package:flutter/material.dart';

class siniflar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("Sınıflar, yapılar ve kayıtlar"),
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
        child: Text("Kapsül: Kapsülleme bazen nesne odaklı programlamanın ilk ve prensibi olarak adlandırılır. Kapsülleme ilkelerine göre, bir sınıf veya yapı, üyelerinin her birinin ne şekilde erişilebilir olduğunu belirtebilir sınıfın veya yapının dışında kod alma. Sınıf veya derleme dışından kullanılması amaçlanmayan Yöntemler ve değişkenler, kodlama hataları veya kötü amaçlı yazılımlar için olasılığı sınırlamak üzere gizlenebilir",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Erişilebilirlik:Bazı yöntemler ve özellikler, istemci kodu olarak bilinen bir sınıf veya yapı dışındaki koddan çağrılmalıdır veya erişilmek üzere tasarlanmıştır. Diğer yöntemler ve özellikler yalnızca sınıfta veya yapıda kullanım için olabilir. Yalnızca amaçlanan istemci kodunun ulaşabilmesi için kodunuzun erişilebilirliğini sınırlandırmamak önemlidir",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,)
          ],

        ),

      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Devralma: Sınıflar (ancak yapılar değil) devralma kavramını destekler. Başka bir sınıftan ( temel sınıf) türetilen bir sınıf, oluşturucular ve sonlandırıcılar hariç temel sınıfın tüm genel, korunan ve dahili üyelerini otomatik olarak içerir.  .",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Arabirimler:Sınıflar, yapılar ve kayıtlar birden çok arabirimi kalýtýmla alabilir. Bir arabirimden devralması için, türün arabirimde tanımlanmış tüm yöntemleri uyguladığı anlamına gelir. ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Genel Türler:Sınıflar, yapılar ve kayıtlar bir veya daha fazla tür parametresiyle tanımlanabilir. İstemci kodu, türün bir örneğini oluşturduğunda türü sağlar. Örneğin, List<T> System.Collections.Generic ad alanındaki sınıfı bir tür parametresiyle tanımlanır. İstemci kodu List<string> List<int> , listenin tutacağız türü belirtmek için bir veya örneği oluşturu",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Statik türler:Sınıflar (ancak yapılar veya kayıtlar değil) olarak bildirilebilecek static . Statik bir sınıf yalnızca statik üyeler içerebilir ve new anahtar sözcüğüyle başlatılamaz. Program yüklendiğinde sınıfın bir kopyası belleğe yüklenir ve onun üyelerine sınıf adından erişilir. Sınıflar, yapılar ve kayıtlar statik üyeler içerebilir",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),
    ];
  }


}
