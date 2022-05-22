import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor, 
        title: Text(
          'Bottom Sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Bottom Sheet Widget'),
            onPressed: () {
              showModalBottomSheet(
                elevation: 0,
                isDismissible: false,
                enableDrag: false,
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),),
                ),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Mohsin'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Mohsin'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Mohsin'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Mohsin'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Mohsin'),
                      )
                    ],);
                  });
            }),
      ),
    );
  }
}
