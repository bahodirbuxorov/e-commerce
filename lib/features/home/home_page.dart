import 'package:flutter/material.dart';
import 'package:untitled1/features/home/widgets/custom_clip_rect.dart';
import 'package:untitled1/features/home/widgets/my_circle_avatar.dart';
import 'package:untitled1/features/home/widgets/search_bar_widget.dart';
import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGender = "Men";
  String searchText = "";

  final List<Map<String, dynamic>> products = [
    {
      "imgURL": "assets/images/boy.png",
      "text": "Men's Harrington Jacket",
      "price": 1755.0
    },
    {
      "imgURL": "assets/images/boy.png",
      "text": "Women's Harrington Jacket",
      "price": 1755.0
    },
    {
      "imgURL": "assets/images/boy.png",
      "text": "Men's Harrington Jacket",
      "price": 1755.0
    },
    {
      "imgURL": "assets/images/boy.png",
      "text": "Hoodie Zip-up",
      "price": 1850.0
    },
    {
      "imgURL": "assets/images/boy.png",
      "text": "Casual Shorts",
      "price": 950.0
    },
    {
      "imgURL": "assets/images/boy.png",
      "text": "Classic Shoes",
      "price": 1200.0
    },
  ];

  List<Map<String, dynamic>> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = products; // dastlab hamma mahsulot chiqadi
  }

  void _updateResults(List<Map<String, dynamic>> results) {
    setState(() {
      filteredProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSearching = filteredProducts.length != products.length;

    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          leading: GestureDetector(
            onTap: () {},
            child: Image.asset("assets/images/circle.png"),
          ),
          title: Center(
            child: Container(
              padding: const EdgeInsets.only(left: 12),
              width: 100,
              decoration: BoxDecoration(
                color: CustomColor.greyColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: DropdownButton(
                value: selectedGender,
                dropdownColor: CustomColor.greyColor,
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGender = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: "Men",
                    child: Row(
                      children: [
                        Text(
                          "Men",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: "Women",
                    child: Row(
                      children: [
                        Text(
                          "Women",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
                icon: Image.asset("assets/icons/down_arrow.png"),
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: CustomColor.buttonColor,
                minimumSize: const Size(40, 40),
              ),
              onPressed: () {},
              child: Image.asset(
                "assets/images/shop.png",
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomSearchBar(
                products: products,
                onResultsUpdated: _updateResults,
              ),
              const SizedBox(height: 20),
              if (!isSearching) ...[
                // Qidiruv qilinmayotganda eski UI:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.shopCategories,
                        );
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      circleAvatar(
                        "assets/category_images/hoodie.png",
                        "Hoodies",
                        () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.productsCategories,
                            arguments: "Hoodies",
                          );
                        },
                      ),
                      circleAvatar(
                        "assets/category_images/shorts.png",
                        "Shorts",
                        () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.productsCategories,
                            arguments: "Shorts",
                          );
                        },
                      ),
                      circleAvatar(
                        "assets/category_images/boots.png",
                        "Shoes",
                        () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.productsCategories,
                            arguments: "Shoes",
                          );
                        },
                      ),
                      circleAvatar(
                        "assets/category_images/bag.png",
                        "Bag",
                        () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.productsCategories,
                            arguments: "Bag",
                          );
                        },
                      ),
                      circleAvatar(
                        "assets/category_images/glasses.png",
                        "Accessories",
                        () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.productsCategories,
                            arguments: "Accessories",
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Top Selling",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.productsCategories,
                          arguments: 'Top Selling',
                        );
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Women's Harrington Jacket",
                        price: 1755,
                      ),
                      CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                      CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New in",
                      style: TextStyle(
                        color: CustomColor.buttonColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.productsCategories,
                          arguments: 'New in',
                        );
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                      CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                      CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ],
                  ),
                ),
              ] else ...[
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.6,
                  ),
                  itemCount: filteredProducts.length,
                  itemBuilder: (context, index) {
                    return CustomClipRRect(
                      imgURL: filteredProducts[index]["imgURL"],
                      text: filteredProducts[index]["text"],
                      price: filteredProducts[index]["price"],
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
