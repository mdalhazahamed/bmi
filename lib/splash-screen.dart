import 'dart:async';

import 'package:bmi/pages/home_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => HomePage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF090D22),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_6rRg5u/obese/data.json',
                  width: 250),
            ],
          ),
        ),
      ),
    );
  }
}
