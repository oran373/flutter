import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

//Explicit

//Method
Widget registerButton() {
  return IconButton(
    icon: Icon(Icons.airline_seat_flat_angled),
    onPressed: () {
      print('you click icon');
    },
  );
}

Widget nameText() {
  return TextFormField(
    style: TextStyle(
      color: Colors.purple,
    ),
    decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          color: Colors.purple,
          size: 48.0,
        ),
        labelText: 'Display Name : ',
        labelStyle: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Your Name',
        helperStyle: TextStyle(
          color: Colors.purple.shade200,
          fontStyle: FontStyle.italic,
        )),
  );
}

Widget emailText() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    style: TextStyle(
      color: Colors.green,
    ),
    decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.green,
          size: 48.0,
        ),
        labelText: 'Email : ',
        labelStyle: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Your Email',
        helperStyle: TextStyle(
          color: Colors.green.shade200,
          fontStyle: FontStyle.italic,
        )),
  );
}

Widget passwordText() {
  return TextFormField(
    style: TextStyle(
      color: Colors.orange,
    ),
    decoration: InputDecoration(
        icon: Icon(
          Icons.security,
          color: Colors.orange,
          size: 48.0,
        ),
        labelText: 'Display Name : ',
        labelStyle: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Your Name',
        helperStyle: TextStyle(
          color: Colors.orange.shade200,
          fontStyle: FontStyle.italic,
        )),
  );
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Register'),
        actions: <Widget>[
          registerButton(),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          nameText(),
          emailText(),
          passwordText(),
        ],
      ),
    );
  }
}
