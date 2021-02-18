import 'package:flutter/material.dart';

class ListMap extends StatefulWidget {
  @override
  _ListMapState createState() => _ListMapState();
}

class _ListMapState extends State<ListMap> {
  List<String> name=["aes","gfdghf","hgdhgj","hdgh"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Wrap(
        spacing: 10,
          children:
        name.map((e) => Text(e)).toList().cast<Widget>()

      )

    );
  }
}
