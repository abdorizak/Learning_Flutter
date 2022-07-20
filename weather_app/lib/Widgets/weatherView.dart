// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/extentions/extentions.dart';

class WeatherView extends StatelessWidget {
  final Weather? weather;
  Function? refresh;
  WeatherView({
    Key? key,
    required this.weather,
    this.refresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '${weather?.areaName}, ${weather?.country}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: '\nUpdated at: ${weather?.date?.format}',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text:
                        '\n\n${weather?.temperature?.celsius?.toStringAsFixed(1)}',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: '°C',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextSpan(
                    text: '\n⛈',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            // ignore: avoid_print
            onPressed: () {
              print('Refreshing');
              refresh!();
            },
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
