class Product {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String price;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.tagline,
    required this.description,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    // Fiyatı güvenli bir şekilde metne çeviriyoruz (.toString())
    // Eğer fiyatın başında '$' işareti yoksa (sayı olarak gelmişse) otomatik olarak ekliyoruz.
    String rawPrice = json['price']?.toString() ?? '0';
    String finalPrice = rawPrice.startsWith('\$') ? rawPrice : '\$$rawPrice';

    return Product(
      id: json['id'] ?? 0,
      name: json['name'] ?? json['title'] ?? 'İsimsiz Ürün', // Hem name hem title destekler
      tagline: json['tagline'] ?? json['brand'] ?? json['category'] ?? '',
      description: json['description'] ?? '',
      price: finalPrice, 
      image: json['image'] ?? json['thumbnail'] ?? '', // Hem image hem thumbnail destekler
    );
  }
}

List<Product> cartItems = [];