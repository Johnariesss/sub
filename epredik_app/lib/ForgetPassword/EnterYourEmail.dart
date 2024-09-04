import 'package:epredik_app/Button_and_textfield/button_reset.dart';
import 'package:epredik_app/Button_and_textfield/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordText extends StatelessWidget {
  final TextEditingController emailControler = TextEditingController();

  PasswordText({super.key});

  void login() {
    runApp(PasswordText());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF17153B),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Just enter the email address you used for your account here at ePredik and we'll send you an email further instructions",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                MyTextField(
                  hintText: "E-mail",
                  obscureText: false,
                  controller: emailControler,
                ),
                const SizedBox(height: 10),
                const ButtonReset(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}