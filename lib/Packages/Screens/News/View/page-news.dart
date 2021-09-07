import 'package:flutter/material.dart';
import 'package:fprovid_app/Api/api-controller.dart';
import 'package:fprovid_app/Packages/Screens/News/Components/card-news.dart';
import 'package:fprovid_app/Packages/Screens/News/Model/controller-news.dart';
import 'package:fprovid_app/Packages/Screens/News/Model/news.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';

class PageNews extends StatefulWidget {
  static const String id = 'PageNews';
  PageNews({Key? key}) : super(key: key);

  @override
  _PageNewsState createState() => _PageNewsState();
}

class _PageNewsState extends State<PageNews> {
  ApiController _api = ApiController();
  late ModelControllerNews _pdata;

  @override
  void initState() {
    super.initState();
  }

  Future<ModelControllerNews> getDataNews() async {
    return _pdata = await _api.getNews(language: 'en');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ModelControllerNews>(
      // ? تغمل ريكوست مبدءها  await
      // future: _api.getNews(language: 'en'),
      future: getDataNews(),
      builder: (context, snapshot) {
        // ? [ اذا كان الداتا في الطرق سوي لاودنق] || [اذا ما فيش دادتا]
        if (snapshot.connectionState == ConnectionState.waiting ||
            !snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: AppLoading(chooseLoading: ChooseLoading.PAGE),
            ),
          );
        }
        // ? اذا الدادتا موجودة
        if (snapshot.hasData) {
          List<ModelNews> _dataNewsList = snapshot.data?.listNews ?? [];
          return Scaffold(
              body: ListView.builder(
            itemCount: _dataNewsList.length,
            itemBuilder: (context, index) {
              ModelNews _dataNews = _dataNewsList.elementAt(index);
              return CardNews(data: _dataNews);
            },
          ));
        } else {
          return Scaffold(
            body: Center(
              child: Text('Error Messages ..  '),
            ),
          );
        }
      },
    );
  }
}

// return Scaffold(
//       body: CardNews(),
//     );

/**
 * CardNews(
                // child: Text(snapshot.data!.listNews!.first.nameApp!),
                ),
 */