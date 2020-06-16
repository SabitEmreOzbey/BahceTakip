import 'package:bahcetakip/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bahçe Takip',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green,),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.green[700],
            title: Text('BAHÇE TAKİP', style:GoogleFonts.roboto(),),
            centerTitle: true,
          ),
          body: hosgeldiniz()),
    );
  }
}

class hosgeldiniz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _hosgeldiniz(context);
  }
}
Widget _hosgeldiniz(BuildContext context)
{
  final kullaniciadi = TextField(
    obscureText:false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,15.0),
        hintText:"Kullanıcı Adı",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20))
    ),
  );
  final parola = TextField(
    obscureText:false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,15.0),
        hintText:"Parola",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20))
    ),
  );

  final girisbuton=Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.green[700],
      child:MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => navigasyon()),);

        },
        child: Text("Giriş Yap",
          textAlign: TextAlign.center,
          style: TextStyle(color:Colors.white,fontStyle: FontStyle.normal,),),
      )
  );

  final satinal=Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.orange,
      child:MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => hizmetisatinal()));

        },
        child: Text("Hizmeti Satın Al",
          textAlign: TextAlign.center,
          style: TextStyle(color:Colors.white,fontStyle: FontStyle.normal,),),
      )
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Image.asset("images/bahcelogo-resized.png"),
            Text(
              'Bahçe Takip Pre-Alpha',
              style: GoogleFonts.roboto(),
            ),

            SizedBox(height: 30.0),
            kullaniciadi,

            SizedBox(height: 10.0),
            parola,

            SizedBox(height: 20.0),
            girisbuton,

            SizedBox(height: 10.0),
            satinal,


          ],
        ),
      ),
    ),
  );

}

class hizmetisatinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        leading: IconButton(icon : Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context); },),
        title: Text("Hizmeti Satın Al",style:GoogleFonts.roboto(),),
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
      body: satinalbody(),
    );
  }
}
class satinalbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _satinal(context);
  }
}
Widget _satinal(BuildContext context)
{
  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Image.asset("images/bahcelogo-resized.png"),
            Text(
              'Bahçe Takip Pre-Alpha',
              style: GoogleFonts.roboto(),
            ),

          ],
        ),
      ),
    ),
  );

}

