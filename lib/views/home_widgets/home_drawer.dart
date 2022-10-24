import 'package:flutter/material.dart';
import 'package:responsive_login_ui/views/login_view.dart';
import 'package:responsive_login_ui/views/users_views/home_trainer_view/home_trainer_view.dart';

Drawer getHomeDrawer(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          accountName: Text("Cauã Correia"),
          accountEmail: Text("caua@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "CC",
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.green,
          ),
          title: Text(
            "Configurações",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          onTap: (() => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomeTrainerView()))),
          leading: const Icon(Icons.screen_lock_portrait, color: Colors.green),
          title: const Text(
            "Ir para tela de Treinador",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          onTap: (() => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginView()))),
          leading: const Icon(Icons.arrow_back_rounded, color: Colors.green),
          title: const Text(
            "Sair",
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    ),
  );
}
