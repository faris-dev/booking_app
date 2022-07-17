import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../../utils/theme/app_colors.dart';
import '../../widgets/bus_count_widget.dart';
import 'widgets/appbar_home.dart';
import 'widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBarHome(),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardWidget(
                image: 'assets/images/bus.png',
                title: 'Bus',
                subTitle: 'Manage your Bus',
                color: kPrimaryColor,
                onTap: () => Get.toNamed(Routes.BUS),
              ),
              CardWidget(
                image: 'assets/images/driver.png',
                title: 'Driver',
                subTitle: 'Manage your Driver',
                color: kSecondaryColor,
                onTap: () => Get.toNamed(Routes.DRIVER_LIST),
              )
            ],
          ),
          SizedBox(height: 10),
          BusCountWidget(busCount: 21),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
          BusTileWidget(),
        ],
      ),
    );
  }
}


class BusTileWidget extends StatelessWidget {
  const BusTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        minVerticalPadding: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        leading: Image.asset(
          'assets/images/bus.png',
        ),
        title: Text(
          'KSRTC',
          style: TextStyle(
              color: kTextColorDark, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          'Swift Scania P-series',
          style: TextStyle(
              color: kTextColorDark, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Manage',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
