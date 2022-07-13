import 'package:booking_app/ui/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../ui/home/home_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => SplashPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
