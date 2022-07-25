import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import 'controller/driver_controller.dart';

class AddDriverPage extends GetView {
  DriverController _driverController = Get.find();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _licenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: ADD_DRIVER,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              CustomTextField(
                title: ENTER_NAME,
                controller: _nameController,
              ),CustomTextField(
                title: ENTER_PHONE,
                controller: _phoneController,
              ),
              CustomTextField(
                title: ENTER_LICENSE_TEXT,
                controller: _licenseController,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomButton(
              title: SAVE_TEXT,
              onPressed: ()=>_driverController.addDriver(_nameController.text,_phoneController.text,_licenseController.text),
            ),
          ),
        ],
      ),
    );
  }
}




class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}