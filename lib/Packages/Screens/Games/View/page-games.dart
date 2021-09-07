import 'package:flutter/material.dart';
import 'package:fprovid_app/Api/api-controller.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Games/Components/cadr-game.dart';
import 'package:fprovid_app/Packages/Screens/Games/Model/controller-game.dart';
import 'package:fprovid_app/Packages/Screens/Games/Model/game.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:fprovid_app/services/language-status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageGames extends StatelessWidget {
  PageGames({Key? key}) : super(key: key);

  final ApiController _api = ApiController();

  Future<ModelControllerGame> getDataGame({required String codeLanguag}) async {
    return await _api.getGames(language: codeLanguag);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<ModelControllerGame>(
          future: getDataGame(
              codeLanguag: StatusLanguage.getLocalLangCode(context: context)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Scaffold(
                body: Center(
                  child: AppLoading(chooseLoading: ChooseLoading.PAGE),
                ),
              );
            } else if (!snapshot.hasData) {
              return Scaffold(
                body: Center(
                  child: CircleAvatar(
                    radius: 80.r,
                    backgroundImage: AssetImage(PathImages.notFoundImage),
                  ),
                ),
              );
            }
            // ? الداتا موجودة
            if (snapshot.hasData) {
              List<ModelGame> _dataList = snapshot.data!.dataGame ?? [];
              return Scaffold(
                body: ListView.builder(
                  itemCount: _dataList.length,
                  itemBuilder: (context, index) {
                    ModelGame _dataGame = _dataList.elementAt(index);
                    return CardGame(data: _dataGame);
                  },
                ),
              );
            } else {
              return Scaffold(
                body: Center(
                  child: CircleAvatar(
                    radius: 44.r,
                    backgroundImage: AssetImage(PathImages.notFoundImage),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
