class Products {
  Picture? image;
  String? sId;
  String? title;
  String? category;
  String? amount;
  int? price;
  int? newPrice;
  int? nutritions;
  String? description;
  bool? bestSelling;
  bool? excuOffer;
  int quantity = 1;

  Products({
    required this.image,
    required this.sId,
    required this.title,
    required this.category,
    required this.amount,
    required this.price,
    required this.newPrice,
    required this.nutritions,
    required this.description,
    required this.bestSelling,
    required this.excuOffer,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      image: Picture.fromJson(json['image']),
      sId: json['_id'],
      title: json['title'],
      category: json['category'],
      amount: json['amount'],
      price: json['price'],
      newPrice: json['newPrice'],
      nutritions: json['nutritions'],
      description: json['description'],
      bestSelling: json['bestSelling'],
      excuOffer: json['excuOffer'],
    );
  }
}

class Picture {
  String? publicId;
  String? url;

  Picture({this.publicId, this.url});
  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      publicId: json['public_id'],
      url: json['url'],
    );
  }
}

class CartAmount {
  int? price;
  String? title;
  int? amount;
  CartAmount({
    this.price,
    this.title,
    this.amount,
  });
  factory CartAmount.fromJson(Map<String, dynamic> json) {
    return CartAmount(
      price: json['price'],
      title: json['title'],
      amount: json['amount'],
    );
  }
}
