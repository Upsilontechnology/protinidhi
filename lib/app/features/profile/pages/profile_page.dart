import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/router/app_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, mediaQuery.height * 0.07),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10 * scaleFactor),
          )),
          leading: GestureDetector(
              onTap: () {}, child: Image.asset("assets/images/profile.png")),
          title: Padding(
            padding: EdgeInsets.only(top: 8.0 * scaleFactor),
            child: Image.asset(
              "assets/images/protinidhi.png",
              height: mediaQuery.height * 0.15,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/menu.png",
                height: mediaQuery.height * 0.025,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            ListTile(
              onTap: () => Get.toNamed(AppRoute.editProfilePage),
              leading: Image.asset(
                "assets/images/person.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/notifications.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/history.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "History",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/invite.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Invite a friend",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/prize.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Rewards Point",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/coupon.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Coupon",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/info.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Legal",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offNamedUntil(
                    AppRoute.signInPage, ModalRoute.withName('/signIn'));
              },
              leading: Image.asset(
                "assets/images/logout.png",
                width: 23,
                height: 23,
              ),
              title: const Text(
                "Log out",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Divider(
                height: 0,
                indent: 60,
                endIndent: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
