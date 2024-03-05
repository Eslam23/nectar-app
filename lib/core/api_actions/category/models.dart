class Categories{
   Picture? image;
   String? sId;
   String? title;
   int? iV;
   Categories({
     this.image,
     this.sId,
     this.title,
     this.iV,
});
   factory Categories.fromJson(Map<String,dynamic> json){
     return Categories(
       image: Picture.fromJson(json['image']),
       sId: json['_id'],
       title: json['title'],
       iV: json['v'],
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