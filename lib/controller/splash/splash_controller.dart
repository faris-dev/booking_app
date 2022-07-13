import 'package:booking_app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SplashController extends GetxController {

  // final _postsList = List<MyModel>().obs;
  // get postList => this._postsList.value;
  // set postList(value) => this._postsList.value = value;
  // final _post = MyModel().obs;
  // get post => this._post.value;
  // set post(value) => this._post.value = value;
  //

  // getAll(){
  //   repository.getAll().then( (data){ this.postList = data; } );
  // }

  navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.HOME);
    });
  }

}