
import 'package:flutter/material.dart';
import 'package:untitled1/features/home/widgets/custom_clip_rect.dart';
import '../../core/constants/color.dart';
import '../auth/widgets/arrow.dart';

class ProductsCategories extends StatelessWidget {
  final String? category;

  const ProductsCategories({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },
                imgURL: "assets/icons/back_arrow.png",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                category!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  children: const [
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
