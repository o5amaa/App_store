import 'list-premium.dart';

class ModelControllerPremium {
  ModelListPremium? premium;

  ModelControllerPremium({this.premium});

  ModelControllerPremium.fromJson(Map<String, dynamic> json) {
    premium = json['premium'] != null
        ? new ModelListPremium.fromJson(json['premium'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.premium != null) {
      data['premium'] = this.premium?.toJson();
    }
    return data;
  }
}
