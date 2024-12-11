import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../auth/widgets/arrow.dart';
import '../auth/widgets/custom_button.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    imgURL: "assets/icons/back_arrow.png",
                  ),
                  const Text(
                    "Add Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                      hintText: "Card Number",
                      fillColor: CustomColor.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              // InputBorder.none,
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                            hintText: "CCV",
                            fillColor: CustomColor.greyColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              // InputBorder.none,
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                            hintText: "Exp",
                            fillColor: CustomColor.greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // InputBorder.none,
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                      hintText: "Cardholder Name",
                      fillColor: CustomColor.greyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 500,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}
