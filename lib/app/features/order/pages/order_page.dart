import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/features/chat/chat_screen.dart';
import 'package:protinidhi/app/features/order/widgets/folded_order_tile.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15 * scaleFactor)),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xffD71A21),
                Color(0xff4A9363),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: mediaQuery.height * 0.25,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: mediaQuery.height * 0.05,
            ),
            Text(
              " Hi, Arman",
              style: TextStyle(
                  fontSize: 32 * scaleFactor,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "  We are here for your any need.",
              style: TextStyle(
                  fontSize: 14 * scaleFactor,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                "Your Order",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15 * scaleFactor),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              const FoldedOrderTile(name: "Image-01"),
              SizedBox(height: mediaQuery.height * 0.01),
              const FoldedOrderTile(name: "Image-02"),
              SizedBox(height: mediaQuery.height * 0.01),
              const FoldedOrderTile(name: "Gold Image"),
              SizedBox(height: mediaQuery.height * 0.2),
              TextButton(onPressed: (){
                Get.to(ChatScreen());
              }, child: Text("chat text"))
            ],
          ),
        ),
      ),
    );
  }
}
