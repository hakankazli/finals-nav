import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {

  final bool secim;
  final String gorevAd;
  final Function checkboxCallback;
  final Function listTileLongPress;

  GorevTile({this.secim,this.gorevAd,this.checkboxCallback,this.listTileLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(gorevAd,
          style: TextStyle(
            color: Colors.white,
            decoration: secim ?TextDecoration.lineThrough:null
          ),
        ),
        trailing: Checkbox(
          value: secim,
          onChanged: checkboxCallback,
          activeColor: Colors.red,
        ),
        onLongPress: listTileLongPress,
    );
  }
}

