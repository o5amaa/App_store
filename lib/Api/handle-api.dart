import 'package:fprovid_app/Packages/Screens/News/Model/controller-news.dart';

abstract class HandleApi {
  // ? get Data News of a list ..
  Future<ModelControllerNews> getNews({required String language});
}
