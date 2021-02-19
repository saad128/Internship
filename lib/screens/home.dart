import 'package:flutter/material.dart';
import 'package:my_project/screens/sign_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Home'),
        ),
        body: Center(
          child: RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => SignIn()),);
              },
            child: Text('Logout'),
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
