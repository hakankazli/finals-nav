import 'package:flutter/material.dart';

import 'package:sinav_app/sqflite/%C3%B6neri.dart';
import 'package:sinav_app/sqflite/swflite.dart';


class VtAnasayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VtState();
}

class VtState extends State<VtAnasayfa> {
  VtYardimcisi vtYardimcisi = new VtYardimcisi();
  List<Ogrenci> ogrenciler = new List();
  
  bool duzenleMi = false;

  final formKontrolcu = GlobalKey<FormState>();
  final isimCtrl = TextEditingController();
  final SoyIsimCtrl = TextEditingController();
  final sinifCtrl = TextEditingController();

  _ogrenciekle() {
    vtYardimcisi
        .ogrenciKaydet(
        new Ogrenci(isimCtrl.text, SoyIsimCtrl.text, sinifCtrl.text))
        .then((deger) {
      debugPrint(deger.toString());
      if (deger > 0) {
        listeYenile();
        isimCtrl.clear();
        SoyIsimCtrl.clear();
        sinifCtrl.clear();
        Navigator.pop(context);
      }
    });
  }

  _ogrenciSil(Ogrenci ogrnci) {
    vtYardimcisi.ogrenciSil(ogrnci).then((cvp) {
      if (cvp > 0) {
        listeYenile();
        isimCtrl.clear();
        SoyIsimCtrl.clear();
        sinifCtrl.clear();
      }
    });
  }

  _ogrenciGuncelle(int ono) {
    var ogr = new Ogrenci(isimCtrl.text, SoyIsimCtrl.text, sinifCtrl.text);
    ogr.no = ono;
    vtYardimcisi.ogrenciGuncelle(ogr).then((cvp) {
      if (cvp) {
        debugPrint(cvp.toString());
        listeYenile();
        isimCtrl.clear();
        SoyIsimCtrl.clear();
        sinifCtrl.clear();
        Navigator.pop(context);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    listeYenile();
  }

  listeYenile() {
    vtYardimcisi.ogrencileriGetir().then((gelen) {
      setState(() {
        ogrenciler = gelen;
      });
      debugPrint(gelen.toString());
    });
  }

  void eklemeEkraniAc({Ogrenci ogrenci}) {
    if (ogrenci != null) {
      duzenleMi = true;
      isimCtrl.text = ogrenci.isim;
      SoyIsimCtrl.text = ogrenci.soyisim;
      sinifCtrl.text = ogrenci.sinif;
    } else {
      duzenleMi = false;
      isimCtrl.clear();
      SoyIsimCtrl.clear();
      sinifCtrl.clear();
    }
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(duzenleMi ? "DİL DÜZENLE" : "PROGRAMLAM DİLİ  EKLE"),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Form(
                  key: formKontrolcu,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: (val) {
                          if (val.length > 0) {
                            return "Lütfen burayı boş geçmeyin";
                          }
                        },
                        controller: isimCtrl,
                        decoration:
                        InputDecoration(hintText: "Programlama dilini giriniz"),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val.length > 0) {
                            return "Lütfen burayı boş geçmeyin";
                          }
                        },
                        controller: SoyIsimCtrl,
                        decoration:
                        InputDecoration(hintText: "pogramlama dilinin türünü giriniz"),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val.length > 0) {
                            return "Lütfen burayı boş geçmeyin";
                          }
                        },

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () =>
              duzenleMi ? _ogrenciGuncelle(ogrenci.no) : _ogrenciekle(),
              child: Text(duzenleMi ? "Düzenle" : "EKLE"),
            ),
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text("İPTAL"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text("ÖNERİ LİSTESİ"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => eklemeEkraniAc(),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: ogrenciler.length,
        itemBuilder: (BuildContext baglam, int sira) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                      "${ogrenciler[sira].isim} ${ogrenciler[sira].soyisim}"),
                  leading: Text("${ogrenciler[sira].no}"),


                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () =>
                          eklemeEkraniAc(ogrenci: ogrenciler[sira]),
                      child: Text("GÜNCELLE"),
                    ),
                    FlatButton(
                      onLongPress: () => _ogrenciSil(ogrenciler[sira]),
                      child: (Text("SİL")),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}