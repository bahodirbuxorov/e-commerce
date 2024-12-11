import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../../core/route/rout_names.dart';

class AddressEditWidget extends StatelessWidget {
  const AddressEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CustomColor.greyColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "2715 Ash Dr. San Jose, South Dakota 83475",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.addAddress);
              },
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
      ),
    );
  }
}
