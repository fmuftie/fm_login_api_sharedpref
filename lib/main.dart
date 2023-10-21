import 'package:login_api_sharedpref/core.dart';
import 'package:flutter/material.dart';
import 'package:login_api_sharedpref/service/auth_service/auth_service.dart';
import 'package:login_api_sharedpref/service/local_data_service/local_data_service.dart';
import 'package:login_api_sharedpref/state_util.dart';

void main() async {
  await DB.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Widget? view;

    if (AuthService.currentUser != null) {
      view = const DashboardView();
      // print(AuthService.currentUser!.role);
    } else {
      view = const LoginView();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: view,
      debugShowCheckedModeBanner: false,
    );
  }
}
