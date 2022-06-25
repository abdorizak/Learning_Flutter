// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names
import 'package:flutter/material.dart';
import '../widgets/IconContent.dart';
import '../widgets/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 26, 2, 62),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusubleCard(
                    child: IconContent(
                      txt: "Male",
                      fontSize: 30,
                      icon: FontAwesomeIcons.mars,
                      size: 110,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusubleCard(
                    child: IconContent(
                      txt: "Female",
                      fontSize: 30,
                      icon: FontAwesomeIcons.mars,
                      size: 110,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusubleCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusubleCard(),
                ),
                Expanded(
                  child: ReusubleCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


