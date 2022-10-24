import 'package:responsive_login_ui/models/schedule_block.dart';

class User {
  String? id;
  String? name;
  String? mail;

  bool? isTrainer;
  bool? isWithGym;
  String? publicCode;
  //Treinador
  // Lista de ids dos clientes (API)
  List<int>? listClientIds;

  // Lista dos Clientes
  List<User>? listClients;

  //Alunos
  List<ScheduleBlock>? listSchedules;

  User({
    this.id,
    this.name,
    this.mail,
    this.isTrainer,
    this.isWithGym,
    this.publicCode,
    this.listSchedules,
  });
}
