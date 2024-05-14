import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
  required this.onTap,
  required this.text});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(double.infinity, 40),
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}