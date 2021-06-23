import 'package:flutter/material.dart';
import 'package:sinav_app/anasayfayad%C3%B6n.dart';
import 'package:sinav_app/ekranlar/gorevler_ekran.dart';

class sinavsoru6 extends StatefulWidget {
  final username;

  const sinavsoru6({Key key,@required this.username}) : super(key: key);
  @override
  _sinavsoru6State createState() => _sinavsoru6State();
}

class _sinavsoru6State extends State<sinavsoru6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text( "Flutter sınav soruları"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("çerceve görevi görür önemli farkı margin padding ve color bulunduran widget hangisidir",style : TextStyle(fontSize: 20),textAlign: TextAlign.center),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('Container'),
                              color: Colors.lightBlueAccent, onPressed: ()  {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>anasayfayadon( ),),);
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(

                                    child: Text('SizedBox'),
                                    color: Colors.lightBlueAccent,
                                    onPressed: () {
                                      showDialog(context: context, builder: (context) => AlertDialog(
                                        title: Text("Yanlış cevap "+"Sabit boyutlu bir kutu oluşturur. width ve height degerleri verilirse child width ve height degerleri geçersiz olur."),
                                      ),
                                      );
                                    }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('Row'),
                                          color: Colors.lightBlueAccent,
                                          onPressed: () {
                                            showDialog(context: context, builder: (context) => AlertDialog(
                                              title: Text("Yanlış cevap "+"Satır çerçeve. children widgetleri satırda dizer. "),
                                            ),
                                            );
                                          }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('GridView'),
                                                color: Colors.lightBlueAccent,
                                                onPressed: () {
                                                  showDialog(context: context, builder: (context) => AlertDialog(
                                                    title: Text("Yanlış cevap "+"child widgetleri birden çok sütunda dizer. Ekrana sığmazsa listeyi kaydırılabilir yapar. "),
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
