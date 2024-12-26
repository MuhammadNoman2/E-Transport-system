import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // Reactive variable to store the current theme mode
  var isDarkMode = false.obs;

  // Method to toggle theme
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    // Optionally, you can store the theme preference locally
  }

  // Method to get the current theme data
  ThemeData get themeData {
    return isDarkMode.value ? darkTheme : lightTheme;
  }

  // Define light theme
  final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    hintColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
    ),
  );

  // Define dark theme
  final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    hintColor: Colors.teal,
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );
}