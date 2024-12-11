
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? text;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.buttonColor,
        minimumSize: const Size(double.infinity, 49),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
