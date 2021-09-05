import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Utils/path-icons.dart';
import 'package:fprovid_app/Helpers/Utils/path-url-page.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/alert-dialog.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/custom-til.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/header-drawer.dart';
import 'package:fprovid_app/Packages/Widgets/inner-page/inner-page.dart';

class ListDrawer extends StatelessWidget {
  const ListDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double _sw = MediaQuery.of(context).size.width;

    return
        // SafeArea(
        // child:
        Drawer(
      child: Column(
        children: [
          // * Header ********
          HeaderDrawer(),
          Column(
            children: [
              // * *** MyApp
              ListTileDrawer(
                icon: PathIcons.myApp,
                title: KeyLang.myApps,
                onPress: () {},
              ),
              // * *** Translate
              ListTileDrawer(
                icon: PathIcons.translate,
                title: KeyLang.language,
                onPress: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      // * AlertDialogDrawer
                      return AlertDialogDrawer();
                    },
                  );
                },
              ),
              // *  *** Theme
              ListTileDrawer(
                icon: PathIcons.theme,
                title: KeyLang.themes,
                iconTrailing: Icon(Icons.access_alarm),
                onPress: () {},
              ),
              // * *** Terms
              ListTileDrawer(
                icon: PathIcons.terms,
                title: KeyLang.terms,
                // ? **** OnPress = onTap in List ..
                onPress: () {
                  var route = MaterialPageRoute(
                    builder: (context) => InnerPage(
                      title: KeyLang.terms.tr(),
                      url: PathUrlPage.urlTerms,
                    ),
                  );
                  Navigator.push(context, route);
                },
              ),
            ],
          )
        ],
      ),
      // ),
    );
  }
}

// *  ? :
// * ?? 