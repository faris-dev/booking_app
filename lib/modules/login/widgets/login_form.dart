import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/app_text_theme.dart';
import '../controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.usernameController,
    required this.passwordController,
    required this.controller,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
          child: Container(
            height: Get.height,
            child: Column(children: [
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: USERNAME_TEXT,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) =>
                    value!.trim().isEmpty ? USERNAME_ERROR_TEXT : null,
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: PASSWORD_TEXT,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                controller: passwordController,
                validator: (String? value) =>
                    value!.trim().isEmpty ? PASSWORD_ERROR_TEXT : null,
              ),
              SizedBox(height: 32),
              Container(
                width: Get.width,
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kColorWhite),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      controller.login(
                          username: usernameController.text,
                          password: passwordController.text);
                    }
                  },
                  child: controller.isLoading
                      ? CircularProgressIndicator(
                          color: kColorWhite,
                        )
                      : Text(LOGIN_TEXT, style: buttonTextStyle),
                ),
              ),
            ]),
          ),
        ));
  }
}
