import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/chat/chat_screen.dart';
import 'package:protinidhi/app/router/app_router.dart';

class ServiceTile extends StatefulWidget {
  final String path;
  final String name;
  const ServiceTile({super.key, required this.path, required this.name});

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
      child: Column(
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.all(Radius.circular(10 * scaleFactor)),
            child: GestureDetector(
              onTap: () {},
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isTapped = !isTapped;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.03,
                          vertical: mediaQuery.height * 0.024),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10 * scaleFactor)),
                          gradient: const LinearGradient(colors: [
                            Color(0xffE9ECFF),
                            Color(0xffF6F6F6),
                          ])),
                      child: Row(
                        children: [
                          Image.asset(
                            widget.path,
                            fit: BoxFit.cover,
                            height: mediaQuery.height * 0.022,
                            width: mediaQuery.width * 0.05,
                          ),
                          SizedBox(
                            width: mediaQuery.width * 0.03,
                          ),
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13.5 * scaleFactor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isTapped == true)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: mediaQuery.width * 0.50,
                          decoration: BoxDecoration(
                              color: const Color(0xffF5F1F1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.call,
                                size: 19 * scaleFactor,
                                color: const Color(0xff8C9CFF),
                              ),
                              Text(
                                "  Contact to Support Team",
                                style: TextStyle(
                                    fontSize: 11 * scaleFactor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(ChatScreen());
                          },
                          child: Container(
                            width: mediaQuery.width * 0.41,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: const Color(0xffF5F1F1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.chatbubble_ellipses,
                                  size: 19 * scaleFactor,
                                  color: const Color(0xff8C9CFF),
                                ),
                                Text(
                                  "  Message for Order",
                                  style: TextStyle(
                                      fontSize: 11 * scaleFactor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          fixedSize: Size(mediaQuery.width * 0.95,
                              mediaQuery.height * 0.02)),
                      onPressed: () {
                        Get.toNamed(AppRoute.directOrderPage);
                      },
                      child: Text(
                        "Request for Direct Order",
                        style: TextStyle(
                            color: Colors.white, fontSize: 13 * scaleFactor),
                      ))
                ],
              ),
            )
        ],
      ),
    );
  }
}
