
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import '../auth/widgets/arrow.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Arrow(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      imgURL: 'assets/icons/back_arrow.png',
                    ),
                    const Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Cards",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                paymentContainer(context),
                paymentContainer(context),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Paypal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CustomColor.greyColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Cloth@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      Arrow(
                        onPressed: () {
                          Navigator.pushNamed(context, RouteNames.addCard);
                        },
                        imgURL: 'assets/icons/right_arrow.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//! Widget
Widget paymentContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "**** 4187",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Image.asset('assets/images/pay.png'),
          const SizedBox(
            width: 200,
          ),
          Arrow(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.addCard);
              },
              imgURL: 'assets/icons/right_arrow.png'),
        ],
      ),
    ),
  );
}
