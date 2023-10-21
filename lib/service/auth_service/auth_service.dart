import 'dart:convert';

import 'package:dio/dio.dart';
import '../../model/user/user.dart';
import '../local_data_service/local_data_service.dart';

class AuthService {
  static User? currentUser;
  static String? token;

  login({
    required String username,
    required String password,
  }) async {
    try {
      //http request api
      var response = await Dio().post(
        "https://dummyjson.com/auth/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "username": username,
          "password": password,
        },
      );
      Map<String, dynamic> obj = response.data;
      // Map<String, dynamic> userMap = obj["data"];
      currentUser = User.fromJson(obj);
      token = currentUser!.token;

      // DB.setUser(currentUser!.toJson());
      DB.set("current_user", jsonEncode(currentUser!.toJson()));
      DB.set("token", token!);
    } on Exception catch (err) {
      print(err);
    }
  }
}
