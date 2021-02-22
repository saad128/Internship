import 'package:flutter/material.dart';

class TabbarHome extends StatefulWidget {
  @override
  _TabbarHomeState createState() => _TabbarHomeState();
}

class _TabbarHomeState extends State<TabbarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
       child: Text('Home', style: TextStyle(fontSize: 27,color: Colors.black),),
      ),
    );
  }
}
