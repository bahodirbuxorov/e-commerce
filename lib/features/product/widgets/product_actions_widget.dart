import 'package:flutter/material.dart';

class ProductActionsWidget extends StatelessWidget {
  final int price;

  const ProductActionsWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF8E6CEF),
      ),
      child: TextButton(
        onPressed: () {

        },
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$$price",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Add to Bag",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
