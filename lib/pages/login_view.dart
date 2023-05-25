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
  TextEditingController password= TextEditingController();
  final dio = Dio();
  Future<void> setUserToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);

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
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                  ),
                ),
              ),
        
              ElevatedButton(
        
                  onPressed: () async {
                  // print("baba");
                      try {
                        
                      
                   var response = await dio.post('http://192.168.56.1:8000/api/account/login',data: {"username":name.text,"password":password.text},options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },));
        
                   final body = response.data;
                   
                   
                   print(LoginModel(message: body['message'], token: body['token']));
                   print(LoginModel.fromJson(body));
                   final tokens=LoginModel.fromJson(body).token;
                
                   setUserToken(tokens.toString());
                   if (response.statusMessage=="OK"){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyNavigationBar(
                                  userName: name.text,
                                )));
                   }
                   else{
                    print(response.statusMessage);
                   }
        
                   
            // Handle response here
          } catch (e) {
            print(e);
            // print("asdsadasdas");
            // Handle error here
          }
        
                  
                   
                  },
                  child: const Text("Giris Yap")),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
        
                  onPressed: () async {
                   
                      
        
                  
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpPage(
                                  
                                )));
                  },
                  child: const Text("Kayıt Ol"))
            ],
          ),
        ),
      ),
    );
  }
}
