import 'package:bahcetakip/treeprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class agacbulucu extends StatefulWidget{

  agacuygulama createState() => agacuygulama();


}

class agacuygulama extends State<agacbulucu>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:agacbody(),
    );
  }


}
class agacbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _agacbody(context);
  }
}
Widget _agacbody(BuildContext context)
{
  final agacnumarasi = TextField(
    obscureText:false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,15.0),
        hintText:"Ağaç Numarası",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20))
    ),
  );
  final agacarabuton=Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.green[700],
      child:MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => agacprofili()),);


        },
        child: Text("Ağacı Bul",
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


            //IconButton(
              //icon: Icon(Icons.filter_center_focus,size: 50.0),
              //onPressed: () {
              //},
            //),


            Image.asset("images/qrscanner-resized.png"),
            Text(
              'Ya da',
              style: GoogleFonts.roboto(),
              textScaleFactor: 2.0,
            ),

            SizedBox(height: 30.0),
            agacnumarasi,


            SizedBox(height: 20.0),
            agacarabuton,



          ],
        ),
      ),
    ),
  );

}