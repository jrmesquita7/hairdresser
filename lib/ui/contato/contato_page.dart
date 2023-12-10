import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/contato_page_controller.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContatoPageController);
    return Container(
      child: Center(
        child: Text("Contato"),
      ),
    );
  }
}
