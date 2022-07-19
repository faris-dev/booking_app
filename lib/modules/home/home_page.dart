import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../../utils/constants.dart';
import '../../utils/globals.dart';
import '../../utils/theme/app_colors.dart';
import '../../widgets/bus_count_widget.dart';
import 'controller/home_controller.dart';
import 'model/bus.dart';
import 'widgets/appbar_home.dart';
import 'widgets/card_widget.dart';

class HomePage extends GetView {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (homeController) => Scaffold(
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
                        image: BUS_IMAGE,
                        title: BUS_TEXT,
                        subTitle: BUS_SUB_TEXT,
                        color: kPrimaryColor,
                        onTap: () => Get.toNamed(Routes.BUS),
                      ),
                      CardWidget(
                        image: DRIVER_IMAGE,
                        title: DRIVER_TEXT,
                        subTitle: DRIVER_SUB_TEXT,
                        color: kSecondaryColor,
                        onTap: () => Get.toNamed(Routes.DRIVER_LIST),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  BusCountWidget(
                    busCount: homeController.busCount,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(15),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: homeController.busCount,
                    itemBuilder: (context, index) => BusTileWidget(
                      bus: homeController.busList[index],
                    ),
                  ),
                ],
              ),
            ));
  }
}

class BusTileWidget extends StatelessWidget {
  final Bus bus;

  const BusTileWidget({Key? key, required this.bus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        minVerticalPadding: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        leading:
        buildCachedNetworkImage(IMAGE_URL + bus.image),
        title: Text(
          bus.name,
          style: TextStyle(
              color: kTextColorDark, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          BUS_SUBTITLE,
          style: TextStyle(
              color: kTextColorDark, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text(
            MANAGE_TEXT,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  buildCachedNetworkImage(String url) {
    return CachedNetworkImage(
        imageUrl: url,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
      );
  }
}
