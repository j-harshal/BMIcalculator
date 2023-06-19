import 'package:flutter/material.dart';
const labletextstyle = TextStyle(
fontSize: 20,

);
class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  IconContent({required this.icon, required this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: labletextstyle
        )
      ],
    );
  }
}

