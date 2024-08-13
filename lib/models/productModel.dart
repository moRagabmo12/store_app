class productModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final ratingModel rating;

  productModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory productModel.fromJson(json) {
    return productModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
      rating: ratingModel.fromjson(json['rating']),
    );
  }
}

class ratingModel {
  final double rate;
  final int count;

  ratingModel({required this.rate, required this.count});

  factory ratingModel.fromjson(json) {
    return ratingModel(rate: json['rate'], count: json['count']);
  }
}
