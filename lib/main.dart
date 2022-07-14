import 'package:booking_app/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      // locale: Locale('pt', 'BR'),
      // translationsKeys: AppTranslation.translations,
    ),
  );
}
