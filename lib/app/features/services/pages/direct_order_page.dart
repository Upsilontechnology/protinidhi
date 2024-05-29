import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';
import 'package:protinidhi/app/features/services/widgets/media_type_card.dart';
import 'package:protinidhi/app/features/services/widgets/succesfull_card.dart';

class DirectOrderPage extends StatefulWidget {
  const DirectOrderPage({super.key});

  @override
  State<DirectOrderPage> createState() => _DirectOrderPageState();
}

class _DirectOrderPageState extends State<DirectOrderPage> {
  bool isSuccess = false;
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController couponController = TextEditingController();

  @override
  void dispose() {
    locationController.dispose();
    descriptionController.dispose();
    couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return SafeArea(
      child: Scaffold(
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
          toolbarHeight: mediaQuery.height * 0.20,
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
        body: isSuccess
            ? const SuccessCard()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          height: mediaQuery.height * 0.02,
                        ),
                      ),
                      const Text(
                        "Request for Direct Order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: mediaQuery.width * 0.8,
                        child: const Text(
                          "Add your Products, Place order. Our Support team contact with you very soon. Size Less than 5 Mb.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.02,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MediaTypeCard(
                            path: 'assets/images/documents.png',
                            name: "Document",
                            color: Color(0xff5F6CB5),
                          ),
                          MediaTypeCard(
                            path: 'assets/images/image.png',
                            name: "Image",
                            color: Color(0xff5181BF),
                          ),
                          MediaTypeCard(
                            path: 'assets/images/video.png',
                            name: "Video",
                            color: Color(0xff606261),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: TextField(
                          controller: locationController,
                          decoration: InputDecoration(
                              hintText: "Your Location Details",
                              hintStyle: TextStyle(fontSize: 13 * scaleFactor),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: AppColors.greyColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: TextField(
                          controller: descriptionController,
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText: "Your Product Description",
                              hintStyle: TextStyle(fontSize: 13 * scaleFactor),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: AppColors.greyColor),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                            child: SizedBox(
                              width: mediaQuery.width * 0.44,
                              child: TextField(
                                controller: couponController,
                                decoration: InputDecoration(
                                    hintText: "Use Code for Discount",
                                    hintStyle:
                                        TextStyle(fontSize: 13 * scaleFactor),
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: AppColors.greyColor),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                            child: SizedBox(
                              width: mediaQuery.width * 0.44,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(fontSize: 13 * scaleFactor),
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: AppColors.greyColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.02,
                      ),
                      Center(
                        child: Container(
                          height: mediaQuery.height * 0.06,
                          width: mediaQuery.width * 0.94,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isSuccess = true;
                              });
                            },
                            child: Center(
                              child: Text(
                                "Place Order",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14 * scaleFactor,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
