import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hairdresser/ui/espera/espera_page.dart';

import '../ui/contato/contato_page.dart';
import '../ui/galeria/galeria_page.dart';
import '../ui/inicio/inicio_page.dart';

class HomePageController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  Rx<PageController> pageController = PageController().obs;
  // ignore: prefer_final_fields
  static List<Widget> widgetOptions = <Widget>[
    Text("Inicio"),
    Text('Lista de Espera'),
    Text('Galeria de Cortes'),
    Text('Contato'),
  ];

  List<Widget> pages = [
    InicioPage(),
    EsperaPage(),
    GaleriaPage(),
    ContatoPage(),
  ];

  void onItemTapped(int index) {
    print(index);
    selectedIndex.value = index;
  }
}
