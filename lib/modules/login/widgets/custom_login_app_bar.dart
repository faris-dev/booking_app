//custom app bar
import 'package:booking_app/utils/constants.dart';
import 'package:booking_app/utils/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(250);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.only(left: 20, bottom: 50),
      // color: appBarColor,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(LOGIN_APPBAR_LOGO),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(WELCOME_TEXT, style: titleTextStyle),
          Text(MANAGE_BUS_TEXT, style: subTitleTextStyle),
        ],
      ),
    );
  }
}
