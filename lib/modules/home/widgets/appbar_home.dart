
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/theme/app_colors.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(SPLASH_LOGO, height: 40),
      centerTitle: true,
      backgroundColor: kAppBarColorDark,
      toolbarHeight: preferredSize.height,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(120);

}