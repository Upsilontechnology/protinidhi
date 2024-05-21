import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/router/app_router.dart';

class ServiceIcon extends StatelessWidget {
  final String assetPath;
  final double imageHeight;

  final String serviceName;
  const ServiceIcon(
      {super.key,
      required this.assetPath,
      required this.serviceName,
      required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoute.servicePage),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: SizedBox(height: imageHeight, child: Image.asset(assetPath)),
          ),
          Text(
            serviceName,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 11 * scaleFactor),
          ),
        ],
      ),
    );
  }
}
