import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';

class SearchService extends StatelessWidget {
  const SearchService({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Container(
      height: mediaQuery.height * 0.35,
      width: mediaQuery.width,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15 * scaleFactor),
            bottomRight: Radius.circular(15 * scaleFactor)),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(24, 0, 0, 0),
            blurRadius: 15,
            offset: Offset(0.0, 20.0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
                height: mediaQuery.height * 0.20,
                child: Column(
                  children: [
                    SizedBox(
                      height: mediaQuery.height * 0.01,
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.85,
                      height: mediaQuery.height * 0.08,
                      child: TextField(
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Search your desired services",
                            hintStyle: TextStyle(fontSize: 14 * scaleFactor),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 28 * scaleFactor,
                                ))),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
