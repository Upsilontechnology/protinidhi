import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/auth/widgets/language_bloc.dart';
import 'package:protinidhi/app/router/app_router.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              size: 28 * scaleFactor,
              color: AppColors.primaryColor,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mediaQuery.height * 0.15),
              Center(
                  child: Text(
                "Please verify your account",
                style: TextStyle(
                    fontSize: 15 * scaleFactor, fontWeight: FontWeight.bold),
              )),
              SizedBox(height: mediaQuery.height * 0.07),
              Text(
                "  Enter OTP Here",
                style: TextStyle(fontSize: 16 * scaleFactor),
              ),
              SizedBox(height: mediaQuery.height * 0.015),
              Center(
                child: Pinput(
                  length: 5,
                  defaultPinTheme: PinTheme(
                    margin: const EdgeInsets.all(8),
                    padding: EdgeInsets.zero,
                    width: mediaQuery.width * 0.22,
                    height: mediaQuery.height * 0.06,
                    textStyle: TextStyle(
                        fontSize: 20 * scaleFactor,
                        color: const Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Didn't get OTP?"),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend Code",
                        style: TextStyle(color: AppColors.blueColor),
                      ))
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.027),
              Center(
                child: Container(
                  height: mediaQuery.height * 0.0615,
                  width: mediaQuery.width * 0.94,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: InkWell(
                    onTap: () {
                      Get.offAndToNamed(AppRoute.signInPage);
                      Get.snackbar(
                          "Success", "Please Login with your email & password",
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.green,
                          maxWidth: Get.width * 0.9,
                          margin: EdgeInsets.only(bottom: Get.height * 0.04),
                          colorText: Colors.white);
                    },
                    child: Center(
                        child: Text(
                      "Confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14 * scaleFactor,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.12),
              Center(
                child: SizedBox(
                  width: mediaQuery.width * 0.95,
                  child: Text(
                    "A 6 digit One Time Password (OTP) has been sent to your given mobile number which will expire in 00:59 minutes, After which you will need to resend the code.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13 * scaleFactor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
