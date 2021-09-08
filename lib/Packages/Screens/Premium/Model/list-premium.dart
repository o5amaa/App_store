import 'premium.dart';

class ModelListPremium {
  List<ModelPremium>? games;
  List<ModelPremium>? artDesign;
  List<ModelPremium>? education;

  ModelListPremium({
    this.games,
    this.artDesign,
    this.education,
  });

  ModelListPremium.fromJson(dynamic json)
      : assert(json['games'] != null),
        assert(json['artDesign'] != null),
        assert(json['education'] != null) {
    // * init
    games = [];

    json['games'].forEach((v) {
      games?.add(new ModelPremium.fromJson(v));
    });

    // * init
    artDesign = [];
    json['artDesign'].forEach((v) {
      artDesign?.add(new ModelPremium.fromJson(v));
    });

    // * init
    education = [];
    json['education'].forEach((v) {
      education?.add(new ModelPremium.fromJson(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.games != null) {
      data['games'] = this.games?.map((v) => v.toJson()).toList();
    }
    if (this.artDesign != null) {
      data['artDesign'] = this.artDesign?.map((v) => v.toJson()).toList();
    }
    if (this.education != null) {
      data['education'] = this.education?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}