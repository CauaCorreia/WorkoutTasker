import 'package:flutter/material.dart';
import 'package:responsive_login_ui/views/users_views/trainer_widgets/home_trainer_content_list_item.dart';
import '../../../models/user.dart';

class HomeTrainerBodyContent extends StatefulWidget {
  final List<User>? listModels;
  const HomeTrainerBodyContent({super.key, required this.listModels});

  @override
  // ignore: library_private_types_in_public_api
  _HomeTrainerBodyContentState createState() => _HomeTrainerBodyContentState();
}

class _HomeTrainerBodyContentState extends State<HomeTrainerBodyContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.grey,
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: ListView.builder(
        itemCount: widget.listModels!.length,
        itemBuilder: (context, index) {
          return HomeTrainerListItem(
            widget.listModels![index],
          );
        },
      ),
    );
  }
}
