import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protinidhi/app/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.white),
        initialRoute: AppRoute.welcomePage,
        getPages: AppRoute.routes,
      ),
    );
  }
}
