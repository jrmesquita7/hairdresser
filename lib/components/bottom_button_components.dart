import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hairdresser/controller/home_page_controller.dart';

class BottomButtonComponents extends StatelessWidget {
  const BottomButtonComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomePageController>();
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: Color.fromRGBO(0, 123, 167, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 123, 167, 1),
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 123, 167, 1),
            icon: Icon(Icons.timer),
            label: 'Lista de Espera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 123, 167, 1),
            icon: Icon(Icons.content_cut),
            label: 'Galeria de Cortes',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 123, 167, 1),
            icon: Icon(Icons.contact_phone),
            label: 'Contato',
          ),
        ],
        selectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: controller.selectedIndex.value,
        onTap: controller.onItemTapped,
      ),
    );
  }
}
