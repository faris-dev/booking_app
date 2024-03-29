

import 'package:booking_app/Services/api.dart';
import 'package:booking_app/modules/home/model/bus.dart';

import '../../../utils/globals.dart';

class BusProvider {
  void getBusList({
    Function()? beforeSend,
    required Function(BusListResponse busList) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'BusListApi/$user_key/', data: {}).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(BusListResponse.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
