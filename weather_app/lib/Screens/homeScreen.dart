// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/Screens/searchScreen.dart';
import 'package:weather_app/Widgets/welcomeView.dart';
import '../Widgets/weatherView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  WeatherFactory openWeather =
      WeatherFactory('your Api Key'); // your Api Key here
  Weather? weather;
  Future<Position> getMyLocation() async =>
      await Geolocator.getCurrentPosition();
  Future<void> getWeather() async {
    setState(() => isLoading = !isLoading);
    Position position = await getMyLocation();
    weather = await openWeather.currentWeatherByLocation(
        position.latitude, position.longitude);
    setState(() => isLoading = !isLoading);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.pin_drop_outlined),
            onPressed: () => getWeather(),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SearchScreen(),
              ),
            ),
          ),
        ],
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                  'https://images.unsplash.com/photo-1516912481808-3406841bd33c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=744&q=80'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.darken,
              ),
            ),
          ),
          child: weather == null
              ? WelcomeView()
              : WeatherView(
                  weather: weather!,
                  refresh: getWeather,
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    title: Text('Weather App'),
                    backgroundColor: Color.fromARGB(255, 213, 124, 255),
                    content: Text(
                        'Weather App is a Flutter app that displays weather city and temperature in your city.\n\nThis app is developed by @adorizak.'),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'ok',
                            style: TextStyle(color: Colors.black),
                          ))
                    ]);
              });
        },
        child: Icon(Icons.info_rounded),
      ),
    );
  }
}
