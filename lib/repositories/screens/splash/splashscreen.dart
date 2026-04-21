import 'dart:async';

import 'package:flutter/material.dart';
import 'package:blinkit/domain/constants/appcolor.dart';
import 'package:blinkit/repositories/widgets/uihelper.dart';
import 'package:blinkit/repositories/screens/login/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [UiHelper.CustomImage(img: "logo.png")],
        ),
      ),
    );
  }
}
