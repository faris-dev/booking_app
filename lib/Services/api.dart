import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../utils/globals.dart';

class ApiRequest {
  final String url;
  final Map<String, dynamic>? data;

  ApiRequest({
    required this.url,
    this.data: const {},
  });

  Dio _dio() {
    return Dio(
      BaseOptions(
        headers: isLoggedIn
            ? {
                "Authorization": "Bearer ${token}",
              }
            : {},
        baseUrl: BASE_URL,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
  }

  // Dio addInterceptors(Dio dio) {
  //   return dio
  //     ..interceptors.add(InterceptorsWrapper(
  //       onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
  //     return handler.next(options);
  //   },
  //       onResponse: (Response response, RequestInterceptorHandler handler) {
  //   return handler.next(options);
  //
  //   },
  //       onError: (DioError error, ErrorInterceptorHandler handler) async {
  //         if (error.type == DioErrorType.connectTimeout ||
  //             error.type == DioErrorType.other) {
  //           return handler.next(error);
  //         }
  //
  //         switch (error.response!.statusCode) {
  //           case 402:
  //             // return handler.next(error);
  //           case 401:
  //             // throw UnauthorisedException(error.response!.data.toString());
  //           // case 403:
  //           //   throw UnauthorisedException(error.response!.data.toString());
  //           case 500:
  //             throw FetchDataException(error.response!.data.toString());
  //           default:
  //             throw FetchDataException(
  //                 'Error occured while Communication with Server with StatusCode : ${error.response!.statusCode}');
  //         }
  //       },
  //     ));
  // }


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

  void post({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().post(this.url, data: this.data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

  void delete({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().delete(this.url, data: this.data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
