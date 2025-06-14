class Product {
  final String tag;
  final String photo;
  final String productName;
  final String price;
  final String? desc;
  final String? details;

  Product({
    required this.tag,
    required this.photo,
    required this.productName,
    required this.price,
    this.desc,
    this.details,
  });
}
