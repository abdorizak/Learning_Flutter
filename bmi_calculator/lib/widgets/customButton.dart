import 'package:flutter/material.dart';

import '../Utils/constant.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  const CustomButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: kBottomContainerColor,
      constraints: const BoxConstraints.tightFor(
        width: double.infinity,
        height: 56,
      ),
      child: const Text(
        "CALCULATE",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

