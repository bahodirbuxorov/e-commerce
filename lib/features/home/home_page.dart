import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:untitled1/core/constants/color.dart';
import 'package:untitled1/core/data/products_data.dart';
import 'package:untitled1/features/home/widgets/custom_clip_rect.dart';
import 'package:untitled1/features/home/widgets/my_circle_avatar.dart';
import '../../core/route/rout_names.dart';
import '../search/serach_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGender = "Men";

  @override
  Widget build(BuildContext context) {

    final topSelling = allProducts.where((product) => product.isTopSelling).toList();
    final newIn = allProducts.where((product) => product.isNewIn).toList();

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
                    child: Text(
                      "Men",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DropdownMenuItem(
                    value: "Women",
                    child: Text(
                      "Women",
                      style: TextStyle(color: Colors.white),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color: CustomColor.greyColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(IconlyBroken.search, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

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
                            context, RouteNames.productsCategories,
                            arguments: "Hoodies");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/shorts.png",
                      "Shorts",
                          () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Shorts");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/boots.png",
                      "Shoes",
                          () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Shoes");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/bag.png",
                      "Bag",
                          () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Bag");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/glasses.png",
                      "Accessories",
                          () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Accessories");
                      },
                    ),
                  ],
                ),

              ),

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

              SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topSelling.length,
                  itemBuilder: (context, index) {
                    return CustomClipRRect(product: topSelling[index]);
                  },
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New In",
                    style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),
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
              const SizedBox(height: 10),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newIn.length,
                  itemBuilder: (context, index) {
                    return CustomClipRRect(product: newIn[index]);
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
