import 'package:epredik_app/Button_and_textfield/button_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const LoginandSignUp());
}

class LoginandSignUp extends StatelessWidget {
  const LoginandSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF17153B),
                Color.fromARGB(255, 46, 35, 108),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/eplogoo.svg'),
                const SizedBox(height: 50),
                // Sign up button
                const Button1(),
                const SizedBox(height: 12),
                // Login button
                const Button2(),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}