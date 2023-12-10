import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hairdresser/ui/home/home_page.dart';

import 'controller/binding/home_binding.dart';
import 'controller/binding/splash_binding.dart';
import 'ui/espera/espera_page.dart';
import 'ui/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
            name: "/splash",
            page: () => const SplashPage(),
            binding: SplashBinding()),
        GetPage(name: "/home", page: () => HomePage(), binding: HomeBinding()),
      ],
    );
  }
}
