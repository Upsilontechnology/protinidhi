import 'package:get/get.dart';
import 'package:protinidhi/app/features/auth/controller/auth_controller.dart';
import 'package:protinidhi/app/features/home/controllers/home_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
