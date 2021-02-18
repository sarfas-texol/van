import 'package:flutter/material.dart';

class Clipp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      ),
      body: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
            color: Colors.red,

        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path=Path()
    ..lineTo(0, size.height)
    ..quadraticBezierTo(0, size.height-100, size.width,size.height)
      ..lineTo(size.width, 0)
      ..moveTo(size.width, size.height);
      // ..lineTo(size.width, size.height)
     //..quadraticBezierTo(size.width-100, size.height, size.width,size.height);
     // ..lineTo(size.width, size.height)

     // ..close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return false;
  }
}
