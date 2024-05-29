import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/pages/home_page.dart';
import 'package:protinidhi/app/features/order/pages/order_page.dart';
import 'package:protinidhi/app/features/root/root_controller.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // int initialIndex = 0;

  // void changePage({required int value}) {
  //   setState(() {
  //     initialIndex = value;
  //   });
  // }

  final controller = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return SafeArea(
        child: Obx(
      () => Scaffold(
        extendBody: true,
        body: [
          const HomePage(),
          const OrderPage(),
        ][controller.navIndex.value],
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          notchMargin: 4,
          height: mediaQuery.height * 0.082,
          shape: const CircularNotchedRectangle(),
          elevation: 20,
          shadowColor: Colors.black,
          surfaceTintColor: Colors.white,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0 * scaleFactor),
                child: InkWell(
                  onTap: () {
                    controller.changePage(0);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Octicons.home,
                        color: controller.navIndex.value == 0
                            ? AppColors.primaryColor
                            : const Color.fromARGB(148, 0, 0, 0),
                        size: 20 * scaleFactor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          "Home",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13 * scaleFactor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.0 * scaleFactor),
                child: InkWell(
                  onTap: () {
                    controller.changePage(1);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Feather.shopping_cart,
                        color: controller.navIndex.value == 1
                            ? AppColors.primaryColor
                            : const Color.fromARGB(148, 0, 0, 0),
                        size: 20 * scaleFactor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          "Order",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13 * scaleFactor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: keyboardIsOpened
            ? null
            : SizedBox(
                height: mediaQuery.height * 0.08,
                width: mediaQuery.width * 0.2,
                child: FloatingActionButton(
                    shape: const CircleBorder(),
                    backgroundColor: const Color(0xffF2F0F0),
                    child: const Icon(AntDesign.search1),
                    onPressed: () {}),
              ),
      ),
    ));
  }
}
