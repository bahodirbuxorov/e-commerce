import 'package:flutter/material.dart';
import '../../models/product.dart';

class CategoryDetailsPage extends StatelessWidget {
  final String title;

  const CategoryDetailsPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // Mahsulotlar ro'yxati
    final List<Product> products = [
      Product(
        name: 'Men\'s Fleece Pullover Hoodie',
        price: '\$100.00',
        image: 'assets/clothes/jacket.png',
      ),
      Product(
        name: 'Fleece Pullover Skate Hoodie',
        price: '\$150.97',
        image: 'assets/clothes/jacket.png',
      ),
      Product(
        name: 'Fleece Skate Hoodie',
        price: '\$110.00',
        image: 'assets/clothes/jacket.png',
      ),
      Product(
        name: 'Men\'s Ice-Dye Pullover Hoodie',
        price: '\$128.97',
        image: 'assets/clothes/jacket.png',
      ),
      Product(
        name: 'Classic Hoodie',
        price: '\$95.00',
        image: 'assets/clothes/jacket.png',
      ),
      Product(
        name: 'Casual Hoodie',
        price: '\$120.00',
        image: 'assets/clothes/jacket.png',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1C1B2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1B2A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title (240)',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A293D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset(
                            product.image,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              color: Colors.white,

                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            product.price,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
