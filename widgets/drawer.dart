import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container( color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(radius: 40,
                  backgroundImage: NetworkImage('https://s3.r29static.com/bin/entry/9e6/0,0,2000,2000/x,80/2172764/image.jpg'),
                ),
                SizedBox(width:10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  Text('Ryan Reynolds',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('mbhutto111@gmail.com', style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                ],)
                ],
              ),
            )),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trashed'),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploaded'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Shared'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            )
            
          ],
        ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Container(
      
        child: Center(
          child: Text('Hey there'),
        )),
    );
  }
}