class ModelSocial {
  String? id;
  String? nameApp;
  String? type;
  String? rating;
  String? size;
  String? download;
  String? image;
  List<String>? images;
  String? description;

  ModelSocial({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.download,
    this.image,
    this.images,
    this.description,
  });

  ModelSocial.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty),
        id = json['id'],
        nameApp = json['nameApp'],
        type = json['type'],
        rating = json['rating'],
        size = json['size'],
        download = json['download'],
        image = json['image'],
        images = json['images'].cast<String>(),
        description = json['description'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameApp'] = this.nameApp;
    data['type'] = this.type;
    data['rating'] = this.rating;
    data['size'] = this.size;
    data['download'] = this.download;
    data['image'] = this.image;
    data['images'] = this.images;
    data['description'] = this.description;
    return data;
  }
}