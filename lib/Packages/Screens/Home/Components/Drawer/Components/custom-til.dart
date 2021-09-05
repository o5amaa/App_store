import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';

class ListTileDrawer extends StatelessWidget {
  const ListTileDrawer({
    required String icon,
    required String title,
    Icon? iconTrailing,
    required Function() onPress,
  })  : _icon = icon,
        _iconTrailing = iconTrailing,
        _title = title,
        _onPress = onPress;

  final String _icon, _title;
  final Icon? _iconTrailing;
  final Function() _onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(_icon, width: 25.w),
      title: Text(_title.tr()),
      trailing: _iconTrailing ?? Container(width: 5),
      onTap: _onPress,
    );
  }
}
