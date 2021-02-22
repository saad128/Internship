import 'package:flutter/material.dart';


class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back'),
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
