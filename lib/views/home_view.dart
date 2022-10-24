import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'home_widgets/home_appbar.dart';
import 'home_widgets/home_content.dart';
import 'home_widgets/home_drawer.dart';
import 'home_widgets/home_fab.dart';
import 'home_widgets/home_list_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<HomeListModel> listModels = [
    HomeListModel(
      title: "Membros Superiores",
      //assetIcon: "assets/peso.png",
    ),
    HomeListModel(
      title: "Agachamentos",
      //assetIcon: "assets/peso.png",
    ),
    HomeListModel(
      title: "Treino de Cardio",
      //assetIcon: "assets/peso.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //pega a data atual do sistema
    DateTime data = DateTime.now();
    String titulo = DateFormat("'Treino do dia' dd' de 'MMMM'", "pt_BR")
        .format(data)
        .toString();
    return Scaffold(
      appBar: getHomeAppBar(titulo),
      drawer: getHomeDrawer(context),
      floatingActionButton: getHomeFab(
        isAdm: true,
        context: context,
        listHomeListModel: listModels,
        fncRefresh: refreshPage,
        listUsers: [],
      ),
      body: HomeContent(
        listModels: listModels,
      ),
    );
  }

  refreshPage() {
    setState(() {});
  }
}
