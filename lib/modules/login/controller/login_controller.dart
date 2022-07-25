import 'package:booking_app/utils/helper.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../provider/login_provider.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();
  var isLoading = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<String> login(
      {required String username, required String password}) async {
    var error = "";
    this.isLoading = true;
    update();
    try {
      LoginProvider().login(
        data: {
          "username": username,
          "password": password,
        },
        onSuccess: (data) {
          updateUserToken(data.access);
          updateUserKey(data.urlId);
          this.isLoading = false;
          update();
          Get.toNamed(Routes.HOME);
        },
        onError: (error) {
          this.isLoading = false;
          update();
          print("Error ${error}");
        },
      );
    } finally {
      this.isLoading = false;
      update();
    }
    return error;
  }
}
