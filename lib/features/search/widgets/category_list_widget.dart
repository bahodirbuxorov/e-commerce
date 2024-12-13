import 'package:flutter/material.dart';
import '../../../core/route/rout_names.dart';
import '../../../features/home/widgets/category_button_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CategoryButtonWidget(
          imgURL: "assets/category_images/hoodie.png",
          text: "Hoodies",
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.productsCategories, arguments: "Hoodies");
          },
        ),
        CategoryButtonWidget(
          imgURL: "assets/category_images/shorts.png",
          text: "Shorts",
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.productsCategories, arguments: "Shorts");
          },
        ),
        CategoryButtonWidget(
          imgURL: "assets/category_images/boots.png",
          text: "Shoes",
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.productsCategories, arguments: "Shoes");
          },
        ),
        CategoryButtonWidget(
          imgURL: "assets/category_images/bag.png",
          text: "Bag",
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.productsCategories, arguments: "Bag");
          },
        ),
      ],
    );
  }
}