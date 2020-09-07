import 'package:flutter/material.dart';
import 'package:ktshipping/screen/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showAppName() {
    return Text(
      'Korea Thai shipping',
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.blue.shade700,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Roboto',
      ),
    );
  }

  Widget showAppLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget signInButton() {
    return RaisedButton(
      child: Text(
        'Sign In',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      color: Colors.blue.shade700,
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      onPressed: () {
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },
      child: Text('Sign Up'),
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButton(),
        SizedBox(
          width: 4.0,
        ),
        signUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1.5,
            colors: [
              Colors.white,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showAppLogo(),
              SizedBox(
                height: 8.0,
              ),
              showAppName(),
              SizedBox(
                height: 8.0,
              ),
              showButton(),
            ],
          ),
        ),
      )),
    ));
  }
}
