import 'package:blinkit/repositories/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/repositories/screens/BottomNav/BottomNav.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: "onboardingimg.png"),

            SizedBox(height: 10),
            UiHelper.CustomImage(img: "blinkitlogo.png"),
            SizedBox(height: 10),
            UiHelper.CustomText(
              text: "India's last minute app",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),

              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    UiHelper.CustomText(
                      text: "Soumya",
                      color: Colors.black,
                      fontweight: FontWeight.w500,
                      fontsize: 14,
                    ),
                    SizedBox(height: 10),
                    UiHelper.CustomText(
                      text: "8795*******",
                      color: Colors.black,
                      fontweight: FontWeight.w500,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNav(),
                            ),
                          );
                        },
                        child: UiHelper.CustomText(
                          text: "Login",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
