import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/widgets/service_icon.dart';

class AdditionalListList extends StatelessWidget {
  const AdditionalListList({super.key});

  @override
  Widget build(BuildContext context) {
    //* mock data

    final forYOu = [
      ServiceIconModel(
        serviceName: "Donation",
        assetPath: "assets/images/donation.png",
      ),
      ServiceIconModel(
        serviceName: "Mobile Recharge",
        assetPath: "assets/images/mobile_reacharge.png",
      ),
      ServiceIconModel(
        serviceName: "Take Loan",
        assetPath: "assets/images/take_loan.png",
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
                  Text("Additional Services"),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: ServiceIcon(
                        imageHeight: mediaQuery.height * 0.04,
                        assetPath: forYOu[0].assetPath,
                        serviceName: forYOu[0].serviceName,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: ServiceIcon(
                        imageHeight: mediaQuery.height * 0.04,
                        assetPath: forYOu[1].assetPath,
                        serviceName: forYOu[1].serviceName,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: ServiceIcon(
                        imageHeight: mediaQuery.height * 0.04,
                        assetPath: forYOu[2].assetPath,
                        serviceName: forYOu[2].serviceName,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0 * scaleFactor),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: mediaQuery.height * 0.06,
                          width: mediaQuery.width * 0.25,
                          decoration: BoxDecoration(
                              color: const Color(0xffFDF1F1),
                              borderRadius:
                                  BorderRadius.circular(10 * scaleFactor)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 20 * scaleFactor,
                              ),
                              Text(
                                "More Service",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12 * scaleFactor),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
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
