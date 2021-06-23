import 'package:flutter/material.dart';

import 'package:sinav_app/loginekran%C4%B1/homepage.dart';
class anasayfayadon extends StatefulWidget {
  @override
  _anasayfayadonState createState() => _anasayfayadonState();
}

class _anasayfayadonState extends State<anasayfayadon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Sınav soruları bitmiştir")),
       body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
        RaisedButton(
        child: Text('Sınav soruları Bitmiştir Anasayfaya Dönebilirsiniz'),
        color: Colors.lightBlueAccent, onPressed: ()  {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage( ),),);
    }),
    ]));
  }
}

