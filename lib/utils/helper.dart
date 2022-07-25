import 'dart:convert';

import 'package:booking_app/utils/secure_storage.dart';
import 'package:get/get.dart';
import '../modules/login/model/login_response.dart';
import 'constants.dart';
import 'globals.dart';

extension validateEmail on String {
  bool get isValidEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);
}

extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach => this.split(" ").map((str) => str.capitalize).join(" ");
}

updateUserToken(userToken) async {
  token = userToken;
  isLoggedIn = true;
  await SecureStorage.setStorage(key: USER_TOKEN_KEY, value: userToken);
}

updateUserKey(userKey) async {
  user_key = userKey;
  await SecureStorage.setStorage(key: USER_KEY, value: userKey);
}

getUserData() async {
  String? userToken = await SecureStorage.getStorage(USER_TOKEN_KEY);
  var userKey = await SecureStorage.getStorage(USER_KEY);
  if (!userToken.isEmpty) {
    token = userToken;
    user_key = userKey;
    isLoggedIn = true;
  }else{
    isLoggedIn = false;
  }
  return userToken != null ? userToken : "";
}
