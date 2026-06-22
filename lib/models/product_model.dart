class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  // JSON verisini Dart nesnesine çeviren factory metodu
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      // JSON'dan integer gelebilme ihtimaline karşı double'a çeviriyoruz
      price: json['price'].toDouble(), 
      description: json['description'],
      imageUrl: json['image'],
    );
  }
}