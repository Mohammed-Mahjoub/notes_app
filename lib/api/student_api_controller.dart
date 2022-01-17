
import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notes_app/api/api_settings.dart';
import 'package:notes_app/models/student.dart';
class StudentApiController{

  Future login (BuildContext context,{required String email, required String password}) async{
    var url = Uri.parse(ApiSettings.LOGIN);
    var response = await http.post(url, body: {
      'email' : email,
      'password' : password,
    });

    if(response.statusCode < 400){
        var jsonResponse = jsonDecode(response.body);
        Student student = Student.fromJson(jsonResponse['object']);
    }
    else if(response.statusCode == 500){
      showMessage(context, jsonDecode(response.body)['message'],error: true);
    }
    else{
      showMessage(context, 'Something wrong pleas try again...',error: true);
    }
  }

  void showMessage(BuildContext context, String message, {bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}