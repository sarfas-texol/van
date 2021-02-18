import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

class UsingMap extends StatefulWidget {
  @override
  _UsingMapState createState() => _UsingMapState();
}

class _UsingMapState extends State<UsingMap> {
  @override
  List<String> sa=["as","sas","agdfhg"];
  
  List<Map<String,dynamic>>sar=[
    {
      "Name":"sarfas",
      "id":"124344"
    },
    {
      "Name":"sarfas",
      "id":"124344"
    },
    {
      "Name":"sarfas",
      "id":"124344"
    },
    {
      "Name":"sarfas",
      "id":"124344"
    },
  ];
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children:

       // sa.map((e) =>Text(e)).toList().cast<Widget>()
        //sa.map((e) =>Text(e)).toList().cast();
         sar.map((e) => Text(e['Name'])).toList().cast<Widget>(),





    );

  }
}

