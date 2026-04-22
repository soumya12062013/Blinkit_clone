import 'package:blinkit/repositories/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "onboardingimg.png"),

            SizedBox(height: 10),
            UiHelper.CustomImage(img: "blinkitlogo.png"),
          ],
        ),
      ),
    );
  }
}
