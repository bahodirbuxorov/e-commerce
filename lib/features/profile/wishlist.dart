
import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import '../auth/widgets/arrow.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          leading: Arrow(
            onPressed: () {
              Navigator.pop(context);
            },
            imgURL: 'assets/icons/back_arrow.png',
          ),
          backgroundColor: CustomColor.mainColor,
          centerTitle: true,
          title: const Text(
            "Notifications",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              notice("My Favorite", "12 Products", () {
                Navigator.pushNamed(context, RouteNames.productsCategories,
                    arguments: 'My Favorite');
              }),
              notice("T-Shirts", "4 Products", () {
                Navigator.pushNamed(context, RouteNames.productsCategories,
                    arguments: 'T-Shirts');
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget notice(String text, String bText, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/like.png",
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bText,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 210,
            ),
            Arrow(
              onPressed: onPressed,
              imgURL: 'assets/icons/right_arrow.png',
            ),
          ],
        ),
      ),
    ),
  );
}
