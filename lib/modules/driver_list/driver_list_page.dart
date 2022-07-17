import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../utils/constants.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/app_text_theme.dart';
import '../../widgets/bus_count_widget.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import 'widgets/driver_list_tile.dart';

class DriverListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: DRIVER_LIST_TITLE),
      body: Stack(
        children: [
          ListView(padding: const EdgeInsets.all(15), children: [
            BusCountWidget(busCount: 21),
            DriverListTileWidget(),
            DriverListTileWidget(),
            DriverListTileWidget(),
            DriverListTileWidget(),
          ]),
          Align(
              alignment: Alignment.bottomCenter,
              child:CustomButton(
                title: ADD_DRIVER_BUTTON_TEXT,
                onPressed: () =>Get.offNamed(Routes.ADD_DRIVER),
              ),
          )
        ],
      ),
    );
  }
}
