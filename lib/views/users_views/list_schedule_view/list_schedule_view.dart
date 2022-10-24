import 'package:flutter/material.dart';
import 'package:responsive_login_ui/views/home_widgets/home_appbar.dart';
import 'package:responsive_login_ui/views/users_views/user_widgets/list_schedule_item.dart';

import '../../../models/user.dart';

class ListScheduleView extends StatelessWidget {
  final User user;
  final bool isTrainerView;

  const ListScheduleView(this.user, this.isTrainerView, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar("Treino de ${user.name!}"),
      floatingActionButton:
          (isTrainerView) ? const FloatingActionButton(onPressed: null) : null,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.grey, //
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: ListView.builder(
          itemCount: user.listSchedules!.length,
          itemBuilder: (context, index) {
            return ListScheduleItem(user.listSchedules![index]);
          }, //
        ),
      ),
    );
  } //
}
