import 'package:flutter/material.dart';

import '../utils/theme/app_colors.dart';

class BusCountWidget extends StatelessWidget {
  const BusCountWidget({
    Key? key,
    required this.busCount
  }) : super(key: key);
  final int busCount;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$busCount Buses Found',
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: kTextColorGrey),
    );
  }
}
