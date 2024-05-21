import 'package:get/get.dart';
import 'package:protinidhi/app/features/auth/binding/home_binding.dart';
import 'package:protinidhi/app/features/auth/pages/otp_page.dart';
import 'package:protinidhi/app/features/auth/pages/sign_in_page.dart';
import 'package:protinidhi/app/features/auth/pages/sign_up_page.dart';
import 'package:protinidhi/app/features/auth/pages/welcome_page.dart';
import 'package:protinidhi/app/features/home/binding/home_binding.dart';
import 'package:protinidhi/app/features/home/pages/home_page.dart';
import 'package:protinidhi/app/features/root/root_page.dart';
import 'package:protinidhi/app/features/services/pages/direct_order_page.dart';
import 'package:protinidhi/app/features/services/pages/sevice_page.dart';

class AppRoute {
  static String initialRoute = '/';
  static String welcomePage = '/welcome';
  static String signUpPage = '/signUp';
  static String signInPage = '/signIn';
  static String otpPage = '/OTP';
  static String servicePage = '/service';
  static String directOrderPage = '/directOrder';

  static final routes = [
    GetPage(
      name: initialRoute,
      page: () => const RootPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: welcomePage,
      page: () => const WelcomPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: signUpPage,
      page: () => const SignupPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: signInPage,
      page: () => const SignInPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: otpPage,
      page: () => const OTPPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: servicePage,
      page: () => const ServicePage(),
    ),
    GetPage(
      name: directOrderPage,
      page: () => const DirectOrderPage(),
    ),
  ];
}
