import 'package:flutter/material.dart';
import 'Transport.dart';
import 'Stations.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const List<Tab> _myTabs = <Tab>[
    Tab(text: 'Transport'),
    Tab(text: 'Stations'),
  ];
  static const String _title = 'Favourites';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                title: new Text(_title),
                centerTitle: true,
                bottom: PreferredSize(
                  preferredSize: new Size(16.0, 16.0),
                  child: Container(
                    width: 500.0,
                    child: TabBar(
                        tabs: _myTabs
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                  children: [
                    Transport(),
                    Stations()
                  ]
              )
          )
      ),
    );
  }

}