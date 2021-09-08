import 'package:fprovid_app/Packages/Screens/Games/Model/controller-game.dart';
import 'package:fprovid_app/Packages/Screens/News/Model/controller-news.dart';
import 'package:fprovid_app/Packages/Screens/Social/Model/controller-social.dart';

abstract class HandleApi {
  // ? get Data News of a list ..
  Future<ModelControllerNews> getNews({required String language});
  // ? Get Data Game a List ..
  Future<ModelControllerGame> getGames({required String language});
  // ? Get Data Social a list ..
  Future<ModelControllerSocial> getSocial({required String language});
}
