import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Utils/path-icons.dart';
import 'package:fprovid_app/Helpers/Utils/path-url-page.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/alert-dialog.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/Components/custom-til.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/header-drawer.dart';
import 'package:fprovid_app/Packages/Screens/My-App/View/page-my-app.dart';
import 'package:fprovid_app/Packages/Widgets/inner-page/inner-page.dart';
import 'package:fprovid_app/services/state-theme.dart';

class ListDrawer extends StatefulWidget {
  const ListDrawer({Key? key}) : super(key: key);

  @override
  _ListDrawerState createState() => _ListDrawerState();
}

class _ListDrawerState extends State<ListDrawer> {
  String _themeText = KeyLang.auto;
  @override
  Widget build(BuildContext context) {
    // double _sw = MediaQuery.of(context).size.width;
    _themeText = StateTheme.checkStateTheme(context);
    return
        // SafeArea(
        // child:
        Drawer(
      child: SingleChildScrollView(
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
                  onPress: () {
                    Navigator.pushNamed(context, PageMyApp.id);
                  },
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
                        // * AlertDialogDrawer ******
                        return AlertDialogDrawer();
                      },
                    );
                  },
                ),

                // *  *** Theme
                ListTileDrawer(
                  icon: PathIcons.theme,
                  // ? in list on drawer ..
                  title: _themeText,
                  iconTrailing: EasyDynamicThemeBtn(),
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
      ),
      // ),
    );
  }
}

// *  ? :
// * ??
