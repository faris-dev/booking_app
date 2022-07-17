
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/theme/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: kTextColorWhite,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      backgroundColor: kAppBarColorDark,
      toolbarHeight: preferredSize.height,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(120);

}