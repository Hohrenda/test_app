import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Test App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.red;
  Random _rand = new Random();

  void _changeColor() {
    setState(() {
      _color = Color.fromRGBO(
          _rand.nextInt(256), _rand.nextInt(256), _rand.nextInt(256), _rand.nextDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
          onTap: _changeColor,
          child: Center(
              child: Text(
            'Hey there',
            style: TextStyle(fontSize: 18),
          ))),
    );
  }
}
