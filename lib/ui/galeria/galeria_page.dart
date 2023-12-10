import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/galeria_page_controller.dart';

class GaleriaPage extends StatelessWidget {
  const GaleriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GaleriaPageController());
    return Container(
        child: Center(
      child: Text("galeria de corte"),
    ));
  }
}
