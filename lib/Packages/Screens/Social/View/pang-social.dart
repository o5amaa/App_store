import 'package:flutter/material.dart';
import 'package:fprovid_app/Api/api-controller.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Social/Components/card-social.dart';
import 'package:fprovid_app/Packages/Screens/Social/Model/controller-social.dart';
import 'package:fprovid_app/Packages/Screens/Social/Model/social.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:fprovid_app/services/language-status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageSocial extends StatelessWidget {
  PageSocial({Key? key}) : super(key: key);

  final ApiController _api = ApiController();

  Future<ModelControllerSocial> getDataSocial(
      {required String codeLanguag}) async {
    return await _api.getSocial(language: codeLanguag);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<ModelControllerSocial>(
          future: getDataSocial(
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
            } else if (snapshot.hasData) {
              List<ModelSocial> _dataList = snapshot.data?.social ?? [];
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // *
                    mainAxisSpacing: 1.5, //* horizontal
                    crossAxisSpacing: 2 //* virtacal
                    ),
                itemCount: _dataList.length,
                itemBuilder: (context, index) {
                  ModelSocial _dataSocial = _dataList.elementAt(index);
                  return CardSocial(data: _dataSocial);
                },
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
