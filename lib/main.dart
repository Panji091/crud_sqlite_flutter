import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/data/data_screen.dart';
import 'package:flutter_application_1/screen/data/navbar.dart';
import 'package:flutter_application_1/screen/home/home_screen.dart';
import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:flutter_application_1/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        DataScreen.routeName: (context) => const DataScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        Navbar.routeName: (context) => const Navbar(),
      },
    );
  }
}
