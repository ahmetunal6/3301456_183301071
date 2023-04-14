import 'package:flutter/material.dart';

import '../constants/assets_constant.dart';

class Programs extends StatelessWidget{
  const Programs({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: const Text(
              "Programlar",        style:  TextStyle(
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
                    
                    Text("bir program seç"),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),
                Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: const ListTile(title: Align( alignment: Alignment.centerLeft,child:  Text(" Bacak & Bilek & Ayak",)),        
                      subtitle: Align( alignment: Alignment.centerLeft,child:  Text("Bacak, Bilek ve Ayak  sakatlıkları hakkında  rehabilitasyon programları",),),            
                      
                      
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
                      child: const ListTile(title: Align( alignment: Alignment.centerLeft,child:  Text("Diz",)), 
                    subtitle: Align( alignment: Alignment.centerLeft,child:  Text("Diz sakatlıkları rehabilitasyon programları",),),
                      
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
                      child: const ListTile(title: Align( alignment: Alignment.centerLeft,child:  Text("Omuz",)), 
                      subtitle: Align( alignment: Alignment.centerLeft,child:  Text("Omuz sakatlıkları rehabilitasyon programları",),),
                    
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
                      child: const ListTile(title: Align( alignment: Alignment.centerLeft,child:  Text("El & Kol & Dirsek",)),
                      subtitle: Align( alignment: Alignment.centerLeft,child:  Text("El, El bileği, Alt kol ve Üst kol , Dirsek sakatlıkları hakkında rehabilitasyon programları",),),
                       
                      
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
                      child: const ListTile(title: Align( alignment: Alignment.centerLeft,child:  Text("Bel & Kasık",)), 
                      subtitle: Align( alignment: Alignment.centerLeft,child:  Text("Bel ve Kasık sakatlıkları hakkında rehabilitasyon programları",),),
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
