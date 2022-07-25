

import 'package:booking_app/Services/api.dart';
import 'package:booking_app/modules/home/model/bus.dart';

import '../model/login_response.dart';


class LoginProvider {
  void login({
    var data,
    Function()? beforeSend,
    required Function(LoginResponse response) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'LoginApi', data: data).post(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(LoginResponse.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
