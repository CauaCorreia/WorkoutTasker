import 'package:flutter/material.dart';
import 'package:responsive_login_ui/models/schedule_block.dart';
import 'package:responsive_login_ui/views/users_views/trainer_widgets/home_trainer_body.dart';
import '../../../models/user.dart';
import '../../home_widgets/home_appbar.dart';
import '../../home_widgets/home_drawer.dart';
import '../../home_widgets/home_fab.dart';

class HomeTrainerView extends StatefulWidget {
  const HomeTrainerView({Key? key}) : super(key: key);

  @override
  State<HomeTrainerView> createState() => _HomeTrainerViewState();
}

class _HomeTrainerViewState extends State<HomeTrainerView> {
  User loggedUser = User(
    isTrainer: true,
    isWithGym: true,
    publicCode: "ABC@12356xxX",
  );

  List<User>? listModels = [
    User(
      name: "Maria",
      publicCode: "001",
      isTrainer: false,
      isWithGym: true,
      listSchedules: [
        ScheduleBlock(
          name: "Treino de Segunda-Feira",
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          isFinished: true,
        ),
        ScheduleBlock(
          name: "Treino de Segunda-Feira",
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          isFinished: false,
        ),
      ],
    ),
    User(
      name: "José",
      publicCode: "002",
      isTrainer: false,
      isWithGym: true,
      listSchedules: [
        ScheduleBlock(
          name: "Treino de Segunda-Feira",
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          isFinished: true,
        ),
        ScheduleBlock(
          name: "Treino de Segunda-Feira",
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          isFinished: false,
        ),
      ],
    ),
    User(
      name: "Chicó",
      publicCode: "003",
      isTrainer: false,
      isWithGym: true,
      listSchedules: [
        ScheduleBlock(
          name: "Treino de Segunda-Feira",
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          isFinished: true,
        ),
        ScheduleBlock(
          name: "Treino de Segunda-Feira",
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          isFinished: false,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar("Meus Alunos"),
      drawer: getHomeDrawer(context),
      floatingActionButton: (loggedUser.isWithGym!)
          ? getHomeFab(
              isAdm: false,
              context: context,
              listUsers: listModels!,
              fncRefresh: refreshPage,
            )
          : null,
      body: HomeTrainerBodyWidget(
        loggedUser,
        listModels,
      ),
    );
  }

  refreshPage() {
    setState(() {});
  }
}
