import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  final String path;
  final String name;
  const ServiceTile({super.key, required this.path, required this.name});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Material(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(colors: [
                Color(0xffE9ECFF),
                Color(0xffF6F6F6),
              ])),
          child: Row(
            children: [
              Image.asset(
                path,
                fit: BoxFit.cover,
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: mediaQuery.width * 0.03,
              ),
              Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 14 * scaleFactor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
