import 'package:booking_app/routes/app_pages.dart';
import 'package:booking_app/utils/constants.dart';
import 'package:booking_app/utils/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const double _iconSize = 150;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                onPressed: () =>Get.offNamed(Routes.LOGIN),
                child: Text(SPLASH_BUTTON_TEXT, style: buttonTextStyle),
              ),
            ))
      ],
    ));
  }
}
