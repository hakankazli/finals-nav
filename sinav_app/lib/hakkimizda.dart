import 'package:flutter/material.dart';
class hakkimizda extends StatefulWidget {
  @override
  _hakkimizdaState createState() => _hakkimizdaState();
}
class _hakkimizdaState extends State< hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("hakkimizda")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006019 numaralı Hakan KAZLI tarafından 15.04.2021 günü yapılmıştır.",
                  style : TextStyle(fontSize: 20),textAlign: TextAlign.center),
            ])
    );
  }
}
