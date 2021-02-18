import 'package:flutter/material.dart';
import 'package:fluttertesting/clipping.dart';
import 'package:fluttertesting/datapage.dart';
import 'package:fluttertesting/listmap.dart';
import 'package:fluttertesting/tra.dart';
import 'package:fluttertesting/usingmap.dart';

import 'flutterflex.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:abc(),
    );
  }
}

