import 'package:flutter/material.dart';

import '../constants/assets_constant.dart';
// ignore: camel_case_types
class Injuries extends StatelessWidget{
  const Injuries({Key? key}) : super(key: key);
  
  @override
 Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text(
              "Sakatlıklar",              style:  TextStyle(
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
                    
                    Text("Sakatlıklar hakkında bilimsel bilgiler"),
                  ],
                ),
                const SizedBox(height: 20,),
                
                  
                Padding(
                
                    padding:  const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: ListTile(title: const Center(child: Text("Omuz Sakatlıkları")),
                      
                      leading: Image.asset(ammo),
                      trailing: const Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child:  ListTile(title: const Center(child: Text("Ayak Bileği Sakatlıkları")),
                      
                      leading: Image.asset(bilek),
                      trailing: const Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child:  ListTile(title: const Center(child: Text("El Bileği Sakatlıkları")),
                      
                      leading: Image.asset(ayakBilek),
                      trailing: const Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child:  ListTile(title: const Center(child: Text("Boyun Sakatlıkları")),
                      
                      leading: Image.asset(boyun),
                      trailing: const Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  
                   Padding(
                
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 240, 235, 235),
                    
                      ),
                      child: ListTile(title: const Center(child: Text("Diz Sakatlıkları")),
                      
                      leading: Image.asset(diz),
                      trailing: const Icon(Icons.chevron_right,color: Colors.black,)),
                    ),
                  ),
                  
                   
                  
                

          
          
                
        
              
           
          ],
            ),
        ),
      ),
      
    );
  }
}
