class ModelGame {
  String? id;
  String? nameApp;
  String? imageUrl;
  String? videoUrl;
  String? type;
  String? size;
  String? rating;

  ModelGame({
    this.id,
    this.nameApp,
    this.imageUrl,
    this.videoUrl,
    this.type,
    this.size,
    this.rating,
  });

  ModelGame.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty), // * test is not empty ..
        // ? the same if statment using of constracter ..
        id = json['id'],
        nameApp = json['nameApp'],
        imageUrl = json['imageUrl'],
        videoUrl = json['videoUrl'],
        type = json['type'],
        size = json['size'],
        rating = json['rating'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameApp'] = this.nameApp;
    data['imageUrl'] = this.imageUrl;
    data['videoUrl'] = this.videoUrl;
    data['type'] = this.type;
    data['size'] = this.size;
    data['rating'] = this.rating;
    return data;
  }
}
