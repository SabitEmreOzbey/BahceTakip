import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gereksinimler extends StatefulWidget{

  gereksinimleruygulama createState() => gereksinimleruygulama();


}

class gereksinimleruygulama extends State<gereksinimler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Text("Gereksinimler", style: TextStyle(fontSize: 40.0,),),
          color: Colors.green,


        )

    );
  }
}