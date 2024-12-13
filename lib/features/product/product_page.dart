import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../core/constants/color.dart';
import '../auth/widgets/arrow.dart';
import 'widgets/product_images_widget.dart';
import 'widgets/product_details_widget.dart';
import 'widgets/product_reviews_widget.dart';
import 'widgets/product_actions_widget.dart';
import '../../../models/product.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      appBar: AppBar(
        backgroundColor: CustomColor.mainColor,
        leading: Arrow(
          onPressed: () {
            Navigator.pop(context);
          },
          imgURL: "assets/icons/back_arrow.png",
        ),
        actions: [
          IconButton(
            icon: const Icon(IconsaxPlusBroken.heart, color: CustomColor.whiteColor),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImagesWidget(product: product),
            const SizedBox(height: 16),
            ProductDetailsWidget(product: product),
            const SizedBox(height: 16),
            const ProductReviewsWidget(),
            const SizedBox(height: 16),
            ProductActionsWidget(price: product.price),
          ],
        ),
      ),
    );
  }
}
