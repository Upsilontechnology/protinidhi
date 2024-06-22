import 'package:flutter/material.dart';



class Cupon_Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Showing 10 coupons
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    Divider(
                      height: 20, // Adjust the height of the divider as needed
                      thickness: 10, // Adjust the thickness of the divider as needed
                      color: Colors.grey[300], // Adjust the color of the divider as needed
                    ),
                    CouponCard(
                      color: index % 2 == 0 ? Colors.purple : Colors.teal,
                      discount: index % 2 == 0 ? '25%' : '30%',
                      expiryDate: '25/2/2024',
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    //);
  }
}

class CouponCard extends StatelessWidget {
  final Color color;
  final String discount;
  final String expiryDate;

  const CouponCard({
    Key? key,
    required this.color,
    required this.discount,
    required this.expiryDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(),
        ClipPath(
          clipper: CouponClipper(),
          child: Container(
            color: color,
            height: 260, // Adjusted height
            width: 180, // Adjusted width
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text(
                  'February Festive',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '$discount Off',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Get $discount Off every delivery.\nExpires Date $expiryDate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 8.0),
                CustomPaint(
                  painter: DashedLinePainter(),
                  child: SizedBox(
                    width: 120,
                    height: 1,
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Redeem'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    textStyle: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CouponClipper extends CustomClipper<Path> {
  final double distanceFromTop; // Distance from the top of the container

  CouponClipper({this.distanceFromTop = 0.0}); // Default distance is 20.0

  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = 10.0;
    final topOffset = distanceFromTop;

    path.moveTo(0, topOffset + radius);
    path.quadraticBezierTo(0, topOffset, radius, topOffset);
    path.lineTo(size.width - radius, topOffset);
    path.quadraticBezierTo(size.width, topOffset, size.width, topOffset + radius);
    path.lineTo(size.width, size.height * 0.5 - radius);
    path.arcToPoint(Offset(size.width, size.height * 0.5 + radius), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height);
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);
    path.lineTo(0, size.height * 0.5 + radius);
    path.arcToPoint(Offset(0, size.height * 0.5 - radius), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(0, topOffset + radius);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}



class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1;

    var max = size.width;
    var dashWidth = 5;
    var dashSpace = 3;
    double startX = 0;

    while (startX < max) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}