
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/avatar.png",
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: CustomColor.greyColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Gilbert Jones",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Glbertjones001@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              color: CustomColor.buttonColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "121-224-7890",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  elevatedButton("Address", () {
                    Navigator.pushNamed(context, RouteNames.addressEdit);
                  }),
                  elevatedButton("Wishlist", () {
Navigator.pushNamed(context, RouteNames.wishlist);
                  }),
                  elevatedButton("Payment", () {
                    Navigator.pushNamed(context, RouteNames.paymentPage);
                  }),
                  elevatedButton("Help", () {}),
                  elevatedButton("Support", () {}),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RouteNames.signInEmail);
                  },
                  child: const Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//! Widget
Widget elevatedButton(String text, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.greyColor,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Image.asset(
            "assets/icons/right_arrow.png",
          ),
        ],
      ),
    ),
  );
}
