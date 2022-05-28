import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({Key? key}) : super(key: key);

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      
    
      body: Container(
        
        child: Column(
          
          children: [
           
            
            Stack(
              children: [
               
                Positioned(
                  
                    child: Container(
                      
                  height: 450,
                  //color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned( 
                          child: Container(
                        //color: Colors.red,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F24c15ad2-bfd5-11ec-8413-422ef6319ad0.jpg?crop=2667%2C4000%2C1667%2C0'))
                        ),
                          
                        height: 410,
                      )),
                      Positioned(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000'),
                          radius: 45,
                        ),
                        bottom: 0,
                        right: 24,
                      ),
                     Positioned(
                        child: Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                        top: 60,
                        right: 20,
                        
                      ),
                      Positioned(
                        child: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                        top: 60,
                        left: 20,
                        
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'This is a random description of topic.',
                    style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  )
                ],
              ),
            ),
            Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowIconText('20', Icons.favorite_rounded),
                    rowIconText('32', Icons.upload),
                    rowIconText('82', Icons.message),
                    rowIconText('295', Icons.face),
                  ],
                )),
                Divider(),
                Container(
                  padding: EdgeInsets.all(20),
                  child:Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.” The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout.",style: TextStyle(fontSize: 17),),  
                )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon),
      ],
    );
  }
}
