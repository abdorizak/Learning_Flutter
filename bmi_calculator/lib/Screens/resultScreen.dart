// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({Key? key, required this.result}) : super(key: key);
  String finalResult() {
    if (result >= 0 && result <= 18) {
      return 'You\'re UnderWeight';
    } else if (result >= 19 && result <= 25) {
       return 'You\'re Normar || Helthy weight';
     } else if ( result >= 26 && result <= 29) {
       return 'You\'re Overweight';
     } else {
       return 'You\'re Obese';
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 26, 2, 62),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Center(
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Expanded(child: ReusubleCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Center(
                  child: Text(
                    finalResult(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          )),
          CustomButton(onPressed: () => Navigator.pop(context), title: "Calculate Again",)
        ],
      ),
    );
  }
}
