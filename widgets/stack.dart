import 'dart:ui';

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget'),
        ),
        // body: Container(
        //   color: Colors.blue,
        //   child: Center(
        //     child: Stack(
        //     children: [
              
        //         Positioned(
        //         bottom: 10,
        //         right: 25,
        //           child: Container(height: 300, width: 300, color: Colors.yellowAccent,)),
        //       Positioned(
        //         top: 10,
        //         left: 30,
        //         child: Container(height: 150, width: 150,color: Colors.green,)),
        //       Center(child: Container(height: 50, width: 50, color: Colors.redAccent,)),
        //     ],
        //   ),
        // ),),
        body: Stack(
          children:[
            Positioned(
            child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
              image: DecorationImage(image: AssetImage('assets/jack.jpg'),
              fit: BoxFit.fill),
               )
            )),
          ],
        ),
      ),
    );
  }
}