import 'news.dart';

class ModelControllerNews {
  List<ModelNews>? listNews;

  ModelControllerNews({this.listNews});

  ModelControllerNews.fromJson(Map<String, dynamic> json) {
    if (json['news'] != null) {
      // * init
      listNews = [];
      json['news'].forEach((n) {
        listNews?.add(ModelNews.fromJson(n));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listNews != null) {
      data['news'] = this.listNews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
