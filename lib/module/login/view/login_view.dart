import 'package:flutter/material.dart';
import 'package:login_api_sharedpref/core.dart';
import '../../../service/local_data_service/local_data_service.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Login"),
      //   actions: const [],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: controller.email,
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'User Name',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.email,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: 'Enter your user name',
                        ),
                        onChanged: (value) {
                          controller.email = value;
                          DB.set("username", value);
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        initialValue: controller.password,
                        maxLength: 20,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.password,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: 'Enter your password',
                        ),
                        onChanged: (value) {
                          controller.password = value;
                          DB.set("password", value);
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          onPressed: () => controller.doLogin(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
