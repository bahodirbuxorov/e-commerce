
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:untitled1/core/constants/color.dart';
import 'package:untitled1/core/route/rout_names.dart';
import 'package:untitled1/features/home/widgets/category_button_widget.dart';
import '../auth/widgets/arrow.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    imgURL: "assets/icons/back_arrow.png",
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      decoration: BoxDecoration(
                        color: CustomColor.greyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(IconlyBroken.search, color: Colors.white),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.close, color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Shop by Categories",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              CategoryButtonWidget(
                imgURL: "assets/category_images/hoodie.png",
                text: "Hoodies",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Hoodies");
                },
              ),
              CategoryButtonWidget(
                imgURL: "assets/category_images/shorts.png",
                text: "Shorts",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Shorts");
                },
              ),
              CategoryButtonWidget(
                imgURL: "assets/category_images/boots.png",
                text: "Shoes",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Shoes");
                },
              ),
              CategoryButtonWidget(
                imgURL: "assets/category_images/bag.png",
                text: "Bag",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Bag");
                },
              ),
              CategoryButtonWidget(
                imgURL: "assets/category_images/glasses.png",
                text: "Accessories",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Accessories");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}