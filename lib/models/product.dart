class Product {
  final String imgURL;
  final String name;
  final int price;
  final String category;
  final bool isTopSelling;
  final bool isNewIn;

  Product({
    required this.imgURL,
    required this.name,
    required this.price,
    required this.category,
    this.isTopSelling = false,
    this.isNewIn = false,
  });
}
