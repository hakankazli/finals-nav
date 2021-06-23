import 'package:flutter/material.dart';
import 'package:sinav_app/ekranlar/gorevler_ekran.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru2.dart';

class sinavsoru1 extends StatefulWidget {
  final username;

  const sinavsoru1({Key key,@required this.username}) : super(key: key);
  @override
  _sinavsoru1State createState() => _sinavsoru1State();
}

class _sinavsoru1State extends State<sinavsoru1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text( "Flutter sınav soruları"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
      Text("Flutter kim tarafından tasarlanmıştır",
          style : TextStyle(fontSize: 20),textAlign: TextAlign.center),
      Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          RaisedButton(
              child: Text('google'),
              color: Colors.lightBlueAccent, onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru2( ),),);
          }),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(

                    child: Text('facebook'),
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      showDialog(context: context, builder: (context) => AlertDialog(
                          title: Text("Yanlış cevap "+" doğru cevap:google"),
                      ),
                      );
                    }),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      RaisedButton(
                          child: Text('amazon'),
                          color: Colors.lightBlueAccent,
                          onPressed: () {
                            showDialog(context: context, builder: (context) => AlertDialog(
                                title: Text("Yanlış cevap, cevap:google"),
                            ),
                            );
                          }),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            RaisedButton(
                                child: Text('microsoft'),
                                color: Colors.lightBlueAccent,
                                onPressed: () {
                                  showDialog(context: context, builder: (context) => AlertDialog(
                                      title: Text("Yanlış cevap, cevap:google"),
                                  ),
                                  );
                                }),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  RaisedButton(
                                      child: Text('not al'),
                                      color: Colors.lightBlueAccent, onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GorevlerEkran(),),);
                                  }),


                                ])


                          ])
                    ])
              ])
        ])
      ])
    ]));
  }
}
