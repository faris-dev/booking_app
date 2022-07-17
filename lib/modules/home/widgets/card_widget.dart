import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  final Color color;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // radius of 10
            color: color,
          ),
          padding: const EdgeInsets.only(left: 12, top: 12),
          height: 180,
          width: 150,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  image,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
