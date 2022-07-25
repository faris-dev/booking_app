
import 'package:booking_app/Services/api.dart';
import '../../../utils/globals.dart';
import '../model/drive_list_response.dart';

class DriverProvider {

  void getDriverList({
    Function()? beforeSend,
    required Function(DriverListResponse driverList) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'DriverApi/$user_key/', data: {}).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(DriverListResponse.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }

  void addDriver({
    var data,
    Function()? beforeSend,
    required Function(DriverListResponse driverList) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'DriverApi/$user_key/', data: data).post(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(DriverListResponse.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }

  void deleteDriver({
    var data,
    Function()? beforeSend,
    required Function(DriverListResponse driverList) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'DriverApi/$user_key/', data: data).delete(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(DriverListResponse.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
