import 'package:booking_app/utils/constants.dart';
import 'package:booking_app/utils/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.onLoginPressed,
  }) : super(key: key);

  final Function onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 55,
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () => onLoginPressed(),
        child: Text(LOGIN_TEXT, style: buttonTextStyle),
      ),
    );
  }
}
