import 'package:flutter/material.dart';

import '../constants/assets_constant.dart';


class Task extends StatefulWidget {
  const Task({super.key});

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {

  List<Map<String, String?>> data = [    {'title': 'Dinlenme', 'subtitle': 'Hasarlı bölgeyi dinlendir',"name":"dinlenme tedavisi"},    {'title': 'Soğuk kompres', 'subtitle': 'Hasarlı bölgeye soğuk tedavi uygulayın',"name":"dinlenme tedavisi"},    {'title': 'Foam Roll', 'subtitle': 'Hasarlı bölgeye foam  roll ile masaj yapın',"name":"dinlenme tedavisi"},    {'title': 'Quadriceps kasınızı esnetin', 'subtitle': '2x30 saniye ve günde 1-2 kere',"name":"Mobilite&Esneklik  tedavisi"},    {'title': 'Hamstring kasınızı esnetin', 'subtitle': '2x30 saniye ve günde 1-2 kere',"name":"Mobilite&Esneklik  tedavisi"},    {'title': 'Ayak Bileğinizi Esnetin', 'subtitle': '20 tekrar',"name":"Mobilite&Esneklik  tedavisi"},    {'title': 'Öğe 7', 'subtitle': 'Açıklama 7',"name":"Hasarlı bölgeyi güçlendirme hareketleri"},    {'title': 'Öğe 8', 'subtitle': 'Açıklama 8',"name":"dinlenme tedavisi"},    {'title': 'Öğe 9', 'subtitle': 'Açıklama 9',"name":"dinlenme tedavisi"},  ];

 
  List<bool> _selectedList = List.generate(9, (index) => false);

  
  int get _selectedCount => _selectedList.where((isSelected) => isSelected).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Programlar",
          style: TextStyle(
            color: Color.fromARGB(255, 39, 39, 39),
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 4,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
         
          ListTile(
            title: const Text("Ahmet Ünal"),            
            subtitle: const Text("Programı oluşturan doktor"),
            leading: Image.asset(doktor4),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            
          ),
          SizedBox(height: 10,),
           LinearProgressIndicator(

            minHeight:7.5,
            value: _selectedCount / data.length,

           ),
          data.length==_selectedCount?Text("Programı başarı ile tamamladın"):Text("Tamamlanmyan adımlar var"),
            
        
          SizedBox(height: 10,
          
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
              
                return Column(
                  
                  children: [
                    (index) % 3 == 0 ?Text(item['name']!):Text(""),
                    Card(
                    
                      child: ListTile(
                        title: Text(item['title']!),
                        subtitle: Text(item['subtitle']!),
                        trailing: Checkbox(
                          value: _selectedList[index],
                          onChanged: (isSelected) {
                            setState(() {
                              _selectedList[index] = isSelected!;
                            });
                          },
                        ),
                      ),
                    
                    ),
                  ],
                );
              },
            ),
            
          ),
       
         
           
        ],
      
    ),
    );
  }
}
