import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/theme/app_colors.dart';
import 'controller/login_controller.dart';
import 'widgets/custom_login_app_bar.dart';
import 'widgets/login_form.dart';

class LoginPage extends GetView {
  LoginController _loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(),
      body: GetBuilder<LoginController>(builder: (_) {
        return ListView(
            padding: EdgeInsets.all(15), shrinkWrap: true, children: [
          SizedBox(height: 30),
          LoginForm(
              formKey: _formKey,
              usernameController: usernameController,
              passwordController: passwordController,
              controller: _loginController),

        ]);
      }),
    );
  }
}
