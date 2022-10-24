import 'package:flutter/material.dart';
import 'package:responsive_login_ui/models/user.dart';
import 'package:responsive_login_ui/views/users_views/trainer_widgets/home_trainer_body_content.dart';

class HomeTrainerBodyWidget extends StatelessWidget {
  final User model;
  final List<User>? listStudents;

  const HomeTrainerBodyWidget(this.model, this.listStudents, {super.key});

  @override
  Widget build(BuildContext context) {
    return (!model.isWithGym!)
        ? Container(
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Image.asset("assets/logo.png"),
                const Padding(padding: EdgeInsets.only(bottom: 8)),
                Text(
                  model.publicCode!,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 8)),
                Text(
                  (model.isTrainer!)
                      ? "Informe este codigo para o administrador para que você consiga entrar na academia e ter acesso as funcionalidades!"
                      : "Passe esse codigo para o seu treinador para que voce consiga entrar na academia e ter acesso aos treinos passados por ele!",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        : Container(
            child: HomeTrainerBodyContent(
              listModels: listStudents!,
            ),
          );
  }
}
