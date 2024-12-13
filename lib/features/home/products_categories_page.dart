import 'package:flutter/material.dart';
import 'package:untitled1/features/home/widgets/custom_clip_rect.dart';
import 'package:untitled1/core/constants/color.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/core/data/products_data.dart';
import '../auth/widgets/arrow.dart';

class ProductsCategories extends StatelessWidget {
  final String category;

  const ProductsCategories({super.key, required this.category});

  @override
  Widget build(BuildContext context) {

    final List<Product> filteredProducts = allProducts
        .where((product) => product.category.toLowerCase() == category.toLowerCase())
        .toList();




    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },
                imgURL: "assets/icons/back_arrow.png",
              ),
              const SizedBox(height: 20),
              Text(
                "$category Products",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: filteredProducts.isEmpty
                    ? const Center(
                  child: Text(
                    "No products available in this category.",
                    style: TextStyle(color: Colors.white),
                  ),
                )
                    : GridView.builder(
                  itemCount: filteredProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    return CustomClipRRect(product: filteredProducts[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
