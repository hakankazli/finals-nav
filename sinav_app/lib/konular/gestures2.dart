import 'package:flutter/material.dart';
import 'package:sinav_app/konular/gestures2.dart';
import 'package:sinav_app/konular/gestures3.dart';
voidmain(){
  runApp(MaterialApp(
      theme:ThemeData(primarySwatch: Colors.red)
  ));

}
class gestures2 extends StatefulWidget {


  @override
  _gesturesState createState() => _gesturesState();
}

class _gesturesState extends State<gestures2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:Text("Gestures "),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("GestureDetector , içine aldığı widgetin ( mesela Container ) bulunduğu bölgeye tıklayınca bir eylem yaratmasını sağlar.Bu örnekte ise onDoubleTap komutu kullanılarak 2 kere tıklandığı zaman diğer sayfaya geçiş sağlanmıştır ",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),

          Center(

            child:GestureDetector(

                onTap: (){
                  print("tıklandı");
                },

                onDoubleTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>gestures3( ),),);;
                } ,

                child:Container(

                    width:100,
                    height:100,
                    decoration:BoxDecoration(
                        border:Border.all(),
                        color:Colors.amber
                    ),

                    child:Center(child: Text("onDoubleTap"),)

                )
            ),),
        ],
      ),
    );
  }
}
