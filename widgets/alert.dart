import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: Text('Alert Dialog')),
        body: Center(
          child: ElevatedButton(
            child: Text('Show Alert'),
            onPressed: () {
              _showMyDialog(context);
            },
          ),
        ));
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext conttext) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              scrollable: true,
          title: Text('This is an alert Dialog'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text('This ia demo'),
              Text('This is Mohsin Illahi'),
            ]),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
          ],
        );
      });
}
