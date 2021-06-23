import 'package:flutter/material.dart';

class diziler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("DİZİLER"),
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
        child: Text("Aynı türde birden çok değişkeni bir dizi veri yapısına saklayabilirsiniz. Öğelerinin türünü belirterek bir dizi bildirirsiniz. Dizinin herhangi bir türdeki öğeleri depolamasını istiyorsanız, object türü olarak belirtebilirsiniz. C# Birleşik tür sisteminde, tüm türler, önceden tanımlanmış ve Kullanıcı tanımlı, başvuru türleri ve değer türleri, doğrudan veya dolaylı olarak öğesinden devralınır",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Örnek:",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/Adsız.png",fit: BoxFit.fill,),
    ],

        ),

    ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Bir dizi aşağıdaki özelliklere sahiptir:\n #Bir dizi tek boyutlu, çok boyutlu veya pürüzlüolabilir.\n #Boyut sayısı ve her boyutun uzunluğu, dizi örneği oluşturulduğunda oluşturulur. Bu değerler, örneğin kullanım ömrü boyunca değiştirilemez.\n #Sayısal dizi öğelerinin varsayılan değerleri sıfır olarak ayarlanır ve başvuru öğeleri null olarak ayarlanır\n #Sivri dizi dizi dizilerdir ve bu nedenle öğeleri başvuru türleridir ve olarak başlatılır null .",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Diziler sıfır dizinli: öğeleri olan bir dizi ' dan ' a n dizinlenir 0 n-1\n #Dizi öğeleri, bir dizi türü de dahil olmak üzere herhangi bir türde olabilir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text("Nesne Olarak Diziler:\n C# içinde diziler aslında nesnelerdir ve yalnızca C ve C++ gibi bitişik belleğin adreslenebilir bölgeleri değildir. Array , tüm dizi türlerinin soyut temel t t türlerindendir. Özellikleri ve sahip olan diğer sınıf üyelerini Array kullanabilirsiniz. Bunun bir örneği, bir Length dizinin uzunluğunu almak için özelliğini kullanmaktır. Aşağıdaki kod, olan dizisinin numbers uzunluğunu adlı bir 5 değişkene lengthOfNumbers atar:) oluşturur..",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("örnek:.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            Image.asset("images/dizi.png",fit: BoxFit.fill,),
          ],
        ),
      ),
    ];
  }


}
