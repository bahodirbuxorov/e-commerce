import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

// ignore: must_be_immutable
class CategoryButtonWidget extends StatelessWidget {
  String imgURL;
  String text;
  VoidCallback onPressed;

  CategoryButtonWidget(
      {super.key,
      required this.imgURL,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 64),
          backgroundColor: CustomColor.greyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                imgURL,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(width: 20),

            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
