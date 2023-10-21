import 'package:flutter/material.dart';
import 'package:login_api_sharedpref/core.dart';
import 'package:login_api_sharedpref/service/auth_service/auth_service.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Dashboard"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AuthService.currentUser!.gender == "male"
              //     ? const Text(
              //         "Login as an MALE",
              //         style: TextStyle(
              //           fontSize: 16.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       )
              //     : const Text(
              //         "Login as an FEMALE",
              //         style: TextStyle(
              //           fontSize: 16.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              const Text(
                "You are login as:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "First Name: ${AuthService.currentUser!.firstName}",
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Last Name: ${AuthService.currentUser!.lastName}",
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Your photo:",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                  "${AuthService.currentUser!.image}",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
