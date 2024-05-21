import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/auth/controller/auth_controller.dart';
import 'package:protinidhi/app/features/auth/widgets/language_bloc.dart';
import 'package:protinidhi/app/router/app_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  void dispose() {
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
            icon: const Icon(
              Icons.arrow_back_sharp,
              size: 28,
              color: AppColors.primaryColor,
            )),
        actions: const [LanguageBloc()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mediaQuery.height * 0.15),
              Text(
                "Log In",
                style: TextStyle(fontSize: 32 * scaleFactor),
              ),
              SizedBox(height: Get.height * 0.02),
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
              SizedBox(height: Get.height * 0.02),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppColors.blueColor),
                        )),
                  )
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.06),
              Center(
                child: Container(
                  height: mediaQuery.height * 0.062,
                  width: mediaQuery.width * 0.95,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: InkWell(
                    onTap: () {
                      if (passController.text.isNotEmpty &&
                          numberController.text.isNotEmpty) {
                        Get.offNamedUntil(
                            AppRoute.initialRoute, ModalRoute.withName('/'));
                      } else {
                        Get.snackbar("Error", "Please Fill up all Field",
                            colorText: Colors.white,
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            snackStyle: SnackStyle.FLOATING,
                            maxWidth: mediaQuery.width * 0.9,
                            padding: const EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                                bottom: mediaQuery.height * 0.02));
                      }
                    },
                    child: Center(
                        child: Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15 * scaleFactor,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(fontSize: 13 * scaleFactor),
                  ),
                  InkWell(
                    onTap: () => Get.offAndToNamed(AppRoute.signUpPage),
                    child: Text(
                      "  Create An Account",
                      style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: 13 * scaleFactor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
