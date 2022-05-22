import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: Text('Rows and Columns'),
    ),
    body: Container(
      height: 200,
      width: 200,
      color: Colors.yellow,
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 60,width: 60,color: Colors.pink,),
          Container(height: 60,width: 60,color: Colors.red,),
          Container(height: 60,width: 60,color: Colors.black12,),
          Container(height: 60,width: 60,color: Colors.brown,),
          Container(height: 60,width: 60,color: Colors.purpleAccent,),
        ],
      ),
    ),
    );
  }
}
