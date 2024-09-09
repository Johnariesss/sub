import 'package:epredik_app/Splash/SplashScreen.dart';
import 'package:epredik_app/User&Admin/Admin/Nav_admin/Nav_Admin.dart';
import 'package:epredik_app/User&Admin/User/Nav/Nav_user.dart';
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
      home: SplashScreen(),   
    );
  }
}