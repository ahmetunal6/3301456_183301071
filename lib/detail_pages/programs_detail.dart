import 'package:flutter/material.dart';
import '../constants/assets_constant.dart';

class Programsdetail extends StatefulWidget {
  const Programsdetail ({Key? key}) : super(key: key);

  
  @override
  _ProgramsdetailState createState() => _ProgramsdetailState();
}

class _ProgramsdetailState extends State<Programsdetail> {
  final List<bool> _isCheckedList = List.generate(10, (_) => false);

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
            title: const Text("Program adı "),
            
            subtitle: _isCheckedList.every((bool value) => value == true)
                ? const Text("Program Detayına Git,Tüm aşamalar tamamlandı",
                   style: TextStyle(color: Colors.green))
                : const Text("Bazı aşamalar tamamlanmadı",
                    style: TextStyle(color: Colors.red)),
            leading: Image.asset(logo),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
            child: Text("a"),
          
            
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Aşama ${index + 1}"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                  leading: Checkbox(
                    value: _isCheckedList[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheckedList[index] = value!;
                      });
                    },
                    shape: const CircleBorder(),
                  ),
                  subtitle: _isCheckedList[index]
                      ? const Text("Tamamlandı", style: TextStyle(color: Colors.green))
                      : const Text("Yapılmadı", style: TextStyle(color: Colors.red)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
