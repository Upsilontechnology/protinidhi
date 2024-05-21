import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isPassVisible = false.obs;
  RxBool isCheckBoxChecked = false.obs;

  void togglePassVisibility() {
    isPassVisible.value = !isPassVisible.value;
  }

  void checkTOSBox(bool value) {
    isCheckBoxChecked.value = value;
  }
}
