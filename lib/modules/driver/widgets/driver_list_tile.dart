import 'package:booking_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants.dart';
import '../../../utils/theme/app_colors.dart';
import '../controller/driver_controller.dart';
import '../model/drive_list_response.dart';

class DriverListTileWidget extends StatelessWidget {
   DriverListTileWidget({
    Key? key,
    required this.driver,
  }) : super(key: key);

  final Driver driver;
  DriverController _driverController = Get.find<DriverController>();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(
            DRIVER_IMAGE2,
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
        title: Text(
          (driver.name??NO_NAME_TEXT).inCaps,
          style: TextStyle(
              color: kTextColorDark, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          driver.licenseNo??driver.mobile??NO_MOBILE_OR_LICENSE_TEXT,
          style: TextStyle(
              color: kTextColorDark, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        trailing: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            foregroundColor: MaterialStateProperty.all(kTextColorWhite),
          ),
          onPressed: ()=>_driverController.deleteDriver(driver.id),
          child: const Text(
            DELETE_TEXT,
          ),
        ),
      ),
    );
  }
}
