import 'package:get/get.dart';

class SplashPageController extends GetxController {
  RxBool isCarregamento = false.obs;
  @override
  void onInit() async {
    Future.delayed(const Duration(seconds: 5), () {
      isCarregamento.value = true;
    });
    super.onInit();
  }
}
