import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/home/home_page.dart';
import '../modules/login/login_page.dart';
import '../modules/splash/splash_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => SplashPage()),
    GetPage(
        name: Routes.LOGIN,
        page: () => LoginPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
