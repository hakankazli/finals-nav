import 'package:flutter/material.dart';
import 'package:sinav_app/ekranlar/gorevler_ekran.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru3.dart';

class sinavsoru2 extends StatefulWidget {
  final username;

  const sinavsoru2({Key key,@required this.username}) : super(key: key);
  @override
  _sinavsoru2State createState() => _sinavsoru2State();
}

class _sinavsoru2State extends State<sinavsoru2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter sınav soruları"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("ekrana yazı yazdırmak için kullandığımız widget türü aşağıdakilerden hangisidir",style : TextStyle(fontSize: 20),textAlign: TextAlign.center),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('AppBar'),
                              color: Colors.lightBlueAccent, onPressed: () {
                            showDialog(context: context, builder: (context) => AlertDialog(
                              title: Text("Yanlış cevap "+" appbar:Sayfa ustbarı. örneğin web sitelerinde sayfada sitenin logosunun site adinin bulunduğu kısma (header) karşılık gelir."),
                            )
                            );
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(

                                    child: Text('Text'),
                                    color: Colors.lightBlueAccent,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru3( ),),);
                                      ;

                                    }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('title'),
                                          color: Colors.lightBlueAccent,
                                          onPressed: () {
                                            showDialog(context: context, builder: (context) => AlertDialog(
                                              title: Text("Yanlış cevap "+" title: ‘Uygulma Adı’ şeklinde direk string ifade alır"),
                                            ),
                                            );
                                          }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('onGenerateTitle'),
                                                color: Colors.lightBlueAccent,
                                                onPressed: () {
                                                  showDialog(context: context, builder: (context) => AlertDialog(
                                                    title: Text("yanlış cevap onGenerateTitle:Yerelleştirilmiş(yani dil listemizden) bir başlık üretmek  için kullanılır"),
                                                  ),
                                                  );
                                                }),

                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  RaisedButton(
                                                      child: Text('google'),
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
