import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/data/data_screen.dart';
import 'package:flutter_application_1/screen/data/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  static const String routeName = '/home-screen';
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: const Text("Pendaftaran PPDB"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                child: Text("Profile"),
                value: "Profile",
              ),
              const PopupMenuItem(
                child: Text("Bantuan"),
                value: "Bantuan",
              ),
              const PopupMenuItem(
                child: Text("Setelan"),
                value: "Setelan",
              ),
              const PopupMenuItem(
                child: Text("Log_out"),
                value: "Log_out",
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          labelColor: Colors.white,
          labelStyle: const TextStyle(color: Colors.amber),
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Data",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "hgfghj",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text("camera"),
          DataScreen(),
          Text("Status"),
          Text("skhdjg")
        ],
      ),
    );

    /*  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                height: 200,
                width: 360,
                color: Colors.deepPurple,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/Sort.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: Image.asset(
                            'assets/images/logo-removebg-preview.png',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            Text(
                              "3/19/2024",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                padding: EdgeInsets.only(top: 70, left: 30, right: 30),
                height: MediaQuery.of(context).size.height * 1,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: Container(
                            height: 170,
                            width: 130,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x499C9C9C),
                                  blurRadius: 55.40,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Colors.deepPurple,
                                    size: 100,
                                  ),
                                  Text("Home")
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 170,
                            width: 130,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x499C9C9C),
                                  blurRadius: 55.40,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.perm_device_information,
                                    color: Color.fromARGB(255, 25, 209, 169),
                                    size: 100,
                                  ),
                                  Text("Info")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: Container(
                            height: 170,
                            width: 130,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x499C9C9C),
                                  blurRadius: 55.40,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    color: Color.fromARGB(255, 0, 255, 200),
                                    size: 100,
                                  ),
                                  Text("Image")
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, Navbar.routeName);
                          },
                          child: Card(
                            child: Container(
                              height: 170,
                              width: 130,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x499C9C9C),
                                    blurRadius: 55.40,
                                    offset: Offset(0, 0),
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person_add,
                                      color: Color.fromARGB(150, 63, 62, 59),
                                      size: 100,
                                    ),
                                    Text("Anggota")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ); */
  }
}
