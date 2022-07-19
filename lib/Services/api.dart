import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../utils/globals.dart';

class ApiRequest {
  final String url;
  final Map<String, dynamic>? data;

  var token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjU4Mjk2MTIyLCJpYXQiOjE2NTgyMDk3MjIsImp0aSI6ImM5YjQxMWJjYjAyNjQyMjRhYzcyZGEyYjFlMWJhMjA3IiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiI0RllPQ1NEIn0.7M_xBX_itOuOKSJpPbzSeKSgzeZAefaHasb0kRmPPW4';

  ApiRequest({
    required this.url,
    this.data: const {},
  });

  Dio _dio() {
    // Put your authorization token here
    return Dio(
      BaseOptions(
        headers: {
          'Authorization': 'Bearer $token',
        },
        baseUrl: BASE_URL,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
  }

  void get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().get(this.url, queryParameters: this.data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
