import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Screens/Social/Components/card-social.dart';

class PageSocial extends StatelessWidget {
  const PageSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CardSocial(),
      ),
    );
  }
}
