import 'package:flutter/material.dart';

class ContinueWidget extends StatelessWidget {
  final String? imgURL;
  final String? text;
  const ContinueWidget({super.key,required this.imgURL,required this.text});

  @override
  Widget build(BuildContext context) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white10,
          minimumSize: const Size(
            double.infinity,
            60,
          ),
        ),
        onPressed: () {},
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imgURL!),
              Text(
                text!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 16,
              )
            ],
          ),
        ),
      );
    }
}

