import 'package:epredik_app/Splash/SplashScreen.dart';
import 'package:epredik_app/User_Page/Home/Home_page.dart';
import 'package:epredik_app/User_Page/Nav/nav.dart';
import 'package:epredik_app/cute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavUser(),   
    );
  }
}