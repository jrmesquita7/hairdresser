import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hairdresser/controller/espera_page_controller.dart';
import 'package:hairdresser/models/client_model.dart';

class EsperaPage extends StatelessWidget {
  const EsperaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EsperaPageController());
    final List<ClientModel> waitingList = [
      // Supondo que você tenha uma lista de objetos Client
      ClientModel(
          name: 'João', estimatedTime: '15 min', service: 'Corte de Cabelo'),
      ClientModel(name: 'Carlos', estimatedTime: '20 min', service: 'Barba'),
      // Adicione mais clientes conforme necessário
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Clientes na Espera'.toUpperCase(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: waitingList.length,
            separatorBuilder: (context, index) => Divider(height: 1),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 123, 167, 0.6),
                  child: Text(waitingList[index].name[0],
                      style: TextStyle(color: Colors.white)),
                ),
                title: Text(waitingList[index].name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                subtitle: Text(
                    '${waitingList[index].service} - Espera: ${waitingList[index].estimatedTime}',
                    style: TextStyle(color: Colors.grey)),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert,
                      color: Color.fromRGBO(0, 123, 167, 1)),
                  onPressed: () {
                    // Ações adicionais
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
