
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class App_Setting extends StatelessWidget {
  const App_Setting({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
         appBar: AppBar(
        title: const Text(
              "Hesap Ayarları",              style:  TextStyle(
                  color: Color.fromARGB(255, 39, 39, 39),
                  fontWeight: FontWeight.w400),
            ),
        elevation: 4,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
          
              children: [
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    
                    Text("account"),
                  ],
                ),
                
                  
                Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("Profil")),
                      subtitle:Center(child: Text("Hesap bilgileri & abonelik"),), 
                      
                      leading: Icon(Icons.person,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("Program Ayarları")),
                      subtitle:Center(child: Text("Programların & program günlüğün"),), 
                      
                      leading: Icon(Icons.app_settings_alt,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("Destek")),
                      subtitle:Center(child: Text("Yardım bileti oluştur"),), 
                      
                      leading: Icon(Icons.support_agent,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("Sosyal")),
                      subtitle:Center(child: Text("Arkadaşlarını davet et"),), 
                      
                      leading: Icon(Icons.hail_sharp,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("Forum")),
                      subtitle:Center(child: Text("Sorunlarını diğer kullanıcılar ile tartış"),), 
                      
                      leading: Icon(Icons.forum,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("İstek ve Öneriler"),),  
                      subtitle:Center(child: Text("bizim için önemli"),),  
                      
                      leading: Icon(Icons.feedback,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                      
                     
                    ),
                  ),
                  
                  
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Center(child: Text("Web Siteyi Ziyaret Et")),
                      subtitle:Center(child: Text("www.SAKAT.com"),), 
                      
                      leading: Icon(Icons.web_stories,color: Colors.black,),
                      trailing: Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  
                  
                

          
          
                
        
              
           
          ],
            ),
        ),
      ),
      
    );
  }
}
