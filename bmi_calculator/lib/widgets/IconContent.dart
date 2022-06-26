import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String txt;
  final double fontSize;
  final IconData icon;
  final double size;

  IconContent({
    required this.txt,
    required this.fontSize,
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: size),
        const SizedBox(height: 12),
        Text(txt, style: TextStyle(fontSize: fontSize, color: Colors.grey)),
      ],
    );
  }
}