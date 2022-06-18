// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() => runApp(IAMRICH());

class IAMRICH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I AM RICH"),
          backgroundColor: const Color(0xFF0A0E21),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(70),
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('assets/images/person.jpeg'),
              ),
            ),
            const Expanded(
              child: Text(
                "I AM RICH \n Abdotizak Abdalla Hassan",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
