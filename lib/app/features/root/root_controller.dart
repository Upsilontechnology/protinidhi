import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class RootController extends GetxController {
  RxInt navIndex = 0.obs;

  void changePage(int index) {
    navIndex.value = index;
  }
}
