
import 'package:flutter/material.dart';
import 'package:sinav_app/hakkimizda.dart';
import 'package:sinav_app/konular/gestures.dart';
import 'package:sinav_app/konular/konu4.dart';
import 'package:sinav_app/konular/konular1.dart';
import 'package:sinav_app/konular/konular2.dart';
import 'package:sinav_app/konular/konular3.dart';
import 'package:sinav_app/pyhton/konular/fonksiyonlar.dart';
import 'package:sinav_app/pyhton/konular/kosulludurumlar.dart';
import 'package:sinav_app/pyhton/konular/operat%C3%B6rler.dart';
import 'package:sinav_app/pyhton/konular/verit%C3%BCrleri.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru1.dart';

class pyhomePage extends StatefulWidget {
  final username;

  const pyhomePage({Key key,@required this.username}) : super(key: key);
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<pyhomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(title: Text( widget.username==null ? "Python ders notları":widget.username),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('VERİ TÜRLERİ'),
                              color: Colors.greenAccent, onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>pveri( ),),);
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(
                                    child: Text('FONKSİYONLAR'),
                                    color: Colors.greenAccent, onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>pfonksiyonlar( ),),);
                                }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('OPERATÖRLER (İŞLEÇLER):'),
                                          color: Colors.greenAccent, onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>poperatorler( ),),);
                                      }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('Koşullu Durumlar'),
                                                color: Colors.greenAccent, onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>pkosullu( ),),);
                                            }),
                                             Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  RaisedButton(

                                                    color: Colors.greenAccent, onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru1( ),),);
                                                  },
                                                    child:Text("Python Sınavına başla") ,
                                                  ),

                                                ])
                                          ])
                                    ])
                              ])
                        ])
                  ])
            ] )

    );
  }
}
