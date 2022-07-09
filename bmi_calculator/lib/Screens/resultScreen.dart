import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 26, 2, 62),
      ),
      body: Center(child: Text(result.round().toString()),),
    );
  }
}
