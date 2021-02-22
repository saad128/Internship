import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Forget Password'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
             Navigator.pop(context);
            },
            child: Text('Go Back'),
            color: Colors.purple,
            elevation: 5,
            shape: StadiumBorder(),
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
