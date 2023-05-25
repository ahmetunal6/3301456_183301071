import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/injuries.dart';
import 'package:flutter_application_1/pages/login_view.dart';
import 'package:flutter_application_1/pages/programs.dart';
import 'package:flutter_application_1/pages/setttings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'SAKAT';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: LoginView(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key, required this.userName}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
  final String userName;
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _currentIndex = 0;
  late String user;
  List<Widget> children = [];

  @override
  void initState() {
    super.initState();
    user = widget.userName.toString();
    
    children = [
      HomePage(
        userName: user,
      ),
      const Injuries(),
      const Programs(),
      const App_Setting()
    ];
  }
  
  void onTabTapped(int index) {
    print(widget.userName);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Ana Sayfa',
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.menu_book,
              color: Colors.black,
            ),
            label: 'Sakatlıklar',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black,
            ),
            label: 'Programlar',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Ayarlar',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
