import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_pages/about_me.dart';
import 'package:flutter_application_1/detail_pages/today_task.dart';
import 'package:flutter_application_1/detail_pages/programs_detail.dart';
import 'package:flutter_application_1/pages/injuries.dart';
import 'package:flutter_application_1/pages/programs.dart';
import 'package:pie_chart/pie_chart.dart';
import '../constants/assets_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String? this.userName}) : super(key: key);
  final String? userName;

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Flutter": 5,
      // "React": 3,
      // "Xamarin": 4,
      // "Ionic": 2,
    };

    List homeStateList = [
      {"id": 0, "title": "Günlük Görevler","icon":Icons.task,"route":(BuildContext context) => const Task()},
      {"id": 1, "title": "Programlarım","icon":Icons.note_add,"route":(BuildContext context) => const Programsdetail()},
      {"id": 2, "title": "Sakatlıklar","icon":Icons.book,"route":(BuildContext context) => const Injuries()},
      {"id": 3, "title": "Yeni Programa Başla","icon":Icons.run_circle,"route":(BuildContext context) => const Programs()},
      {"id": 4, "title": "Hakkımızda","icon":Icons.question_mark,"route": (BuildContext context) => const Aboutme()},
   
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(25), // Image radius
                child: Image.asset(
                  logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              userName!,
              style: const TextStyle(
                  color: Color.fromARGB(255, 39, 39, 39),
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: PieChart(
                      centerText: "Ay",
                      dataMap: dataMap,
                      legendOptions: const LegendOptions(
                        showLegends: false,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      animationDuration: const Duration(milliseconds: 2000),
                    ),
                  ),
                  Expanded(
                    child: PieChart(
                      centerText: "Aşama",
                      dataMap: dataMap,
                      legendOptions: const LegendOptions(
                        showLegends: false,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      animationDuration: const Duration(milliseconds: 2000),
                    ),
                  ),
                  Expanded(
                    child: PieChart(
                      centerText: "Gün(%)",
                      dataMap: dataMap,
                      legendOptions: const LegendOptions(
                        showLegends: false,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      animationDuration: const Duration(milliseconds: 2000),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 12),
                    child: Text("Sana en yakın doktordan randevu al!",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size:
                                      const Size.fromRadius(55), // Image radius
                                  child: Image.asset(
                                    "assets/png/images.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Text("Doç. Dr. Ahmet Ünal"),
                              const Text("Selcuklu/Konya"),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400)),
                                  onPressed: () {},
                                  child: const Text("Randevu Al"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size:
                                      const Size.fromRadius(55), // Image radius
                                  child: Image.asset(
                                    "assets/png/doctors.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Text("Dr. Kumru Alsanç"),
                              const Text("Selcuklu/Konya"),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400)),
                                  onPressed: () {},
                                  child: const Text("Randevu Al"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size:
                                      const Size.fromRadius(55), // Image radius
                                  child: Image.asset(
                                    "assets/png/indir.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Text("Prof. Dr. Melike Ünal"),
                              const Text("Selcuklu/Konya"),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400)),
                                  onPressed: () {},
                                  child: const Text("Randevu Al"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size:
                                      const Size.fromRadius(55), // Image radius
                                  child: Image.asset(
                                    "assets/png/doctors2.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Text(" Dr. Ceyhun Gül"),
                              const Text("Selcuklu/Konya"),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400)),
                                  onPressed: () {},
                                  child: const Text("Randevu Al"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: homeStateList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 240, 235, 235),
                        ),
                        child: ListTile(
                             onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                  builder: homeStateList[index]['route'],
                ),
                ),
                                    
                                },
                                                    
                                title: Center(
                                child: Text(
                                    homeStateList[index]['title'].toString())),
                            leading:Icon(homeStateList[index]['icon'],color: Colors.black,),
                            trailing: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            )),
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

// ammmmoooooo

class ChartData {
  ChartData(this.x, this.y, [this.color = Colors.red]);
  final String x;
  final double y;
  final Color color;
}