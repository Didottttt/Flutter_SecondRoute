import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/ListAllFootbal.dart';

class tabview extends StatefulWidget {
  const tabview({Key? key}) : super(key: key);

  @override
  State<tabview> createState() => _tabviewState();
}

class _tabviewState extends State<tabview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.sports_soccer)),
                  Tab(icon: Icon(Icons.class_sharp)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]
            ),
            title: const Text(' Club Bola'),
          ),
          body: const TabBarView(
            children: [
              ListAllFootbal(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}