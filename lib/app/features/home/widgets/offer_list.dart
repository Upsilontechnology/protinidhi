import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/home/pages/home_page.dart';
import 'package:protinidhi/app/features/home/widgets/offer_card.dart';
import 'package:protinidhi/app/features/home/widgets/service_icon.dart';

class OfferList extends StatelessWidget {
  const OfferList({super.key});

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
                  Text("Offer"),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: OfferCard(
                      image: recentlyUsed[0].assetPath,
                      name: recentlyUsed[0].offerName),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: OfferCard(
                      image: recentlyUsed[1].assetPath,
                      name: recentlyUsed[1].offerName),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: OfferCard(
                      image: recentlyUsed[2].assetPath,
                      name: recentlyUsed[2].offerName),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//* mock data

final recentlyUsed = [
  OfferModel(
    offerName: "bKash offer",
    assetPath: "assets/images/banner_2.png",
  ),
  OfferModel(
    offerName: "Walton offer",
    assetPath: "assets/images/banner_3.png",
  ),
  OfferModel(
    offerName: "bKash offer",
    assetPath: "assets/images/banner_2.png",
  ),
];

class OfferModel {
  final String offerName;
  final String assetPath;

  OfferModel({
    required this.offerName,
    required this.assetPath,
  });

  OfferModel copyWith({
    String? offerName,
    String? assetPath,
  }) {
    return OfferModel(
      offerName: offerName ?? this.offerName,
      assetPath: assetPath ?? this.assetPath,
    );
  }

  @override
  bool operator ==(covariant OfferModel other) {
    if (identical(this, other)) return true;

    return other.offerName == offerName && other.assetPath == assetPath;
  }

  @override
  int get hashCode => offerName.hashCode ^ assetPath.hashCode;
}
