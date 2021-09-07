class ModelNews {
  String? id;
  String? nameApp;
  String? type;
  String? rating;
  String? size;
  String? download;
  String? image;
  String? description;
  List<String>? images;

  ModelNews({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.download,
    this.image,
    this.description,
    this.images,
  });
// ? Get data from Servir in the from of a Map.
  ModelNews.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      id = json['id'];
      nameApp = json['nameApp'];
      type = json['type'];
      rating = json['rating'];
      size = json['size'];
      download = json['download'];
      image = json['image'];
      description = json['description'];
      images = json['images'].cast<String>();
      // ! الليست ترجع استرنق : cast<String>()
    }
  }

// ? Post data to Servir in the from of Map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameApp'] = this.nameApp;
    data['type'] = this.type;
    data['rating'] = this.rating;
    data['size'] = this.size;
    data['download'] = this.download;
    data['image'] = this.image;
    data['description'] = this.description;
    data['images'] = this.images;
    return data;
  }
}
