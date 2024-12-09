import 'package:flutter/material.dart';


class SocialButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;


  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
      ),
      onPressed: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 20),
          Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.black, ),

            ),
          ),
        ],
      ),
    );
  }
}