import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  action: SnackBarAction(
                    label: 'Undo',
                    textColor: Colors.blue,
                    onPressed: () {},
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(milliseconds: 3000),
                  content: Text('This is an Error'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Show SnackBar'),
            ),
          ),
        ),
      ),
    );
  }
}
