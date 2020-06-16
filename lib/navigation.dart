import 'package:bahcetakip/requirement.dart';
import 'package:bahcetakip/todo.dart';
import 'package:bahcetakip/treefinder.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings.dart';
import 'account.dart';
import 'dashboard.dart';

class navigasyon extends StatefulWidget{

  navigasyonuygulama createState() => navigasyonuygulama();

}
class navigasyonuygulama extends State<navigasyon>{

  int sayfaIndex =2;



  final gostergepaneli _genelbahcebilgisi= gostergepaneli();
  Widget _sayfayigoster= new gostergepaneli();
  Widget _yapilacaklar=new yapilacaklar();
  Widget _agacbulucu= agacbulucu();
  Widget _gereksinimler = new gereksinimler();
  Widget _hesap=new hesap();
  Widget _sayfasecici(int sayfa){
    switch(sayfa){
      case 0:
        return _agacbulucu;
        break;
      case 1:
        return _yapilacaklar;
        break;
      case 2:
        return _genelbahcebilgisi;
      case 3:
        return _gereksinimler;
        break;
      case 4:
        return _hesap;
        break;
      default:
        return _genelbahcebilgisi;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          leading: IconButton(icon : Icon(Icons.arrow_back_ios), onPressed: () {
            Navigator.pop(context); },),
          title: Text("Bahçe Takip",style:GoogleFonts.roboto(),),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child:GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ayarlar()),);
                },
                child: Icon(
                  Icons.settings,size: 30.0,
                ),
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.white,
          child:Center(
            child:_sayfayigoster,
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
            color: Colors.green[700],
            backgroundColor: Colors.green[900],
            height: 50,
            items: <Widget>[
              Icon(Icons.filter_center_focus,size:30.0,color:Colors.white),
              Icon(Icons.business_center,size:30.0,color:Colors.white),
              Icon(Icons.dashboard,size:30.0,color:Colors.white),
              Icon(Icons.nature,size:30.0,color:Colors.white),
              Icon(Icons.account_circle,size:30.0,color:Colors.white),
            ],
            animationDuration: Duration(
                milliseconds: 200),
            index:2,
            animationCurve: Curves.bounceInOut,
            onTap: (int tappedIndex){
              setState(() {
                _sayfayigoster=_sayfasecici(tappedIndex);
              });

            }


        )
    );
  }


}