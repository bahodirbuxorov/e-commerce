
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import 'orders.dart';

class OrderPage extends StatelessWidget {
  final bool hasOrders = false;

  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          title: const Text(
            "Orders",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: hasOrders
            ? SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/check.png",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "No Orders yet",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.buttonColor,
                      minimumSize: const Size(185, 52),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.orders);
                    },
                    child: const Text(
                      "Explore Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
            : const Orders(),
      )
    );
  }
}
