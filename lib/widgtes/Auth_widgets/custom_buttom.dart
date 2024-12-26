import 'package:e_transport/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16
      ),),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: AppBarColor.withOpacity(0.8),
        minimumSize: Size(350, 50),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
