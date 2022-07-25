import 'package:booking_app/modules/driver/controller/driver_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/theme/app_colors.dart';
import '../utils/theme/app_text_theme.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;
  DriverController _driverController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 55,
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(kColorWhite),
          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () => onPressed(),
        child:  _driverController.isLoading
            ? CircularProgressIndicator(
          color: kColorWhite,
        )
            : Text(title, style: buttonTextStyle),
      ),
    );
  }
}