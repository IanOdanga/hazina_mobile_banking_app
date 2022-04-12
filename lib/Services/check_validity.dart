import 'dart:convert';
import 'package:hazinaMobile/Model/token_model.dart';
import 'package:hazinaMobile/Screens/login_screen.dart';
import 'package:hazinaMobile/Services/storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

Future<bool> checkValidity() async {
  //final prefs = await SharedPreferences.getInstance();

  String username = "admin@cloudpesateam";
  String password = "CloudPesa@2021.";

  final response= await http.get(
      Uri.parse("https://suresms.co.ke:4242/mobileapi/api/GetToken"),
      headers: {
        "Username": username,
        "Password": password,
        "Accept": "application/json"
      }
  );
  //print(response.body);
  if (response.statusCode == 401) {
    final SecureStorage secureStorage = SecureStorage();
    secureStorage.deleteSecureToken('Token');
    secureStorage.deleteSecureToken('Telephone');
    secureStorage.deleteSecureToken('Password');
    return true;
    //Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen, (route) => false);
  }
  else {
    //Fluttertoast.showToast(msg: "Please try again!");
    return false;
  }
}