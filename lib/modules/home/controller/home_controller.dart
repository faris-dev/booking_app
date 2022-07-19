import 'package:get/get.dart';

import '../model/bus.dart';
import '../provider/bus_provider.dart';

class HomeController extends GetxController {
  List<Bus> busList = [];
  bool isLoading = true;
  var busCount = 0;

  @override
  void onInit() {
    BusProvider().getBusList(
      onSuccess: (data) {
        this.busList.addAll(data.busList!);
        this.busCount = data.busList!.length;
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }
}
