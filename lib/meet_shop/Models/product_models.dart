enum CategoryType {fish, chicken, spicy, vegetables }

class ProductModel {
  final String name;
  final num price;
  final String image;
  int count;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    this.count = 1,
  });
}