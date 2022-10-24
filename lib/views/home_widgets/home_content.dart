import 'package:flutter/material.dart';
import 'package:responsive_login_ui/views/home_widgets/home_list_item.dart';
import 'package:responsive_login_ui/views/home_widgets/home_list_model.dart';

class HomeContent extends StatefulWidget {
  final List<HomeListModel> listModels;
  const HomeContent({super.key, required this.listModels});

  @override
  // ignore: library_private_types_in_public_api
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
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
        itemCount: widget.listModels.length,
        itemBuilder: (context, index) {
          return HomeListItem(
            homeListModel: widget.listModels[index],
          );
        },
      ),
    );
  }
}
