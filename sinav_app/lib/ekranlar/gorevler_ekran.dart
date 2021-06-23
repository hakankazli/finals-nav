
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sinav_app/ekranlar/gorev_veri.dart';
import 'gorevler_ekle.dart';
import 'gorevler_list.dart';

class GorevlerEkran extends StatefulWidget {

  // Widget buildModalSheet(BuildContext context){
  //   return Container(
  //     child: Center(
  //       child: Text('modal sheet'),
  //     ),
  //   );
  // }


  @override
  _GorevlerEkranState createState() => _GorevlerEkranState();
}

class _GorevlerEkranState extends State<GorevlerEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.red),
        backgroundColor: Colors.black,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=>GorevEkle());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list, size: 40, color: Colors.red),
                  backgroundColor: Colors.black,
                  radius: 30,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Görev Yöneticisi',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${Provider.of<GorevVeri>(context).gorevSayisi} tane görev var',
                  style: TextStyle(fontSize: 20),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GorevListesi(),
            ),
          ),
        ],
      ),
    );
  }
}
