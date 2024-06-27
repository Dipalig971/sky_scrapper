import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04082E),
      appBar: AppBar(
          backgroundColor: const Color(0xff04082E),
        leading:  const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.location_on, color: Colors.blue),
          ),
          SizedBox(width: 5),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text('Florida, USA', style: TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ),
        ],
      ),
      body: const Stack(
        children: [
          // // Blurred background
          // Positioned.fill(
          //   child: ImageFiltered(
          //     imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          //     child: Container(
          //       decoration: const BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage('assets/background.jpg'), // Your background image
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Weather card
          // Center(
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          //     padding: const EdgeInsets.all(20),
          //     decoration: const BoxDecoration(
          //
          //     ),
               Column(
                children: [
                  // Location and menu icon
                  // SizedBox(height: 20),
                  // About Today
                  Text(
                    'About Today',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Weather icon and temperature
                  Icon(Icons.cloud, size: 100, color: Colors.lightBlue),
                  SizedBox(height: 20),
                  // Date
                  Text(
                    'Wednesday, 25 May',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  // Temperature
                  Text(
                    '19°',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
