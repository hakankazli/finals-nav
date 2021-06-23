
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sinav_app/ekranlar/gorev_veri.dart';
import 'gorevler_tile.dart';

class GorevListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GorevVeri>(
      builder: (context, gorevVeri, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GorevTile(
              gorevAd:
              gorevVeri.gorevListesi[index].gorevAd,
              secim:
              gorevVeri.gorevListesi[index].yapildi,
              checkboxCallback: (bool val) {
                gorevVeri.gorevGuncelle(gorevVeri.gorevListesi[index]);
              },
              listTileLongPress: (){
                //gorevVeri.gorevSil(gorevVeri.gorevListesi[index]);
                if(gorevVeri.gorevListesi[index].yapildi==true){
                  gorevVeri.gorevSil(gorevVeri.gorevListesi[index]);
                }else{
                  Scaffold.of(context).showSnackBar(SnackBar(content:Text('önce görevi yapmalısınız')));
                }
              },
            );
          },
          itemCount: gorevVeri.gorevSayisi,
        );
      },
    );
  }
}
