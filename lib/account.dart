import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hesap extends StatefulWidget{

  hesapuygulama createState() => hesapuygulama();


}

class hesapuygulama extends State<hesap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Text("Hesap", style: TextStyle(fontSize: 40.0,),),
          color: Colors.green,


        )

    );
  }
}