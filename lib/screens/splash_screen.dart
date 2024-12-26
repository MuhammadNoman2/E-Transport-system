import 'package:e_transport/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_Screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to the HomeScreen after a delay
    Future.delayed(Duration(seconds: 4), () {
      Get.off(HomeScreen());
    });

    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circle Avatar with an image
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.blue.shade50,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('Assets/images/img.png'),
                  ),
                ),
                SizedBox(height: 20),
                // App Title
                Text(
                  'E-Transportation System',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Loading Indicator at the bottom
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.blue.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
