
import 'package:flutter/foundation.dart';
import 'package:sinav_app/ekranlar/gorev.dart';


class GorevVeri with ChangeNotifier {

  List<Gorev> gorevListesi = [
    Gorev(gorevAd: 'Flutter çalış')
  ];

  int get gorevSayisi{
    return gorevListesi.length;
  }

  void gorevEkle(Gorev yeniGorev){
    gorevListesi.add(yeniGorev);
    notifyListeners();
  }

  void gorevGuncelle(Gorev g){
    g.toggleYapildi();
    notifyListeners();
  }


  void gorevSil(Gorev g){
    gorevListesi.remove(g);
    notifyListeners();
  }

}
