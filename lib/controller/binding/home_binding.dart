import 'package:get/get.dart';
import 'package:hairdresser/controller/home_page_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
