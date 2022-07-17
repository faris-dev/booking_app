import 'package:booking_app/routes/app_pages.dart';
import 'package:booking_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/custom_login_app_bar.dart';
import 'widgets/login_button.dart';
import 'widgets/login_text_field.dart';

class LoginPage extends GetView {
  Function onLoginPressed = () => Get.offNamed(Routes.HOME);

  @override
  Widget build(BuildContext context) {
    var title = 'Login';
    return Scaffold(
      appBar: LoginAppBar(),
      body: ListView(children: [
        SizedBox(height: 30),
        LoginTextField(title: USERNAME_TEXT),
        LoginTextField(title: PASSWORD_TEXT),
        SizedBox(height: 50),
        LoginButton(onLoginPressed: onLoginPressed),
      ]),
    );
  }
}

