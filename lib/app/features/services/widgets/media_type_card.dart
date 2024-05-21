import 'package:flutter/material.dart';

class MediaTypeCard extends StatelessWidget {
  final String path;
  final String name;
  final Color color;
  const MediaTypeCard(
      {super.key, required this.path, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Container(
      height: mediaQuery.height * 0.15,
      width: mediaQuery.width * 0.30,
      decoration: BoxDecoration(
          color: const Color(0xffEFEFEF),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(path),
          const Spacer(),
          Container(
            width: mediaQuery.width * 0.33,
            decoration: BoxDecoration(
                color: color,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(10))),
            padding: EdgeInsets.all(8 * scaleFactor),
            child: Center(
                child: Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
