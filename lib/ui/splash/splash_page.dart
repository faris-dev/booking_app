import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetX<SplashController>(
      initState: (state) {
        Get.find<SplashController>().navigateToHome();
      },
      builder: (_) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
