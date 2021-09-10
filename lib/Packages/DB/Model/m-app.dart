class ModelAppDB {
  String? id;
  String? name;
  String? image;
  String? type;
  String? size;
  String? rating;
  String? timeStamp;

  ModelAppDB({
    this.id,
    this.name,
    this.image,
    this.type,
    this.size,
    this.rating,
    this.timeStamp,
  });

  ModelAppDB.fromMap(Map<String, dynamic> map)
      : assert(map.isNotEmpty),
        id = map['id'],
        name = map['name'],
        type = map['type'],
        rating = map['rating'],
        size = map['size'],
        image = map['image'],
        timeStamp = map['timeStamp'];

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['rating'] = this.rating;
    data['size'] = this.size;
    data['image'] = this.image;
    data['timeStamp'] = this.timeStamp;

    return data;
  }
}
