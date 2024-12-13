import 'package:flutter/material.dart';
import 'package:untitled1/features/search/widgets/category_list_widget.dart';
import 'package:untitled1/features/search/widgets/filter_widget.dart';

import 'package:untitled1/features/search/widgets/search_bar_widget.dart';
import 'package:untitled1/features/search/widgets/search_results_widget.dart';
import 'package:untitled1/features/search/functions/filter_logic.dart';

import '../../core/constants/color.dart';
import '../../core/data/products_data.dart';
import '../../features/auth/widgets/arrow.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchQuery = "";
  String _selectedSort = "Recommended";
  String _selectedPrice = "Low to High";
  String _selectedCategory = "Men";
  bool _onSaleSelected = false;

  final List<String> _sortOptions = [
    "Recommended",
    "Newest",
    "Lowest - Highest Price",
    "Highest - Lowest Price",
  ];

  final List<String> _priceOptions = [
    "Low to High",
    "High to Low",
  ];

  final List<String> _categoryOptions = [
    "Men",
    "Women",
    "Kids",
  ];

  void _onSearch(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
    });
  }

  void _onFilterButtonPressed(String filterType) {
    List<String> options = [];
    String selectedOption = "";
    ValueChanged<String> onOptionSelected = (value) {}; // Default handler

    if (filterType == "Sort by") {
      options = _sortOptions;
      selectedOption = _selectedSort;
      onOptionSelected = (option) {
        setState(() {
          _selectedSort = option;
        });
      };
    } else if (filterType == "Price") {
      options = _priceOptions;
      selectedOption = _selectedPrice;
      onOptionSelected = (option) {
        setState(() {
          _selectedPrice = option;
        });
      };
    } else if (filterType == "Category") {
      options = _categoryOptions;
      selectedOption = _selectedCategory;
      onOptionSelected = (option) {
        setState(() {
          _selectedCategory = option;
        });
      };
    }


    if (options.isNotEmpty) {
      showFilterBottomSheet(
        context: context,
        filterType: filterType,
        options: options,
        selectedOption: selectedOption,
        onOptionSelected: onOptionSelected,
      );
    }

  showFilterBottomSheet(
      context: context,
      filterType: filterType,
      options: options,
      selectedOption: selectedOption,
      onOptionSelected: onOptionSelected,
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredProducts = allProducts
        .where((product) =>
    product.name.toLowerCase().contains(_searchQuery) ||
        product.category.toLowerCase().contains(_searchQuery))
        .toList();

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
                    child: SearchBarWidget(
                      searchQuery: _searchQuery,
                      onSearch: _onSearch,
                      onClear: () {
                        setState(() {
                          _searchQuery = "";
                        });
                      },
                      onFocus: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              FilterButtonsSlider(
                labels: const ["Filter", "On Sale", "Price", "Sort by", "Category"],
                actions: [
                      // ignore: avoid_print
                      () => print("Filter pressed"),
                      () => setState(() {
                    _onSaleSelected = !_onSaleSelected;
                  }),
                      () => _onFilterButtonPressed("Price"),
                      () => _onFilterButtonPressed("Sort by"),
                      () => _onFilterButtonPressed("Category"),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: _searchQuery.isEmpty
                    ? const CategoryListWidget()
                    : filteredProducts.isEmpty
                    ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.search_off,
                          size: 80, color: Colors.white70),
                      const SizedBox(height: 16),
                      const Text(
                        "Sorry, we couldn't find any matching result for your Search.",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _searchQuery = "";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF8E6CEF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Explore Categories",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
                    : SearchResultsWidget(products: filteredProducts),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
