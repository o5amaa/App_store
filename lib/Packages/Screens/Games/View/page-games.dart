import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Screens/Games/Components/cadr-game.dart';

class PageGames extends StatelessWidget {
  const PageGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CardGame(),
      ),
    );
  }
}
