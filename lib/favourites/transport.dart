import 'package:flutter/material.dart';
class Transport extends StatelessWidget {
  const Transport({Key? key}) : super(key: key);
  static const String _title = 'Trolleybus-6 Kolbasino - Devyatovka';
  static const String _description = 'The transport will arrive at 9 10 a.m.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const ListTile(
               leading: Icon(Icons.radio_button_checked, color: Colors.deepPurple),
               title: Text(_title),
               subtitle: Text(_description),
    ),
    ],
    ),
    ),
    );
  }
}
