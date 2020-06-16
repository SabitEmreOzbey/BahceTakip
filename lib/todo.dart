import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class yapilacaklar extends StatefulWidget{

  yapilacaklaruygulama createState() => yapilacaklaruygulama();

}

class yapilacaklaruygulama extends State<yapilacaklar> {

  final GlobalKey<AnimatedListState> _key= GlobalKey();
  List<String> _items = [
    "1.Yapılacak",
    "2.Yapılacak",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key:_key,
        initialItemCount: _items.length,
        itemBuilder: (context,index,animation){
          return _buildItem(_items[index],animation,index);


        },


      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: () => _addItem(),
      ),


    );
  }
  Widget _buildItem(String item,Animation animation,int index){
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            item,
            style:TextStyle(
                fontWeight: FontWeight.w600
            ),
          ),
          subtitle: Text("x yapılacak y yapılacak..."),
          leading: Icon(Icons.business_center,color: Colors.green,),
          trailing: IconButton(
            icon:Icon(Icons.close,color:Colors.red,),
            onPressed:(){
              _removeItem(index);

            },

          ),
        ),
      ),
    );

  }
  void _removeItem(int i){
    String removedItem=_items.removeAt(i);
    AnimatedListRemovedItemBuilder builder =(context,animation){
      return _buildItem(removedItem, animation, i);

    };
    _key.currentState.removeItem(i,builder);
  }
  void _addItem(){
    int i = _items.length>0? _items.length:0;
    _items.insert(i, "${_items.length+1}.Yapılacak");
    _key.currentState.insertItem(i);
  }
}