class Food {
  final String id;
  final String name;
  final String description;
  final String price;
  final String imgPath;

  const Food({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imgPath,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        imgPath: json['imgPath']);
  }
}
