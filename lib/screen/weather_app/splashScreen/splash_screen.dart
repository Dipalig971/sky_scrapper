import 'package:flutter/material.dart';
import 'dart:ui';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04082E),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 200, left: 80),
            child: SizedBox(
                height: 300,
                width: 300,
                child: Image(
                  image: AssetImage('assets/img/logo.png'),
                  fit: BoxFit.cover,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              'Daily \n Weather',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                  wordSpacing: 2,
                  letterSpacing: 2),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text(
              'Get to know Your Weather \n maps and radar precipitation \n forecast',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 80),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Container(
                height: 80,
                width: 280,
                decoration: BoxDecoration(
                  color: const Color(0xff38ACFF),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
