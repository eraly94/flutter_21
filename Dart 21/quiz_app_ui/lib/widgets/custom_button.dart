import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(335, 70),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
