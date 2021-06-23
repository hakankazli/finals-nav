import 'package:flutter/material.dart';
import 'package:sinav_app/grafik/grafik.dart';
import 'package:sinav_app/java/java_homepage.dart';
import 'package:sinav_app/loginekran%C4%B1/homepage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sinav_app/pyhton/pyhton_homepagge.dart';
import 'package:sinav_app/sqflite/swyardimci.dart';
import 'package:sinav_app/views/sinav_view.dart';

import 'c_home/c.dart';
class MenuAnimasyon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MenuAnimasyonState();

  }
}

class _MenuAnimasyonState extends State<MenuAnimasyon> {

  double ekranGenisligi;
  bool menuacikMi =false;
  @override
  Widget build(BuildContext context) {
    ekranGenisligi=MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: <Widget>[
          menuOlustur(context),
          dashBoardOlustur(context),
        ],),
      ),
    );
  }

 Widget menuOlustur(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            FlatButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>javahomePage( ),),);;} , icon:Icon(Icons.eighteen_mp ) , label: Text("JAVA",style: TextStyle(fontSize: 14))),
            FlatButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage( ),),);;} , icon:Icon(Icons.eighteen_mp ) , label: Text("flutter",style: TextStyle(fontSize: 14))),
            FlatButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>chomePage( ),),);;} , icon:Icon(Icons.eighteen_mp ) , label: Text("C#",style: TextStyle(fontSize: 14))),
            FlatButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>pyhomePage( ),),);;} , icon:Icon(Icons.eighteen_mp ) , label: Text("PYTHON",style: TextStyle(fontSize: 14))),



          ],
        ),
      ),
    );
 }

 Widget dashBoardOlustur(BuildContext context) {
    return AnimatedPositioned( duration: Duration(milliseconds: 300),
    top: 0,
    bottom: 0,
    left:menuacikMi ? 0.5*ekranGenisligi:0 ,
    right:menuacikMi ?-0.4 *ekranGenisligi :0,
    child: Material(
      elevation: 8,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap:(){
               setState(() {
                 menuacikMi = !menuacikMi;
               });
              },

              child: Icon(Icons.menu,color: Colors.black,),
              ),
              Text("sınav app",style: TextStyle(color:Colors.black,fontSize: 20),),
              Icon(Icons.add_circle_outline,color:Colors.black,),
            ],),
            Container(
              margin: EdgeInsets.only(top:20),
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Image.asset("images/programlamadilleridiller.jpg",fit: BoxFit.fill,),
                    width:100,
                    margin: EdgeInsets.symmetric(horizontal: 100),
                  )
                ],
              ),
            ),
            SizedBox(height:30),
             Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                      child: Text('En Çok kullanılan Programlama dilleri'),
                      color: Colors.lightBlueAccent, onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AlbumsView(),),);
                  }),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                      child: Text('En Çok kullanılan Programlama dilleri'),
                      color: Colors.lightBlueAccent, onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PieChartSample2(),),);
                  }),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Eklenmesi İstediğiniz programlama dilleri'),
                      color: Colors.lightBlueAccent, onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VtAnasayfa(),),);
                  }),
                ])
          ],
        ),

      ),

    ),
    );

 }


}