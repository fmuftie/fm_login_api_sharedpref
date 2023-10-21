import 'package:flutter/material.dart';
import 'package:login_api_sharedpref/core.dart';
import 'package:login_api_sharedpref/service/auth_service/auth_service.dart';

import '../../../service/local_data_service/local_data_service.dart';
// import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    email = DB.get("username");
    password = DB.get("password");
    // print("$email : $password");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  doLogin() async {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    await AuthService().login(
      username: email!,
      password: password!,
    );
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardView()),
      );
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const DashboardView()),
      // );
    }
    // if (AuthService.currentUser!.gender == "male") {
    //   if (context.mounted) {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => const DashboardView()),
    //     );
    //   }
    // } else {
    //   if (context.mounted) {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => const DashboardView()),
    //     );
    //   }
    // }
  }

  // doLogout() async {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => const LoginView()),
  //   );
  // }
}
