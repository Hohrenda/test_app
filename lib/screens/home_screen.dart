import 'package:flutter/material.dart';
import 'package:test_app/utils/color_manager.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
          onTap: () {
            setState(() {
              _color = ColorManager.getRandomColor();
            });
          },
          child: Center(
              child: Text(
                'Hey there',
                style: TextStyle(fontSize: 18),
              ))),
    );
  }
}