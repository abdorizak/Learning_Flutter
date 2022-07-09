// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import '../Utils/constant.dart';

class ReusubleCard extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onPressed;

  ReusubleCard({this.child, this.selected = false, this.onPressed });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected == true ? KActiveCardColour : kInactiveCardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: child,
      ),
    );
  }
}
