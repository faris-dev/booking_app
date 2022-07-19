import 'package:booking_app/modules/bus/widgets/bus_seats.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';
import 'widgets/driver_widget.dart';

class BusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Swift Scania P-series',
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          DriverWidget(name: 'Rohit Sharma',licenseNo: '12345678',),
          BusSeats()
        ],
      ),
    );
  }
}

