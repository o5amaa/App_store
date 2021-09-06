import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Helpers/Language/Config/config-lang.dart';
import 'Helpers/Theme/custom-theme.dart';
import 'Packages/Screens/Splash/page_splash.dart';
import 'Packages/Screens/Test/Controller/c_provider_test.dart';
import 'Routes/app-routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //? Acces to Engine
  await EasyLocalization.ensureInitialized(); //* Acces to Engine [Lang-Wifi]
  runApp(
    // ? chang theme
    EasyDynamicThemeWidget(
      // ? Laguage translit
      child: EasyLocalization(
        supportedLocales: [
          ConfigLanguage.AR_LOCALE,
          ConfigLanguage.EN_LOCALE,
        ],
        path: ConfigLanguage.LANG_PATH,
        fallbackLocale: ConfigLanguage.EN_LOCALE,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () {
        // ? Provider
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => CProviderTest(),
            )
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // ? Themes
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            // ! chang the them
            themeMode: EasyDynamicTheme.of(context).themeMode,
            // ? Laguage
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            // ? Routere Screen
            initialRoute: PageSplash.id,
            routes: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
