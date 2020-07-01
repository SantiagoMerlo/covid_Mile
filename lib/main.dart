import 'package:flutter/material.dart';

import 'package:hello_word/pages/action_page.dart';
import 'package:hello_word/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/' : ( context ) => HomePage(),
        '/actions' : ( context ) => ActionPage(),
      },
    );
  }
}


