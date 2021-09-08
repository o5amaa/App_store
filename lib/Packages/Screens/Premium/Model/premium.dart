class ModelPremium {
  String? id;
  String? nameApp;
  String? type;
  String? rating;
  String? size;
  String? image;
  String? description;
  String? price;
  String? urlApp;
  List<String>? images;

  ModelPremium({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.image,
    this.description,
    this.price,
    this.urlApp,
    this.images,
  });

  ModelPremium.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty),
        id = json['id'],
        nameApp = json['nameApp'],
        type = json['type'],
        rating = json['rating'],
        size = json['size'],
        image = json['image'],
        description = json['description'],
        price = json['price'],
        urlApp = json['urlApp'],
        images = json['images'].cast<String>();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameApp'] = this.nameApp;
    data['type'] = this.type;
    data['rating'] = this.rating;
    data['size'] = this.size;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    data['images'] = this.images;
    return data;
  }
}