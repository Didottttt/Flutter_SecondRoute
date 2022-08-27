import 'package:flutter/material.dart';
import 'package:flutter_application_2/formregistrasi.dart';
class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> with SingleTickerProviderStateMixin {

  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(icon: Icon(Icons.call_end_outlined)),
    Tab(icon: Icon(Icons.circle_outlined)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index) {
              // Should not used it as it only called when tab options are clicked,
              // not when user swapped
            },
            controller: _controller,
            tabs: list,
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            formregistrasi(),
            Center(
                child: Text(
                  _selectedIndex.toString(),
                  style: TextStyle(fontSize: 40),
                )),
            Center(
                child: Text(
                  _selectedIndex.toString(),
                  style: TextStyle(fontSize: 40),
                )),
          ],
        ),
      ),
    );
  }
}
