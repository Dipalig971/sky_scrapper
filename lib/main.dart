import 'package:flutter/material.dart';
import 'package:sky_scrapper/screen/weather_app/home/home_screen.dart';
import 'package:sky_scrapper/screen/weather_app/splashScreen/splash_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SplashScreen(),
        '/home':(context) => const HomeScreen(),
      },
    );
  }
}

