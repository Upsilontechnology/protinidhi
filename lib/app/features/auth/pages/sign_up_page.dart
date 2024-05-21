import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/auth/controller/auth_controller.dart';
import 'package:protinidhi/app/features/auth/widgets/language_bloc.dart';
import 'package:protinidhi/app/router/app_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    final controller = Get.put(AuthController());
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
        actions: const [
          LanguageBloc(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mediaQuery.height * 0.05,
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: mediaQuery.width * 0.085),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: mediaQuery.width * 0.45,
                    child: TextField(
                      controller: firstNameController,
                      cursorColor: AppColors.primaryColor,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "First Name",
                          filled: true,
                          fillColor: AppColors.greyColor),
                    ),
                  ),
                  SizedBox(
                    width: mediaQuery.width * 0.45,
                    child: TextField(
                      controller: lastNameController,
                      cursorColor: AppColors.primaryColor,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Last Name",
                          filled: true,
                          fillColor: AppColors.greyColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.023),
              SizedBox(
                width: Get.width,
                child: TextField(
                  controller: emailController,
                  cursorColor: AppColors.primaryColor,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email ",
                      filled: true,
                      fillColor: AppColors.greyColor),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.023),
              Obx(
                () => SizedBox(
                  width: Get.width,
                  child: TextField(
                    controller: passController,
                    cursorColor: AppColors.primaryColor,
                    obscureText: !controller.isPassVisible.value,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password ",
                        suffixIcon: IconButton(
                            onPressed: () {
                              controller.togglePassVisibility();
                            },
                            icon: controller.isPassVisible.value == true
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                        filled: true,
                        fillColor: AppColors.greyColor),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.023),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                cursorColor: AppColors.primaryColor,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone Number ",
                    filled: true,
                    fillColor: AppColors.greyColor),
              ),
              SizedBox(height: mediaQuery.height * 0.023),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Transform.scale(
                      scale: 1.2,
                      child: SizedBox(
                        height: mediaQuery.height * 0.026,
                        width: mediaQuery.width * 0.06,
                        child: Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: controller.isCheckBoxChecked.value,
                          onChanged: (value) {
                            controller.checkTOSBox(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mediaQuery.width * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "I agree to",
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(" Terms and Conditions",
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontSize: 12 * scaleFactor)),
                      ),
                      const Text(
                        " of Protinidhi Inc.",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.046),
              Center(
                child: Container(
                  height: mediaQuery.height * 0.06,
                  width: mediaQuery.width * 0.94,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoute.otpPage);
                      if (firstNameController.text.isNotEmpty &&
                          lastNameController.text.isNotEmpty &&
                          emailController.text.isNotEmpty &&
                          passController.text.isNotEmpty &&
                          numberController.text.isNotEmpty) {
                        if (controller.isCheckBoxChecked.value != false) {
                        } else {
                          Get.snackbar(
                              "Error", "Please Check Terms & Conditions",
                              colorText: Colors.white,
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red,
                              snackStyle: SnackStyle.FLOATING,
                              maxWidth: Get.width * 0.9,
                              margin: const EdgeInsets.only(bottom: 20));
                        }
                      } else {
                        Get.snackbar("Error", "Please Fill up all Field",
                            colorText: Colors.white,
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            snackStyle: SnackStyle.FLOATING,
                            maxWidth: Get.width * 0.9,
                            margin: const EdgeInsets.only(bottom: 20));
                      }
                    },
                    child: Center(
                        child: Text(
                      "Proceed",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15 * scaleFactor,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.056),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 15.5 * scaleFactor),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAndToNamed(AppRoute.signInPage);
                    },
                    child: Text(" Log In",
                        style: TextStyle(
                            color: AppColors.blueColor,
                            fontSize: 15.5 * scaleFactor)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
