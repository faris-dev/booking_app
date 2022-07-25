import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../../utils/constants.dart';
import '../../widgets/count_widget.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import 'controller/driver_controller.dart';
import 'widgets/driver_list_tile.dart';

class DriverListPage extends GetView {
  DriverController driverController = Get.put(DriverController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DriverController>(
      assignId: true,
      builder: (_) {
        return Scaffold(
          appBar: const CustomAppbar(title: DRIVER_LIST_TITLE),
          body: Stack(
            children: [
              ListView(padding: const EdgeInsets.all(15), children: [
                CountWidget(count: driverController.driverCount),
                ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return DriverListTileWidget(driver:driverController.driverList[index]);
                    },
                    itemCount: driverController.driverCount),
                SizedBox(
                  height: 100,
                ),
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  title: ADD_DRIVER_BUTTON_TEXT,
                  onPressed: () => Get.toNamed(Routes.ADD_DRIVER),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
