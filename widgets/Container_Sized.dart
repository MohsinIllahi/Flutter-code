import 'package:flutter/material.dart';


class Container_Sized extends StatelessWidget {
  const Container_Sized({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Container and SizedBox'),
      backgroundColor: Colors.blue,),
      body: Center(
        child: Container(
          
          
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 10,
              )
            ]
          ),
          child: Center(
            child: Container(color: Colors.red,margin:EdgeInsets.all(10))
           
          //Text('Hello',style: TextStyle(fontSize: 20),),
          
          
        ),
      ),)    );
  }
}