import 'package:flutter/material.dart';

class AddTicket extends StatefulWidget {
  @override
  _AddTicketState createState() => _AddTicketState();
}

class _AddTicketState extends State<AddTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Add Ticket', style: TextStyle(fontSize: 27,color: Colors
            .black),),
      ),
    );
  }
}

