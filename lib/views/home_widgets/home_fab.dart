import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:responsive_login_ui/views/home_widgets/home_modal_add.dart';
import 'package:responsive_login_ui/views/users_views/trainer_widgets/home_trainer_modal_add.dart';
import '../../models/user.dart';
import 'home_list_model.dart';

FloatingActionButton getHomeFab({
  bool? isAdm,
  BuildContext? context,
  List<HomeListModel>? listHomeListModel,
  required List<User> listUsers,
  Function? fncRefresh,
}) {
  return FloatingActionButton(
    child: Text(
      "+",
      style: TextStyle(fontSize: 24),
    ),
    backgroundColor: Colors.green,
    onPressed: () => showBarModalBottomSheet(
        context: context!,
        builder: (context) {
          if (isAdm!) {
            return HomeModalAdd(
              listModels: listHomeListModel!,
              fncRefresh: fncRefresh!,
            );
          }
          return HomeTrainerModalAdd(
            listModels: listUsers,
            fncRefresh: fncRefresh,
          );
        }),
  );
}
