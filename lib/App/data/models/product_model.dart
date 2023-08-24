class ProductModel {
  int id;
  String image;
  double sold;
  double reviews;
  double stars;
  String name;
  String description;
  int quantity;
  double price;
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    required this.description,
    required this.stars,
    required this.reviews,
    required this.sold,
  });
}
