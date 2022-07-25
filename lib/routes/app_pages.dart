import 'package:booking_app/modules/driver/driver_list_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/bus/bus_page.dart';
import '../modules/driver/add_driver_page.dart';
import '../modules/home/home_page.dart';
import '../modules/login/login_page.dart';
import '../modules/splash/splash_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => SplashPage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.DRIVER_LIST, page: () => DriverListPage()),
    GetPage(name: Routes.ADD_DRIVER, page: () => AddDriverPage()),
    GetPage(name: Routes.BUS, page: () => BusPage()),
  ];
}
