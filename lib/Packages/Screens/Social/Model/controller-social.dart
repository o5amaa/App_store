import 'social.dart';

class ModelControllerSocial {
  List<ModelSocial>? social;

  ModelControllerSocial({this.social});

  ModelControllerSocial.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty) {
    social = [];
    json['social'].forEach((v) {
      social?.add(new ModelSocial.fromJson(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.social != null) {
      data['social'] = this.social?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
