class ModelAppBD {
  String? id;
  String? name;
  String? image;
  String? type;
  String? rating;
  String? size;
  String? timeStamp;

  ModelAppBD({
    this.id,
    this.name,
    this.image,
    this.type,
    this.size,
    this.rating,
    this.timeStamp,
  });

  ModelAppBD.fromMap(Map<String, dynamic> map)
      : assert(map.isNotEmpty),
        id = map['id'],
        name = map['name'],
        image = map['image'],
        type = map['type'],
        rating = map['rating'],
        size = map['size'],
        timeStamp = map['timeStamp'];

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['type'] = this.type;
    data['rating'] = this.rating;
    data['size'] = this.size;
    data['timeStamp'] = this.timeStamp;
    return data;
  }
}
