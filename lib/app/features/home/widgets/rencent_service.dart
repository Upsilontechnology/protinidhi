import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/pages/home_page.dart';
import 'package:protinidhi/app/features/home/widgets/service_icon.dart';

class RecentServiceList extends StatelessWidget {
  const RecentServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Padding(
      padding: EdgeInsets.all(8 * scaleFactor),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.7, color: Colors.grey),
            borderRadius: BorderRadius.circular(
              20 * scaleFactor,
            )),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: 2 * scaleFactor,
                  left: 10 * scaleFactor,
                  right: 10 * scaleFactor,
                  top: 8 * scaleFactor),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Used Services"),
                  InkWell(
                    child: Text(
                      "Show all",
                      style: TextStyle(
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            SizedBox(
              height: mediaQuery.height * 0.108,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: recentlyUsed.length,
                itemBuilder: (context, index) {
                  final recentlyUse = recentlyUsed[index];

                  return Padding(
                    padding: EdgeInsets.all(8.0 * scaleFactor)
                        .copyWith(left: 14 * scaleFactor),
                    child: ServiceIcon(
                      imageHeight: mediaQuery.height * 0.05,
                      assetPath: recentlyUse.assetPath,
                      serviceName: recentlyUse.serviceName,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//* mock data

final recentlyUsed = [
  ServiceIconModel(
    serviceName: "Government",
    assetPath: "assets/images/government.png",
  ),
  ServiceIconModel(
    serviceName: "Private",
    assetPath: "assets/images/private.png",
  ),
  ServiceIconModel(
    serviceName: "Shopping",
    assetPath: "assets/images/shopping.png",
  ),
  ServiceIconModel(
    serviceName: "Health",
    assetPath: "assets/images/health.png",
  ),
  ServiceIconModel(
    serviceName: "Grocery",
    assetPath: "assets/images/grocery.png",
  ),
];

class ServiceIconModel {
  final String serviceName;
  final String assetPath;

  ServiceIconModel({
    required this.serviceName,
    required this.assetPath,
  });

  ServiceIconModel copyWith({
    String? serviceName,
    String? assetPath,
  }) {
    return ServiceIconModel(
      serviceName: serviceName ?? this.serviceName,
      assetPath: assetPath ?? this.assetPath,
    );
  }

  @override
  bool operator ==(covariant ServiceIconModel other) {
    if (identical(this, other)) return true;

    return other.serviceName == serviceName && other.assetPath == assetPath;
  }

  @override
  int get hashCode => serviceName.hashCode ^ assetPath.hashCode;
}
