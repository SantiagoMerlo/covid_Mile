import 'package:flutter/material.dart';

class ActionPage extends StatefulWidget {
  ActionPage({Key key}) : super(key: key);

  @override
  _ActionPageState createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Actions')
      ),
    );
  }
}