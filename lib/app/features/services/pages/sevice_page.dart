import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/services/widgets/service_tile.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15 * scaleFactor)),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xffD71A21),
                  Color(0xff4A9363),
                ],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: mediaQuery.height * 0.25,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: mediaQuery.height * 0.05,
              ),
              Text(
                " Hi, Arman",
                style: TextStyle(
                    fontSize: 32 * scaleFactor,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "  We are here for your any need.",
                style: TextStyle(
                    fontSize: 14 * scaleFactor,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: mediaQuery.height * 0.02,
            ),
            const ServiceTile(
              name: "Gold / Diamond",
              path: 'assets/images/diamond.png',
            ),
            const ServiceTile(
              name: "Cloth Shopping",
              path: 'assets/images/shirt.png',
            ),
            const ServiceTile(
              name: "Electronic Items",
              path: 'assets/images/electronics.png',
            ),
            const ServiceTile(
              name: "Gift Items",
              path: 'assets/images/gift.png',
            ),
            const ServiceTile(
              name: "Cosmetics",
              path: 'assets/images/cosmetics.png',
            ),
            const ServiceTile(
              name: "Educational Item",
              path: 'assets/images/education.png',
            ),
            const ServiceTile(
              name: "Furniture Item",
              path: 'assets/images/furniture.png',
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
              child: Center(
                  child: InkWell(
                onTap: () {},
                child: Text(
                  "More Service",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primaryColor,
                      decorationThickness: 2,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 13 * scaleFactor),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
