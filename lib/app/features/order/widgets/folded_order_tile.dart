import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/order/widgets/collapsed_order_tile.dart';

class FoldedOrderTile extends StatefulWidget {
  final String name;
  const FoldedOrderTile({super.key, required this.name});

  @override
  State<FoldedOrderTile> createState() => _FoldedOrderTileState();
}

class _FoldedOrderTileState extends State<FoldedOrderTile> {
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return !isCollapsed
        ? ListTile(
            onTap: () {
              setState(() {
                isCollapsed = true;
              });
            },
            tileColor: const Color(0xffF2F2F2),
            contentPadding: EdgeInsets.only(
                left: 10 * scaleFactor,
                right: 10 * scaleFactor,
                bottom: 0,
                top: 0),
            title: Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: CircleAvatar(
              radius: 11 * scaleFactor,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 13 * scaleFactor,
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = false;
              });
            },
            child: CollapsedOrderTile(name: widget.name));
  }
}
