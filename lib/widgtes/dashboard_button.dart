
import 'package:flutter/material.dart';

import '../constants/colors.dart';
class DashboardButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const DashboardButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradientBackgroundColor(),
        borderRadius: BorderRadius.circular(10), // Add some corner radius for aesthetics
      ),
      child: Card(
        elevation: 5, // Optional: Add shadow effect to the card
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20), // Add padding for better touch area
              child: Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}