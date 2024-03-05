
class Offers{
  Picture? image;
  String? sId;
  String? title;
  String? description;
  String? amount;
  int? price;
  int? iV;
  Offers({
    this.image,
    this.sId,//_id
    this.title,
    this.description,
    this.amount,
    this.price,
    this.iV,//__v
});
  factory Offers.fromJson(Map<String,dynamic> json){
    return Offers(
      image: Picture.fromJson(json['image']),
      sId: json['_id'],
      title: json['title'],
      description: json['description'],
      amount: json['amount'],
      price: json['price'],
      iV: json['__v'],
    );
  }
}
class Picture{
  String? publicId;
  String? url;
  Picture({
    this.publicId,
    this.url,
});
  factory Picture.fromJson(Map<String,dynamic> json){
    return Picture(
      publicId: json['public_id'],
      url: json['url'],
    );
  }
}