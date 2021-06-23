import 'package:flutter/material.dart';
import 'package:sinav_app/ekranlar/gorevler_ekran.dart';
import 'package:sinav_app/sinavsorulari/sinavsoru4.dart';

class sinavsoru3 extends StatefulWidget {
  final username;

  const sinavsoru3({Key key,@required this.username}) : super(key: key);
  @override
  _sinavsoru3State createState() => _sinavsoru3State();
}

class _sinavsoru3State extends State<sinavsoru3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text( "Flutter sınav soruları"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("appBar ve body nin arkaplan rengini belirleyen widget aşağıdakilerden hangisidir.", style : TextStyle(fontSize: 20),textAlign: TextAlign.center ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('color'),
                              color: Colors.lightBlueAccent, onPressed: ()  {
                            showDialog(context: context, builder: (context) => AlertDialog(
                              title: Text("Yanlış cevap "+" color:Sistemin arayüzünde uygulama için kullanılacak birincil renk"),
                            ),
                            );
                          }),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                RaisedButton(

                                    child: Text('drawer'),
                                    color: Colors.lightBlueAccent,
                                    onPressed: () {
                                      showDialog(context: context, builder: (context) => AlertDialog(
                                        title: Text("Yanlış cevap "+" drawer:Açılabilir menu tanımlar."),
                                      ),
                                      );
                                    }),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      RaisedButton(
                                          child: Text('body'),
                                          color: Colors.lightBlueAccent,
                                          onPressed: () {
                                            showDialog(context: context, builder: (context) => AlertDialog(
                                              title: Text("Yanlış cevap,body:Sayfanın gövdesi. Örneğin web sitelerinde sayfada içeriğin bulunduğu kısma (body) karşılık gelir."),
                                            ),
                                            );
                                          }),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RaisedButton(
                                                child: Text('backgroundColor'),
                                                color: Colors.lightBlueAccent,
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>sinavsoru4( ),),);
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
