import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login_api_sharedpref/model/user/user.dart';
import 'package:login_api_sharedpref/service/auth_service/auth_service.dart';

class DB {
  static late SharedPreferences mydb;

  static init() async {
    mydb = await SharedPreferences.getInstance();
    // await clearDatabase();
    var userMap = getUser();
    String? token = get("token");

    if (userMap != null) {
      AuthService.currentUser = User.fromJson(userMap);
    }
    AuthService.token = token;
  }

  static set(String key, String value) {
    mydb.setString(key, value);
  }

  static String? get(String key) {
    return mydb.getString(key);
  }

  static clearDatabase() async {
    await mydb.clear();
  }

  static Map<String, dynamic>? getUser() {
    var jsonString = mydb.getString("current_user");
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }
}
