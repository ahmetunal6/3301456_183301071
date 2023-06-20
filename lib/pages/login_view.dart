import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/assets_constant.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/login-model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});



  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  final dio = Dio();
  String errorMessage = '';

  Future<void> setUserToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
   Future<void> setUserId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('id',id);
  }

  Future<void> showErrorDialog(String errorMessage) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hata"),
          content: Text(errorMessage),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Tamam"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(logo),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kullanıcı Adı',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                  ),
                ),
              ),
              Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    var response = await dio.post(
                      'http://192.168.56.1:8000/api/account/login',
                      data: {
                        "username": name.text,
                        "password": password.text
                      },
                      options: Options(
                        headers: {
                          'Content-Type': 'application/json',
                          'Accept': 'application/json',
                        },
                      ),
                    );

                    final body = response.data;

                    if (response.statusCode == 200) {
                      final tokens = LoginModel.fromJson(body).token;
                      var uid=LoginModel.fromJson(body).id;
                      setUserToken(tokens.toString());
                      setUserId(uid.toString());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyNavigationBar(
                            userName: name.text,
                          ),
                        ),
                      );
                    } else {
                      setState(() {
                        errorMessage = body['message'];
                      });
                    }
                  } catch (e) {
                    print(e);
                    showErrorDialog("Kullanıcı adı veya şifre hatalı");
                  }
                },
                child: const Text("Giriş Yap"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: const Text("Kayıt Ol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
