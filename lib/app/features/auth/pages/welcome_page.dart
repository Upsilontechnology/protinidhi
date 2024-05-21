import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/auth/widgets/language_bloc.dart';
import 'package:protinidhi/app/router/app_router.dart';

class WelcomPage extends GetView {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Scaffold(
      appBar: AppBar(
        actions: const [LanguageBloc()],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediaQuery.height * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: mediaQuery.height * 0.1,
            ),
            Center(
              child: Text(
                "WELCOME",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: scaleFactor * 40),
              ),
            ),
            Text(
              "GRAB YOUR ALL DAILY NEEDS ",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: scaleFactor * 13),
            ),
            SizedBox(height: mediaQuery.height * 0.1),
            InkWell(
              onTap: () => Get.toNamed(AppRoute.signInPage),
              child: Container(
                height: mediaQuery.height * 0.06,
                width: mediaQuery.width * 0.94,
                decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  "Log In",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                )),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.01),
            Container(
              height: mediaQuery.height * 0.06,
              width: mediaQuery.width * 0.94,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: InkWell(
                onTap: () => Get.toNamed(AppRoute.signUpPage),
                child: const Center(
                    child: Text(
                  "Create an Account",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("A"),
                    InkWell(
                      onTap: () {},
                      child: const Text(" Terms and Conditions",
                          style: TextStyle(
                              color: AppColors.blueColor, fontSize: 13.5)),
                    ),
                    const Text(" agreement acts as legal")
                  ],
                ),
                const Text(
                    "contracts between you who has the website or mobile",
                    style: TextStyle(fontSize: 13.5)),
                const Text(
                    "app, and the user who accesses your website or app.",
                    style: TextStyle(fontSize: 13.5)),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
