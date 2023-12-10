import 'package:get/get.dart';
import 'package:hairdresser/controller/splash_page_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashPageController());
  }
}
