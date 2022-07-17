import 'package:booking_app/routes/app_pages.dart';
import 'package:booking_app/utils/constants.dart';
import 'package:booking_app/utils/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const double _iconSize = 200;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
        body: Stack(
      children: [
        Center(
          child: Image.asset(
            SPLASH_LOGO,
            width: _iconSize,
            height: _iconSize,
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: Get.width,
              height: 58,
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kTextColorWhite),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                onPressed: () =>Get.offNamed(Routes.LOGIN),
                child: Text(SPLASH_BUTTON_TEXT, style: buttonSplashTextStyle),
              ),
            ))
      ],
    ));
  }
}
