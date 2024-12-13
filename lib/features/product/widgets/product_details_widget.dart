import 'package:flutter/material.dart';
import 'package:untitled1/features/product/widgets/product_selection_widget.dart';

import '../../../core/constants/color.dart';
import '../../../models/product.dart';
import 'product_quantity_selector.dart';

class ProductDetailsWidget extends StatefulWidget {
  final Product product;

  const ProductDetailsWidget({super.key, required this.product});

  @override
  State<ProductDetailsWidget> createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  String _selectedSize = "S";
  String _selectedColor = "Green";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product Name
        Text(
          widget.product.name,
          style: const TextStyle(
            color: CustomColor.whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),

        // Product Price
        Text(
          "\$${widget.product.price}",
          style: const TextStyle(
            color: CustomColor.buttonColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        // Size Selection
        ProductSelectionWidget(
          label: "Size",
          selectedValue: _selectedSize,
          options: const ["S", "M", "L", "XL"],
          onSelected: (value) => setState(() => _selectedSize = value),
        ),
        const SizedBox(height: 16),

        // Color Selection
        ProductSelectionWidget(
          label: "Color",
          selectedValue: _selectedColor,
          options: const ["Green", "Blue", "Black"],
          onSelected: (value) => setState(() => _selectedColor = value),
        ),
        const SizedBox(height: 16),

        // Quantity Selector
        const ProductQuantitySelector(),
        const SizedBox(height: 25),

        // Product Description
        const Text(
          "Built for life and made to last, this full-zip hoodie is made from our mid-weight fleece with a soft, brushed interior. It's finished with a jersey-lined hood, heavy-gauge drawcord, and premium ribbing at the cuffs and hem.",
          style: TextStyle(
            color: CustomColor.boldgreyColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 24),

        // Shipping & Returns
        const Text(
          "Shipping & Returns",
          style: TextStyle(
            color: CustomColor.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Free standard shipping and free 60-day returns.",
          style: TextStyle(
            color: CustomColor.boldgreyColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
