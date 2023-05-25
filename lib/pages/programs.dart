import 'package:flutter/material.dart';

import '../constants/assets_constant.dart';
import '../detail_pages/today_task.dart';

class Programs extends StatelessWidget{
  const Programs({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   List programStateList = [
      {"id": 0, "title": "Günlük Görevler","icon":Icons.task,"route":(BuildContext context) => const Task()},
      {"id": 1, "title": "Programlarım","icon":Icons.note_add,"route":(BuildContext context) => const Task()},
      {"id": 2, "title": "Sakatlıklar","icon":Icons.book,"route":(BuildContext context) => const Task()},
      {"id": 3, "title": "Yeni Programa Başla","icon":Icons.run_circle,"route":(BuildContext context) => const Task()},
      {"id": 4, "title": "Hakkımızda","icon":Icons.question_mark,"route":(BuildContext context) => const Task()},
   
    ];
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
               SizedBox(
              height: 3000,
              child: ListView.builder(
                itemCount: programStateList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: programStateList[index]['route'],
                        ),
                      );
                    },
         
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 240, 235, 235),
                        ),
                        child: ListTile(
                          title: Center(
                              child: Text(programStateList[index]['title'].toString())),
                          leading:
                              Icon(programStateList[index]['icon'], color: Colors.black),
                          trailing:
                              const Icon(Icons.chevron_right, color: Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
                
        
              
           
          ],
            ),
        ),
      ),
      
    );
  }
}
