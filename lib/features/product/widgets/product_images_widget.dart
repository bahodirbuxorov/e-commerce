import 'package:flutter/material.dart';
import '../../../models/product.dart';

class ProductImagesWidget extends StatelessWidget {
  final Product product;

  const ProductImagesWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {

    final List<String> images = [
      product.imgURL,
      product.imgURL,
      product.imgURL,
    ];

    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ClipRRect(

              child: Image.asset(
                images[index],
                height: 300,
                width: MediaQuery.of(context).size.width * 0.4,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
