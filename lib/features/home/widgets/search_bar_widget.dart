import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/color.dart';

class CustomSearchBar extends StatefulWidget {
  final List<Map<String, dynamic>> products;
  final ValueChanged<List<Map<String, dynamic>>> onResultsUpdated;
  final String hintText;

  const CustomSearchBar({
    super.key,
    required this.products,
    required this.onResultsUpdated,
    this.hintText = 'Search',
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  String searchText = "";

  void _filterProducts(String query) {
    setState(() {
      searchText = query;
    });
    List<Map<String, dynamic>> filtered = widget.products
        .where((product) => product["text"]
        .toString()
        .toLowerCase()
        .contains(query.toLowerCase()))
        .toList();


    widget.onResultsUpdated(filtered);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: CustomColor.greyColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: TextField(
          onChanged: _filterProducts,
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.transparent,
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.white54),
            prefixIcon: const Icon(Icons.search, color: CustomColor.whiteColor),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 20.0,
            ),
          ),
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
      ),
    );
  }
}
