import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

Widget circleAvatar(String imgURL, String text, VoidCallback onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: CustomColor.buttonColor,
            backgroundImage: AssetImage(
              imgURL,
            ),
            radius: 40,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
