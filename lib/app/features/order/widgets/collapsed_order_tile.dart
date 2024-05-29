import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:timelines/timelines.dart';

class CollapsedOrderTile extends StatefulWidget {
  final String name;
  const CollapsedOrderTile({super.key, required this.name});

  @override
  State<CollapsedOrderTile> createState() => _CollapsedOrderTileState();
}

class _CollapsedOrderTileState extends State<CollapsedOrderTile> {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    double extent = mediaQuery.width * 0.23;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      color: const Color(0xffF2F2F2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15 * scaleFactor),
              ),
              CircleAvatar(
                radius: 11 * scaleFactor,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                  size: 13 * scaleFactor,
                ),
              ),
            ],
          ),
          Text(
            "#894 445 857 576",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 12 * scaleFactor),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.5,
            height: mediaQuery.height * 0.01,
          ),
          SizedBox(
            height: mediaQuery.height * 0.167,
            child: Timeline(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                TimelineTile(
                  mainAxisExtent: extent,
                  contents: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        const Text(
                          'Request Sent',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.022,
                        ),
                        const Text(
                          'Oct 24, 10:00 AM',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  node: const TimelineNode(
                    indicator: DotIndicator(
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    endConnector: DashedLineConnector(
                      color: Colors.black,
                      dash: 6,
                      gap: 2,
                    ),
                  ),
                ),
                TimelineTile(
                  mainAxisExtent: extent,
                  contents: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        const Text(
                          'Order Placed',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.022,
                        ),
                        const Text(
                          'Oct 24, 10:00 AM',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  node: const TimelineNode(
                    indicator: DotIndicator(
                      position: 0.5,
                      color: Colors.white,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    startConnector: DashedLineConnector(
                      color: Colors.black,
                      dash: 6,
                      gap: 2,
                    ),
                    endConnector: DashedLineConnector(
                      color: Colors.black,
                      dash: 6,
                      gap: 2,
                    ),
                  ),
                ),
                TimelineTile(
                  mainAxisExtent: extent,
                  contents: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        const Text(
                          'On the way',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.022,
                        ),
                        const Text(
                          'Oct 24, 10:00 AM',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  node: const TimelineNode(
                    indicator: DotIndicator(
                      position: 0.5,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    startConnector: DashedLineConnector(
                      color: Colors.black,
                      dash: 6,
                      gap: 2,
                    ),
                    endConnector: DashedLineConnector(
                      color: Colors.black,
                      dash: 6,
                      gap: 2,
                    ),
                  ),
                ),
                TimelineTile(
                  mainAxisExtent: extent,
                  contents: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        const Text(
                          'Delivered',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.022,
                        ),
                        const Text(
                          'Oct 24, 10:00 AM',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  node: const TimelineNode(
                    indicator: DotIndicator(
                      position: 0.5,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    startConnector: DashedLineConnector(
                      color: Colors.black,
                      dash: 6,
                      gap: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black, thickness: 0.5),
          SizedBox(height: mediaQuery.height * 0.015),
          const Text(
            "Rahima Mansion, Road No 2, Agrabad. Chittagong",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: mediaQuery.height * 0.05),
          const Divider(color: Colors.black, thickness: 0.5),
          SizedBox(height: mediaQuery.height * 0.02),
          Row(
            children: [
              Image.asset(
                "assets/images/dress.png",
                height: mediaQuery.height * 0.085,
                width: mediaQuery.width * 0.15,
              ),
              SizedBox(width: mediaQuery.width * 0.02),
              SizedBox(
                width: mediaQuery.width * 0.7,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
