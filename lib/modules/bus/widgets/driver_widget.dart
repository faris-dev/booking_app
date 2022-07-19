import 'package:flutter/material.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/app_text_theme.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({
    required this.name,
    required this.licenseNo,
    Key? key,
  }) : super(key: key);
  final String name ;
  final String licenseNo ;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: kSecondaryColor,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // radius of 10
          ),
          height: 130,
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: titleTextStyle),
                  Text('License no: $licenseNo', style: subTitleTextStyle),
                ],
              ),
              Positioned(
                bottom: -15,
                right: 0,
                child: Image.asset(
                  'assets/images/driver.png',
                  height: 150,
                  width: 100,
                ),
              ),
            ],
          ),
        ));
  }
}
