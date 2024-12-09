import 'package:flutter/material.dart';
import 'package:untitled1/widgets/navbar.dart';
import '../../core/ navigation.dart';
import '../../models/product.dart';
import '../../widgets/category_item.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/product_list.dart';
import '../../widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Men';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A122D),
      appBar: buildAppBar(selectedCategory, (String? value) {
        if (value != null) {
          setState(() {
            selectedCategory = value;
          });
        }
      }),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const CustomSearchBar(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.categoriesPage); // /category marshrutiga o'tadi
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    CategoryItem(
                        title: 'Hoodies',
                        imagePath: 'assets/category/hoodies.png'),
                    SizedBox(width: 10),
                    CategoryItem(
                        title: 'Shorts',
                        imagePath: 'assets/category/shorts.png'),
                    SizedBox(width: 10),
                    CategoryItem(
                        title: 'Shoes', imagePath: 'assets/category/shoes.png'),
                    SizedBox(width: 10),
                    CategoryItem(
                        title: 'Bag', imagePath: 'assets/category/bag.png'),
                    SizedBox(width: 10),
                    CategoryItem(
                        title: 'Accessories',
                        imagePath: 'assets/category/accesories.png'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Selling',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("See All",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: ProductList(products: [
                  Product(
                      name: 'Men\'s Harrington Jacket',
                      price: '\$148.00',
                      image: 'assets/clothes/jacket.png'),
                  Product(
                      name: 'Max Cirro Men\'s Slides',
                      price: '\$55.00',
                      image: 'assets/clothes/slipper.jpg'),
                ]),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arrivals',
                    style: TextStyle(
                      color: Color(0xFF8E6CEF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: ProductList(products: [
                  Product(
                      name: 'Men\'s Jacket',
                      price: '\$120.00',
                      image: 'assets/clothes/jacket1.png'),
                  Product(
                      name: 'Nike Shoes',
                      price: '\$150.00',
                      image: 'assets/clothes/shoes.jpg'),
                ]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
