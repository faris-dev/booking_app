import 'package:get/get.dart';

import '../model/drive_list_response.dart';
import '../provider/driver_provider.dart';

class DriverController extends GetxController {
  List<Driver> driverList = [];
  bool isLoading = true;
  var driverCount = 0;

  @override
  void onInit() {
    getDriverList();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    this.driverList.clear();
    this.isLoading = true;
    this.driverCount = 0;
  }

  Future<void> getDriverList() async {
    DriverProvider().getDriverList(
      onSuccess: (data) {
        this.driverList.addAll(data.driverList!);
        this.driverCount = data.driverList!.length;
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
  }

  Future<void> addDriver(name, phoneNumber, licenseNo) async {
    this.isLoading = true;
    update();
    DriverProvider().addDriver(
        data: {"name": name, "mobile": phoneNumber, "license_no": licenseNo},
        onSuccess: (data) {
          this.driverList.add(Driver(
              id: 0, name: name, mobile: phoneNumber, licenseNo: licenseNo));
          this.driverCount = this.driverList.length;
          this.isLoading = false;
          update();
          Get.back();
        },
        onError: (error) {
          print("Error");
        });
  }

  Future<void> deleteDriver(driverId) async {
    DriverProvider().deleteDriver(
        data: {"driver_id": driverId},
        onSuccess: (data) {
          this.driverList.removeWhere((element) => element.id == driverId);
          this.driverCount = this.driverList.length;
          update();
        },
        onError: (error) {
          print("Error");
        });
  }
}
