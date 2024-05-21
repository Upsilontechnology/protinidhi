// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/controllers/home_controller.dart';
import 'package:protinidhi/app/features/home/widgets/additional_list.dart';
import 'package:protinidhi/app/features/home/widgets/for_you_list.dart';
import 'package:protinidhi/app/features/home/widgets/offer_list.dart';
import 'package:protinidhi/app/features/home/widgets/rencent_service.dart';
import 'package:protinidhi/app/features/home/widgets/search_serve.dart';
import 'package:protinidhi/app/features/home/widgets/service_icon.dart';
import 'package:protinidhi/app/features/home/widgets/services_list.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        appBar: PreferredSize(
            preferredSize: Size(0, mediaQuery.height * 0.06),
            child: Obx(
              () => AppBar(
                backgroundColor: AppColors.primaryColor,
                centerTitle: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                  bottom: controller.isMenuClicked.value
                      ? Radius.zero
                      : Radius.circular(10 * scaleFactor),
                )),
                title: Padding(
                  padding: EdgeInsets.only(top: 8.0 * scaleFactor),
                  child: Image.asset(
                    "assets/images/protinidhi.png",
                    height: mediaQuery.height * 0.15,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      controller.toggleMenu();
                    },
                    icon: Image.asset(
                      "assets/images/menu.png",
                      height: mediaQuery.height * 0.025,
                    ),
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => controller.isMenuClicked.value
                    ? const SearchService()
                    : Column(
                        children: [
                          const ServicesList(),
                          SizedBox(height: mediaQuery.height * 0.01),
                          const RecentServiceList(),
                        ],
                      ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Image.asset(
                "assets/images/banner_1.png",
                width: mediaQuery.width * 0.95,
                fit: BoxFit.cover,
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              const OfferList(),
              SizedBox(height: mediaQuery.height * 0.01),
              const ForYouList(),
              SizedBox(height: mediaQuery.height * 0.01),
              const AdditionalListList(),
              SizedBox(height: mediaQuery.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
