import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_login_ui/views/login_view.dart';
import 'controller/simple_ui_controller.dart';

void main() {
  Get.put(SimpleUIController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ], //
      supportedLocales: [Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'Workout Tasker',
      home: LoginView(),
    );
  }
}
