import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/root/root_controller.dart';

class SuccessCard extends StatelessWidget {
  const SuccessCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RootController());
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 15.0 * scaleFactor, vertical: 8.0 * scaleFactor),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 15 * scaleFactor, vertical: 25 * scaleFactor),
            decoration: const BoxDecoration(color: Color(0xffF6F6F6)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xff0066CC),
                      radius: 10 * scaleFactor,
                      child: Icon(
                        Icons.done,
                        size: 14 * scaleFactor,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Hi! Arman",
                        style: TextStyle(
                            fontSize: 20 * scaleFactor,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
                Text(
                  "Your Order Successfully Placed.",
                  style: TextStyle(
                      fontSize: 20 * scaleFactor, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Your Order Number : #894 445 857 576",
                  style: TextStyle(
                      fontSize: 12 * scaleFactor, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.02,
          ),
          Center(
            child: Container(
              height: mediaQuery.height * 0.06,
              width: mediaQuery.width * 0.94,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: InkWell(
                onTap: () {
                  Get.close(2);

                  controller.changePage(1);
                },
                child: Center(
                  child: Text(
                    "Check your order",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14 * scaleFactor,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
