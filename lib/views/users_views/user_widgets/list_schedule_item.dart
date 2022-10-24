import 'package:flutter/material.dart';
import 'package:responsive_login_ui/models/schedule_block.dart';

class ListScheduleItem extends StatelessWidget {
  final ScheduleBlock? scheduleBlock;

  const ListScheduleItem(this.scheduleBlock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 3,
            offset: Offset(3, 7),
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                children: [
                  Row(
                    //Linha com caixa de treino
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        //nome do treino
                        scheduleBlock!.name!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          //icone de lixeira
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //linha do icone
                    children: [
                      const Icon(
                        //icone de calendário
                        Icons.date_range,
                        color: Colors.grey,
                        size: 26,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                      ),
                      Text(
                        "${scheduleBlock!.startDate!} - ${scheduleBlock!.endDate!}",
                        style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          //
          Container(
            //Container do Status da atividade
            alignment: Alignment.bottomRight,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: Container(
              padding: const EdgeInsets.all(12),
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                (scheduleBlock!.isFinished!) ? "Concluido" : "Em andamento",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
