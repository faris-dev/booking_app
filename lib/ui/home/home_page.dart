import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/splash/splash_controller.dart';


class HomePage extends GetView<SplashController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // child: GetX<SplashController>(
        //     initState: (state) { Get.find<SplashController>().getAll() ;},
        //     builder: (_) {
        //       return
        //         _.postList.length < 1
        //             ? LoadingWidget()
        //             :
        //         ListView.builder(
        //           itemBuilder: (context, index) {
        //             return ListTile(
        //               title: Text(_.postList[index].title ?? 'a'),
        //               subtitle: Text(_.postList[index].body ?? 'b'),
        //               onTap: ()=> _.details(_.postList[index]),
        //             );
        //           },
        //           itemCount: _.postList.length,
        //         );
        //     }),
      ),
    );
  }
}
