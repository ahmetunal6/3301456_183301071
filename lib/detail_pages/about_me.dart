import 'package:flutter/material.dart';

class Aboutme extends StatelessWidget{
  const Aboutme ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: const Text(
              "Hakkımızda",              style: TextStyle(
                  color: Color.fromARGB(255, 39, 39, 39),
                  fontWeight: FontWeight.w400),
            ), 
        elevation: 4,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        
      ),
      body: const Padding(
        padding:  EdgeInsets.all(8.0),
        child: Text("bu proje 183301071 ahmet ünal tarafından hazırlanmıştır")
          
        ),
       
    );
  }
}