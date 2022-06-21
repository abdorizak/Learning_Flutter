// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import '../Utils/constant.dart';

class ReusubleCard extends StatelessWidget {
  final Widget? child;
  ReusubleCard({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: KActiveCardColour,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
