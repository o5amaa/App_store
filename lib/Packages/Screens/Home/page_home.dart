import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
// import 'package:fprovid_app/Helpers/Language/Config/config-lang.dart';
// import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
// import 'package:fprovid_app/Helpers/Theme/app_colors.dart';

class PageHome extends StatelessWidget {
  static const String id = 'PageHome';
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          KeyLang.appName.tr(),
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          CachedNetworkImage(
            // imageUrl: "http://via.placeholder.com/350x150",
            imageUrl: PathImages.picNet,
            imageBuilder: (context, imageProvider) {
              return CircleAvatar(
                backgroundImage: imageProvider,
                radius: 23.r,
              );
            },
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: CachedNetworkImage(
                // imageUrl: "http://via.placeholder.com/350x150",
                imageUrl: PathImages.picNet,
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                    radius: 50.r,
                  );
                },
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text(
              KeyLang.nameUser.tr(),
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Page ..',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: AppColors.myWhite),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                KeyLang.click.tr(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
