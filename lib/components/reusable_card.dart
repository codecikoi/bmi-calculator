import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.backgroundColor, this.cardChild, this.cardFunc});

  final  Color backgroundColor;
  final Widget cardChild;
  final Function cardFunc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardFunc,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}