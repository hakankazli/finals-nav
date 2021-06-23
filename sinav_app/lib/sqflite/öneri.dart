class Ogrenci {
  int no;
  String _isim;
  String _soyisim;
  String _sinif;

  Ogrenci(this._isim, this._soyisim, this._sinif);

  Ogrenci.map(dynamic nsne) {
    this._isim = nsne["isim"];
    this._soyisim = nsne["soyisim"];
    this._sinif = nsne["sinif"];
  }

  String get isim => _isim;
  String get soyisim => _soyisim;
  String get sinif => _sinif;

  Map<String, dynamic> haritaYap() {
    var map = new Map<String, dynamic>();
    map["isim"] = _isim;
    map["soyisim"] = _soyisim;
    map["sinif"] = _sinif;
    return map;
  }

  void numaraVer(int no) {
    this.no = no;
  }
}