import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
// import 'package:provider/provider.dart';

// import 'Controller/c_provider_test.dart';

class PageTest extends StatelessWidget {
  static const String id = 'PageTest';
  @override
  Widget build(BuildContext context) {
    // final bloc = Provider.of<CProviderTest>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('$id'),
        actions: [
          Icon(Icons.access_alarms),
          Text(
            KeyLang.appName.tr(),
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: AppColors.myBlue),
          )
        ],
      ),
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'Cont =>  ${bloc.cnt}',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              KeyLang.appName.tr(),
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(KeyLang.selectLang),
            )
          ],
        ),
      ),
      // floatingActionButton: Padding(
      //   padding: EdgeInsets.all(5),
      //   child: FloatingActionButton.extended(
      //     label: Text('Clik a Cont ..'),
      //     onPressed: () {
      //       bloc.incCnt('osama');
      //       // print(bloc.list.length);
      //     },
      //     // hoverColor: hoverColor,
      //     // backgroundColor: backgroundColor,
      //     tooltip: 'Cont',
      //     icon: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}
