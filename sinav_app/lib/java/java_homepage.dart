import 'package:flutter/material.dart';
import 'package:sinav_app/hakkimizda.dart';
import 'package:sinav_app/konular/gestures.dart';
import 'package:sinav_app/konular/konu4.dart';
import 'package:sinav_app/konular/konular1.dart';
import 'package:sinav_app/konular/konular2.dart';
import 'package:sinav_app/konular/konular3.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru1.dart';

class javahomePage extends StatefulWidget {
  final username;

  const javahomePage({Key key,@required this.username}) : super(key: key);
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<javahomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(title: Text( widget.username==null ? "java ders notları":widget.username),
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
                              color: Colors.orange, onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>customScrollViewWidget ( ),),);
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(
                                    child: Text('VERİ TİPİ'),
                                    color: Colors.orange, onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>konular2( ),),);
                                }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('Sınıflar ve Nesneler'),
                                          color: Colors.orange, onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>konular3( ),),);
                                      }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('KALITIM'),
                                                color: Colors.orange, onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>konular4( ),),);
                                            }),
                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  RaisedButton(

                                                    color: Colors.orange, onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru1( ),),);
                                                  },
                                                    child:Text("JAVA Sınavına başla") ,
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
