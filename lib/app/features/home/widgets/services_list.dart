import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/widgets/service_icon.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Container(
      height: mediaQuery.height * 0.277,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(24, 0, 0, 0),
            blurRadius: 15,
            offset: Offset(0.0, 20.0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              height: mediaQuery.height * 0.20,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                children: [
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/government.png",
                    serviceName: "Government",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/private.png",
                    serviceName: "Private",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/shopping.png",
                    serviceName: "Shopping",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/health.png",
                    serviceName: "Health",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/repair.png",
                    serviceName: "Repair",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/ticket.png",
                    serviceName: "Ticket",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/hospital.png",
                    serviceName: "Hospital",
                  ),
                  ServiceIcon(
                    imageHeight: mediaQuery.height * 0.05,
                    assetPath: "assets/images/grocery.png",
                    serviceName: "Grocery",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
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
                    fontSize: 14.5 * scaleFactor),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
