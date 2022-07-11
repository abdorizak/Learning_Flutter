// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../Widgets/welcomeView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1516912481808-3406841bd33c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=744&q=80'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Mogadishu, SO',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: '\nupdated at: 12:00 PM',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '\n\n28.9°C',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
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
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.info_rounded),
      ),
    );
  }
}
