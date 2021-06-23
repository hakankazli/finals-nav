import 'package:sinav_app/sqflite/%C3%B6neri.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';


class VtYardimcisi {
  static final VtYardimcisi _yardimci = new VtYardimcisi.icislem();

  factory VtYardimcisi() => _yardimci;

  VtYardimcisi.icislem();

  static Database _vt;

  Future<Database> get veritabani async {
    if (_vt != null) return _vt;
    _vt = await olusturVt();
    return _vt;
  }

  olusturVt() async {
    io.Directory dosyaKonumu = await getApplicationDocumentsDirectory();
    String yol = join(dosyaKonumu.path, "okul.db");
    var veriTabani = await openDatabase(yol, version: 1, onCreate: _ilkAcilis);
    return veriTabani;
  }

  _ilkAcilis(Database vt, int versiyon) async {
    await vt.execute(
        "CREATE TABLE Ogrenci(no INTEGER PRIMARY KEY AUTOINCREMENT, isim TEXT, soyisim TEXT,sinif TEXT)");
  }

  Future<int> ogrenciKaydet(Ogrenci ogrenci) async {
    var veritab = await veritabani;
    int cvp = await veritab.insert("Ogrenci", ogrenci.haritaYap());
    return cvp;
  }

  Future<List<Ogrenci>> ogrencileriGetir() async {
    var veritab = await veritabani;
    List<Map> liste = await veritab.rawQuery("SELECT * FROM Ogrenci");
    List<Ogrenci> ogrenciler = new List();
    for (int i = 0; i < liste.length; i++) {
      var ogrenci =
      new Ogrenci(liste[i]["isim"], liste[i]["soyisim"], liste[i]["sinif"]);
      ogrenci.numaraVer(liste[i]["no"]);
      ogrenciler.add(ogrenci);
    }
    return ogrenciler;
  }

  Future<int> ogrenciSil(Ogrenci ogrnci) async {
    var veritab = await veritabani;
    int cvp =
    await veritab.rawDelete("DELETE FROM Ogrenci WHERE no= ?", [ogrnci.no]);
    return cvp;
  }

  Future<bool> ogrenciGuncelle(Ogrenci ogrnci) async {
    var veritab = await veritabani;
    int cvp = await veritab.update("Ogrenci", ogrnci.haritaYap(),
        where: "no =?", whereArgs: <int>[ogrnci.no]);
    return cvp > 0 ? true : false;
  }
}