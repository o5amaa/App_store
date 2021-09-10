import 'package:flutter/material.dart';
import 'package:fprovid_app/Api/api-controller.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Components/header-card.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Components/list-view-premium.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Model/controller-premium.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Model/list-premium.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Model/premium.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:fprovid_app/services/language-status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PagePremium extends StatelessWidget {
  PagePremium({Key? key}) : super(key: key);
  final ApiController _api = ApiController();

  Future<ModelControllerPremium> getDataPremium(
      {required String codeLanguage}) async {
    return await _api.getPremium(language: codeLanguage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<ModelControllerPremium>(
          future: getDataPremium(
              codeLanguage: StatusLanguage.getLocalLangCode(context: context)),
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
            if (snapshot.hasData) {
              ModelListPremium _premium = snapshot.data!.premium!;
              List<ModelPremium> _games = _premium.games ?? [];
              List<ModelPremium> _artDesign = _premium.artDesign ?? [];
              List<ModelPremium> _education = _premium.education ?? [];
              return SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderCard(title: KeyLang.gamesTab),
                    ListViewPremium(dataList: _games),
                    HeaderCard(title: KeyLang.artDesign),
                    ListViewPremium(dataList: _artDesign),
                    HeaderCard(title: KeyLang.education),
                    ListViewPremium(dataList: _education),
                    // **
                    // HeaderCard(title: KeyLang.education),
                    // ListViewPremium(dataList: _education),
                  ],
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
// Column(
//           children: [
//             const HeaderCard(),
//             CardPremium(),
//           ],
//         ),