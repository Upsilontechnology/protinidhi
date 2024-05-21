import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/widgets/service_icon.dart';

class ForYouList extends StatelessWidget {
  const ForYouList({super.key});

  @override
  Widget build(BuildContext context) {
    //* mock data

    final forYOu = [
      ServiceIconModel(
        serviceName: "Daraz",
        assetPath: "assets/images/nagad.png",
      ),
      ServiceIconModel(
        serviceName: "10 Minute School",
        assetPath: "assets/images/ten.png",
      ),
      ServiceIconModel(
        serviceName: "Nagad",
        assetPath: "assets/images/nagad.png",
      ),
      ServiceIconModel(
        serviceName: "bKash",
        assetPath: "assets/images/bkash.png",
      ),
      ServiceIconModel(
        serviceName: "Nagad",
        assetPath: "assets/images/nagad.png",
      ),
    ];
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Padding(
      padding: EdgeInsets.all(8 * scaleFactor),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color.fromARGB(33, 0, 0, 0),
                blurRadius: 10,
                offset: Offset(-5.0, 5.0),
              )
            ],
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
                  Text("For You"),
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
              height: mediaQuery.height * 0.08,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: forYOu.length,
                itemBuilder: (context, index) {
                  final recentlyUse = forYOu[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: ServiceIcon(
                      imageHeight: mediaQuery.height * 0.04,
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
