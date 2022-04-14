import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage();
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;
  @override
  _HomePageState();
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: const Text(
          "My Tasks",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: _taskList(),
      floatingActionButton: _addTaskButton(),
    );
  }
}

Widget _taskList() {
  return ListView(
    children: [
      ListTile(
        title: const Text(
          "1. Coldroom monitoring",
          style:
              TextStyle(decoration: TextDecoration.lineThrough, fontSize: 22),
        ),
        subtitle: Text(DateTime.now().toString()),
        trailing:
            const Icon(Icons.check_box_outlined, color: Colors.blueAccent),
      ),
    ],
  );
}

Widget _addTaskButton() {
  return FloatingActionButton(
    onPressed: () {},
    child: const Icon(
      Icons.add,
    ),
  );
}
