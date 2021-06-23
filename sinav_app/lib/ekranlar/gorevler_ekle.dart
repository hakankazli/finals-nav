import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sinav_app/ekranlar/gorev.dart';
import 'package:sinav_app/ekranlar/gorev_veri.dart';

class GorevEkle extends StatefulWidget {

  @override
  _GorevEkleState createState() => _GorevEkleState();
}

class _GorevEkleState extends State<GorevEkle> {
  String yeniGorev;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff481414),
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Görev Ekle',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color:Colors.redAccent
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val){
                yeniGorev=val;
              },
            ),
            SizedBox(height: 40,),
            FlatButton(
              child: Text(
                'Ekle',
                style: TextStyle(
                    color:Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.normal
                ),
              ),
              onPressed: (){
                //print(yeniGorev);
                //widget.gorevEkle(yeniGorev);
                Provider.of<GorevVeri>(context,listen: false).gorevEkle(Gorev(gorevAd: yeniGorev));
                Navigator.pop(context);
              },
              color: Colors.black87,
            )
          ],
        ),
      ),
    );
  }
}