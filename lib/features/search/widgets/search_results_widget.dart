import 'package:flutter/material.dart';
import '../../../models/product.dart';

import '../../../features/home/widgets/custom_clip_rect.dart';
import '../../product/product_page.dart';

class SearchResultsWidget extends StatelessWidget {
  final List<Product> products;

  const SearchResultsWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const Center(
        child: Text(
          "Sorry, we couldn't find any products matching your search.",
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(product: product),
              ),
            );
          },
          child: CustomClipRRect(product: product),
        );
      },
    );
  }
}
