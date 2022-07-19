import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../utils/theme/app_colors.dart';

class BusSeats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(60),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: buildBusLayoutWidget(type:2),
    );
  }

  buildBusLayoutWidget({int type:1}) {
    return Column(
      children: [
        SizedBox(height: 20),
        buildSeatIcon(1,isSelected: true),
        SizedBox(height: 10),
        Column(
          children: List.generate(
            10,
            (index) => Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildSeatIcon(type==1?1:2),
                SizedBox(width: 50),
                buildSeatIcon(type==1?3:2),
              ],
            ),
          ),
        ),
      ],
    );
  }

  buildSeatIcon(int count,{bool isSelected = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(
        count,
        (index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            SEAT_ICON,
            color: isSelected ? kSecondaryColor:null,
          ),
        ),
      ),
    );
  }
}
