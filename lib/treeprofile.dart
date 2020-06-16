import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class agacprofili extends StatefulWidget{

  agacprofiliuygulama createState() => agacprofiliuygulama();

}

class agacprofiliuygulama extends State<agacprofili> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ağaç Profili',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green,),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon : Icon(Icons.arrow_back_ios), onPressed: () {
              Navigator.pop(context); },),
            elevation: 0,
            backgroundColor: Colors.green[700],
            title: Text('#44 Numaralı Ağaç Profili', style:GoogleFonts.roboto(),),
            centerTitle: true,
          ),
          body: agacprofilbody()),
    );
  }
}
class agacprofilbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _agacprofilbody(context);
  }
}
Widget _agacprofilbody(BuildContext context)
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