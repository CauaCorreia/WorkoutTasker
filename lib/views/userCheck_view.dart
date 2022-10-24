import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:responsive_login_ui/views/login_view.dart';
import 'package:responsive_login_ui/views/signUp_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'home_view.dart';

class UserCheckView extends StatefulWidget {
  const UserCheckView({Key? key}) : super(key: key);

  @override
  State<UserCheckView> createState() => _UserCheckViewState();
}

class _UserCheckViewState extends State<UserCheckView> {
  @override
  void initState() {
    super.initState();
    verificaUsuario().then((temUsurio) {
      if (temUsurio) {
        //se o user ja tiver logado anteriormente
        //Navigator.pushReplacement(
        //context, MaterialPageRoute(builder: (context) => HomeView()));
      } else {
        //se o user nao tiver logado anteriormente
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginView()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<bool> verificaUsuario() async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    String? token = _sharedPreferences.getString('token');

    if (token == null) {
      return false;
    } else {
      return true;
    }
  }
}
