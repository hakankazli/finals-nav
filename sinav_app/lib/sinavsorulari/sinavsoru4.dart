import 'package:flutter/material.dart';
import 'package:sinav_app/ekranlar/gorevler_ekran.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru5.dart';

class sinavsoru4 extends StatefulWidget {
  final username;

  const sinavsoru4({Key key,@required this.username}) : super(key: key);
  @override
  _sinavsoru4State createState() => _sinavsoru4State();
}

class _sinavsoru4State extends State<sinavsoru4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text( "Flutter sınav soruları"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Kullanıcının sayfada gördüğü herşey  yani sayfa başlığı ve sayfa içeriğini işaa eden widget aşağıdakilerden hangisidir.",style : TextStyle(fontSize: 20),textAlign: TextAlign.center),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('routes'),
                              color: Colors.lightBlueAccent, onPressed: ()  {
                            showDialog(context: context, builder: (context) => AlertDialog(
                              title: Text("Yanlış cevap "+"routes:Uygulamanın sayfalarını map şeklinde içerir. Burada yolları tanımlanan sayfalar adlandırılmiş(Named) sayfalar olarak isimlendirilir."),
                            ),
                            );
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(

                                    child: Text('localizationsDelegates'),
                                    color: Colors.lightBlueAccent,
                                    onPressed: () {
                                      showDialog(context: context, builder: (context) => AlertDialog(
                                        title: Text("Yanlış cevap "+" Localizations: widgeti tarafından yüklenecek, T türü bir dizi yerelleştirilmiş kaynak için bir üreteç."),
                                      ),
                                      );
                                    }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('home'),
                                          color: Colors.lightBlueAccent,
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru5( ),),);
                                          }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('backgroundColor'),
                                                color: Colors.lightBlueAccent,
                                                onPressed: () {
                                                  showDialog(context: context, builder: (context) => AlertDialog(
                                                    title: Text("Yanlış cevap "+"backgroundColor:appBar ve body nin arkaplan rengini belirler."),
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
