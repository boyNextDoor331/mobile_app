import 'package:flutter/material.dart';
import 'favourites/Transport.dart';
import 'favourites/Stations.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Transport'),
    Tab(text: 'Stations'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: new Text('Favourites'),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: new Size(16.0, 16.0),
              child: Container(
                width: 500.0,
                child: TabBar(
                    tabs: myTabs
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




