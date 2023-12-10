import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hairdresser/controller/splash_page_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SplashPageController>();
    return Obx(
      () => Scaffold(
        backgroundColor:
            Color.fromRGBO(0, 123, 167, 1), // Define a cor de fundo como azul
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/barbearia.png', // Certifique-se de ter a imagem na pasta 'assets'
                width: 300.0, // Defina o tamanho da imagem conforme necessário
                height: 300.0,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Bem-vindo à Hairdresser!', // Substitua pelo nome da sua aplicação
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2.0),
              const Text(
                'Aqui, a arte do barbear e do estilo se encontra com a tradição e a inovação. Cada corte, cada barba aparada, é uma expressão da nossa paixão pelo que fazemos.', // Substitua pelo nome da sua aplicação
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize:
                      12.0, // Defina o tamanho da fonte conforme necessário
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        bottomNavigationBar: controller.isCarregamento.value
            ? Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () => Get.toNamed("/home"),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Avançar",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ))
            : LinearProgressIndicator(
                backgroundColor:
                    Colors.white, // Cor de fundo da barra de progresso
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.blue), // Cor da barra de progresso
              ),
      ),
    );
  }
}
