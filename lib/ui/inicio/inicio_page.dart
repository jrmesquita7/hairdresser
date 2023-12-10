import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/inicio_page_controller.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(InicioPageController());
    return Container(
      child: Center(child: Text("inicio")),
    );
  }
}
