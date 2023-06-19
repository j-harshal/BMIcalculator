import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardchild;

  ReusableCard({required this.colour, required this.cardchild});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: cardchild,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      )
    
    ;
  }
}
 