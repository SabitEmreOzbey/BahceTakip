import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gostergepaneli extends StatefulWidget{

  gostergepaneliuygulama createState() => gostergepaneliuygulama();


}

class gostergepaneliuygulama extends State<gostergepaneli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Text("Genel Bahçe Bilgisi", style: TextStyle(fontSize: 40.0,),),
          color: Colors.green,


        )

    );
  }
}


