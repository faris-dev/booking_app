import 'package:flutter/material.dart';

import '../../../utils/theme/app_colors.dart';

class DriverListTileWidget extends StatelessWidget {
  const DriverListTileWidget({
    Key? key,
  }) : super(key: key);

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
            'assets/images/avatar.webp',
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
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
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            foregroundColor: MaterialStateProperty.all(kTextColorWhite),
          ),
          onPressed: () {},
          child: const Text(
            'Delete',
          ),
        ),
      ),
    );
  }
}
