import 'package:flutter/material.dart';

import '../utils/theme/app_colors.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    Key? key,
    required this.count
  }) : super(key: key);
  final int count;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$count Buses Found',
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: kTextColorGrey),
    );
  }
}
