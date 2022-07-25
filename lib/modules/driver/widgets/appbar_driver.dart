
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/theme/app_colors.dart';

class appBarHome extends StatelessWidget implements PreferredSizeWidget {
  const appBarHome({
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