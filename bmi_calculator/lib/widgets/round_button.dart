import 'package:flutter/material.dart';

class Round_Button extends StatelessWidget {
  final IconData icon;
  Round_Button({ required this.icon });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      constraints: const BoxConstraints(
        minHeight: 56,
        minWidth: 56,
      ),
      fillColor: Colors.cyan,
      child: Icon(icon),
    );
  }
}