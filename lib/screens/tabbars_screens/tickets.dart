import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Tickets', style: TextStyle(fontSize: 27,color: Colors
            .black),),
      ),
    );
  }
}

