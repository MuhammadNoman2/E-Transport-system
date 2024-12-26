
import 'package:flutter/material.dart';

Color primaryColor = Colors.blue;
Color secondaryColor = Colors.green;
Color AppBarColor = Color(0xFF4B6F9A);
Color bgColor = Colors.deepOrange;

Gradient gradientBackgroundColor() {
  return LinearGradient(colors: [
    primaryColor,
    secondaryColor,
  ]);
}