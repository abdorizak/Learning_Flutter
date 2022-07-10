// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names
import 'package:bmi_calculator/Screens/resultScreen.dart';
import 'package:bmi_calculator/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/widgets.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Gender { male, female }

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  double weight = 65;
  int age = 18;
  Gender selectedGender = Gender.male;

  void _generateResult() {
    double result = weight / pow(height / 100, 2);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          result: result,
        ),
      ),
    );
  }

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
                    selected: selectedGender == Gender.male ? true : false,
                    onPressed: () =>
                        {setState(() => selectedGender = Gender.male)},
                    child: IconContent(
                      txt: "Male",
                      fontSize: 25,
                      icon: FontAwesomeIcons.mars,
                      size: 110,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusubleCard(
                    selected: selectedGender == Gender.female ? true : false,
                    onPressed: () =>
                        {setState(() => selectedGender = Gender.female)},
                    child: IconContent(
                      txt: "Female",
                      fontSize: 25,
                      icon: FontAwesomeIcons.venus,
                      size: 110,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusubleCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 32, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 45,
                            color: Colors.grey),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTickMarkColor: Colors.grey,
                      thumbColor: kBottomContainerColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                    ),
                    child: Slider(
                        value: height,
                        min: 10,
                        max: 320,
                        onChanged: (newVal) {
                          setState(() {
                            height = newVal;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusubleCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toInt().toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                  color: Colors.grey),
                            ),
                            Text(
                              "Kg",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Round_Button(
                                icon: Icons.add,
                                onPressed: () => setState(() => weight += 1)),
                            SizedBox(
                              width: 10,
                            ),
                            Round_Button(
                                icon: Icons.remove,
                                onPressed: () => setState(() => weight -= 1)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusubleCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                  color: Colors.grey),
                            ),
                            Text(
                              "yrs",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Round_Button(
                                icon: Icons.add,
                                onPressed: () => setState(() => age += 1)),
                            SizedBox(
                              width: 10,
                            ),
                            Round_Button(
                                icon: Icons.remove,
                                onPressed: () => setState(() => (age <= 0) ? print("age should not be less than 0") : age -= 1))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            onPressed: _generateResult,
          )
        ],
      ),
    );
  }
}
