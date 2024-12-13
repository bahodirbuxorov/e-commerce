import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../core/constants/color.dart';
import 'bottom_sheet_widget.dart';

class ProductSelectionWidget extends StatelessWidget {
  final String label;
  final String selectedValue;
  final List<String> options;
  final ValueChanged<String> onSelected;

  const ProductSelectionWidget({
    super.key,
    required this.label,
    required this.selectedValue,
    required this.options,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheetWidget(
          context: context,
          title: label,
          options: options,
          selectedValue: selectedValue,
          onOptionSelected: onSelected,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: CustomColor.greyColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Label
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),

            Row(
              children: [
                Text(
                  label == "Color"
                      ? ""
                      : selectedValue,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (label == "Color")
                  CircleAvatar(
                    backgroundColor: _getColorFromName(selectedValue),
                    radius: 10,
                  ),
                const SizedBox(width: 20),
                const Icon(IconlyBroken.arrow_down_2, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Color _getColorFromName(String colorName) {
    switch (colorName) {
      case "Green":
        return Colors.green;
      case "Blue":
        return Colors.blue;
      case "Black":
        return Colors.black;
      default:
        return Colors.grey;
    }
  }
}
