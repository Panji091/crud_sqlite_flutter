import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screen/data/data_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
  static const String routeName = '/Navbar-screen';
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 1;

  final List<Widget> _children = [
    Container(),
    const DataScreen(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurple,
          color: Colors.deepPurple.shade200,
          items: const [
            Icon(
              Icons.folder_copy,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.person_add,
              color: Colors.white,
            ),
            Icon(
              Icons.image,
              color: Colors.white,
            )
          ]),
    );
  }
}
