import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notes_app/api/api_settings.dart';
import 'package:notes_app/models/user.dart';

class UserController {
  Future getUsers(BuildContext context) async {
    var url = Uri.parse(ApiSettings.USERS);
    var response = await http.get(url);

    if (response.statusCode < 400) {
      var json = jsonDecode(response.body);
      var jsonArray = json['data'] as List;
      List <User> users = jsonArray.map((jsonObject) => User.fromJson(jsonObject)).toList();
      return users;
    } else if (response.statusCode == 500) {
      showMessage(context: context, message: 'Something wrong, please try again!', error: true);
    } else {
      showMessage(context: context, message: jsonDecode(response.body)['message'],error: true);
    }
    return [];
  }

  void showMessage(
      {required BuildContext context,
      required String message,
      bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: error ? Colors.red : Colors.green,
      ),
    );
  }
}
