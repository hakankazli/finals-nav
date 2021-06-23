import 'package:flutter/material.dart';
import 'package:sinav_app/c_home/konular/D%C4%B0Z%C4%B0LER.dart';
import 'package:sinav_app/c_home/konular/Genel_T%C3%BCrler.dart';
import 'package:sinav_app/c_home/konular/d%C3%B6ng%C3%BCler.dart';
import 'package:sinav_app/c_home/konular/s%C4%B1n%C4%B1flar.dart';

import 'package:sinav_app/sinavsorulari/sinavsoru1.dart';

class chomePage extends StatefulWidget {
  final username;

  const chomePage({Key key,@required this.username}) : super(key: key);
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<chomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(title: Text( widget.username==null ? "C# ders notları":widget.username),
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
                              child: Text('DÖNGÜLLER'),
                              color: Colors.pinkAccent, onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>cdonguler ( ),),);
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(
                                    child: Text('DİZİLER'),
                                    color: Colors.pinkAccent, onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>diziler( ),),);
                                }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('Sınıflar, yapılar ve kayıtlar'),
                                          color: Colors.pinkAccent, onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>siniflar( ),),);
                                      }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('Türler'),
                                                color: Colors.pinkAccent, onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>turler( ),),);
                                            }),
                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  RaisedButton(

                                                    color: Colors.pinkAccent, onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru1( ),),);
                                                  },
                                                    child:Text("C# Sınavına başla") ,
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