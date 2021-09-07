import 'game.dart';

class ModelControllerGame {
  List<ModelGame>? dataGame;
  ModelControllerGame();

  ModelControllerGame.fromJson(dynamic json) {
    if (json['game'] != null) {
      // * init to list 
      dataGame = [];
      json['game'].forEach( // * lop of list 
        (value) {
          dataGame?.add(ModelGame.fromJson(value));
        },
      );
    }
  }
}