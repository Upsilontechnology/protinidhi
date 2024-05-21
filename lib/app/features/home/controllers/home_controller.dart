import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isMenuClicked = false.obs;

  void toggleMenu() {
    isMenuClicked.value = !isMenuClicked.value;
  }
}
