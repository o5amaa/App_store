import 'dart:convert';

import 'package:fprovid_app/Api/handle-api.dart';
import 'package:fprovid_app/Packages/Screens/Games/Model/controller-game.dart';
import 'package:fprovid_app/Packages/Screens/News/Model/controller-news.dart';
import 'package:http/http.dart' as http;

import 'end-point.dart';

class ApiController extends HandleApi {
  // * Time Out 100 second for close con to server ..
  int _timeOut = 100;

  // * *** Get Data News from Api
  @override
  Future<ModelControllerNews> getNews({required String language}) async {
    String _url = EndPoint.baseUrl + '$language/' + EndPoint.name;
    Uri _uri = Uri.parse(_url);

    late ModelControllerNews _data; // ? تأخير
    try {
      // ? يرجع لك الداتا
      http.Response _response =
          await http.get(_uri).timeout(Duration(seconds: _timeOut));

      if (_response.statusCode == 200) {
        // ? export file string .. [ jsonDecode() ] from string to json
        dynamic json = jsonDecode(_response.body);
        _data = ModelControllerNews.fromJson(json);
      } else {
        throw Exception('Failed To Fetch Data From Servir.');
      }
    } catch (e) {
      print('Error Genaral Is  : $e');
    }
    return _data;
  }

  // * *** Get Data Game from Api
  @override
  Future<ModelControllerGame> getGames({required String language}) async {
    String _url = EndPoint.baseUrl + '$language/' + EndPoint.game;
    Uri _uri = Uri.parse(_url);
    late ModelControllerGame _data;
    try {
      await http
          .get(_uri)
          .timeout(Duration(seconds: _timeOut))
          .then((response) {
        // ? يرجع لك الداتا
        if (response.statusCode == 200) {
          var json = jsonDecode(response.body);
          _data = ModelControllerGame.fromJson(json);
        } else {
          throw Exception('Failed To Fetch Data From Servir.');
        }
        // * Error amassing in get data
      }).catchError((onError) {
        print('Catch Error Is : ${onError.toString()}');
      });
    } catch (e) {
      print('Error Genaral Is  : $e');
    }
    return _data;
  }
}
