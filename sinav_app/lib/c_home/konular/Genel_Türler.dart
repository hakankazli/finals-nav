import 'package:flutter/material.dart';

class turler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(

          title: Text("TÜRLER"),
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
        child: Text("Yerleşik türler:C#, tamsayıları, kayan nokta değerlerini, Boole ifadelerini, metin karakterlerini, ondalık değerleri ve diğer veri türlerini temsil etmek için standart bir yerleşik türler kümesi sağlar. Ayrıca yerleşik string ve object türler vardır. Bu türler, herhangi bir C# programında kullanabileceğiniz şekilde kullanılabilir.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Özel türler:struct class interface enum record Kendi özel türlerinizi oluşturmak için,,, ve yapılarını kullanın. .NET sınıf kitaplığı kendi uygulamalarınızda kullanabileceğiniz özel türlerin bir koleksiyonudur. Varsayılan olarak, sınıf kitaplığındaki en sık kullanılan türler, herhangi bir C# programında kullanılabilir. Diğerleri yalnızca içinde tanımlandığı derlemeye açıkça bir proje başvurusu eklerken kullanılabilir hale geldi. ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],

        ),

      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Text(" Derleyici derlemeye bir başvuruya sahip olduktan sonra, kaynak kodda bu derlemede bildirilen türlerin değişkenlerini (ve sabitlerini) bildirebilirsiniz.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ),

      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("Ortak tür sistemi:Devralma ilkesini destekler. Türler, temel türler olarak adlandırılan diğer türlerden türetici olabilir. Türetilmiş tür, yöntemleri, özellikleri ve temel türün diğer üyelerini devralıyor (bazı kısıtlamalarla). Temel tür de başka bir türetebilirsiniz, bu durumda türetilmiş tür devralma hiyerarşisinde her iki temel türün üyeleri devralınır.",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      ],
        ),
      ),
    Container(
    margin: EdgeInsets.only(bottom: 5),
    height: 100,
    color: Colors.green[200],
    alignment:Alignment.center,
    child: Text("(C# anahtar sözcüğü: ) gibi yerleşik sayısal türler de dahil olmak üzere tüm türler, nihai olarak tek bir temel tür olan System.Int32 int (C# anahtar System.Object sözcüğü: ) türetir. object Bu birleşik tür hiyerarşisi Ortak Tür Sistemi (CTS) olarak adlandırılan bir sistemdir. .",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
    ),
      Container( margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment:Alignment.center,
        child: Column(
          children: [
            Text("CTS'de her tür bir değer türü veya başvuru türü olarak tanımlanır. Bu türler . NET sınıf kitaplığında tüm özel türleri ve ayrıca kendi kullanıcı tanımlı türlerinizi içerir. anahtar sözcüğünü kullanarak tanımladığınız struct türler değer türleridir; tüm yerleşik sayısal türler structs olur. veya anahtar sözcüğünü kullanarak class tanımladığınız record türler başvuru türleridir. Başvuru türleri ve değer türleri farklı derleme zamanı kurallarına ve farklı çalışma zamanı davranışına sahip olur",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          ],
        ),
      ),

    ];
  }


}
