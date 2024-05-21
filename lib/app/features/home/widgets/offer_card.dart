import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String image;
  final String name;
  const OfferCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Container(
      width: mediaQuery.width * 0.28,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(33, 0, 0, 0),
            blurRadius: 10,
            offset: Offset(-5.0, 5.0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(image),
          Padding(
            padding: EdgeInsets.only(left: 24.0 * scaleFactor),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.5 * scaleFactor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
