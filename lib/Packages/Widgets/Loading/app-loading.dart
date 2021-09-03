import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  AppLoading({
    Key? key,
    required ChooseLoading chooseLoading,
    required double size,
    // required Color color,
  })  : _chooseLoading = chooseLoading,
        _size = size;
  // _color = color;

  final ChooseLoading _chooseLoading;
  final double _size;
  // final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
