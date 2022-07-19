

import 'package:booking_app/Services/api.dart';
import 'package:booking_app/modules/home/model/bus.dart';

class BusProvider {
  void getBusList({
    Function()? beforeSend,
    required Function(BusListResponse busList) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: '/BusListApi/4FYOCSD/', data: {}).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(BusListResponse.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
