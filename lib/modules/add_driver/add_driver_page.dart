import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';

class AddDriverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Add Driver',
      ),
      body: Stack(
        children: [
          Column(
            children: [
              CustomTextField(
                title: 'Enter Name',
              ),
              CustomTextField(
                title: 'Enter License Number',
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomButton(
              title: SAVE_TEXT,
              onPressed: () {},
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
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextField(
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