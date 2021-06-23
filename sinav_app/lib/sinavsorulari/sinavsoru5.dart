import 'package:flutter/material.dart';
import 'package:sinav_app/ekranlar/gorevler_ekran.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru6.dart';

class sinavsoru5 extends StatefulWidget {
  final username;

  const sinavsoru5({Key key,@required this.username}) : super(key: key);
  @override
  _sinavsoru5State createState() => _sinavsoru5State();
}

class _sinavsoru5State extends State<sinavsoru5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text( "Flutter sınav soruları"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Aşağıdaki widgetlardan hangisi  MaterialApp'ın İçinde yer almaz",style : TextStyle(fontSize: 20),textAlign: TextAlign.center),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('appBar'),
                              color: Colors.lightBlueAccent, onPressed: ()  {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru6( ),),);
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(

                                    child: Text('color'),
                                    color: Colors.lightBlueAccent,
                                    onPressed: () {
                                      showDialog(context: context, builder: (context) => AlertDialog(
                                        title: Text("Yanlış cevap "+" color MaterialApp içerisinde yer alan bir widgettır Sistemin arayüzünde uygulama için kullanılacak birincil rengi belirlemek için kullanılır"),
                                      ),
                                      );
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
                                              title: Text("Yanlış cevap "+"title MaterialApp içerisinde yer alan bir widgettır.title: ‘Uygulma Adı’ şeklinde direk string ifade alır "),
                                            ),
                                            );
                                          }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('locale'),
                                                color: Colors.lightBlueAccent,
                                                onPressed: () {
                                                  showDialog(context: context, builder: (context) => AlertDialog(
                                                    title: Text("Yanlış cevap "+"locale MaterialApp içerisinde yer alan bir widgettır.Uygulamanın başlangıç dili ve ülke kodunu belirler. Eğer boş  ise sistem dilini yani local’ini kullanılır. "),
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
