import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  //-----------------FUNCTIONS------------------
  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORM'),
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter the first name',
                  ),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return ' Firstname should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                //Last name
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter the last name',
                  ),
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return ' Lastname should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                //Email
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter the Email',
                  ),
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return ' Email should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                //Password
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter the password of length 6',
                  ),
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return ' Minimum length of password is 6';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                    onPressed: () {
                      _formKey.currentState!.save();
                      trysubmit();
                    },
                    child: Text('Submit'))
              ],
            )),
      )),
    );
  }
}
