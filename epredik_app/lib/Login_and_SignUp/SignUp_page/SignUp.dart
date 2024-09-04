import 'package:epredik_app/Button_and_textfield/Button_Register.dart';
import 'package:epredik_app/ForgetPassword/EnterYourEmail.dart';
import 'package:epredik_app/Login_and_SignUp/Login_page/Login.dart';
import 'package:epredik_app/Button_and_textfield/my_textfield.dart';
import 'package:epredik_app/DropDown/School.dart';
import 'package:epredik_app/DropDown/Strand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController usernameControler = TextEditingController();
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController strandControler = TextEditingController();
  final TextEditingController schoolControler = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
  final TextEditingController confirmControler = TextEditingController();

  SignUpPage({super.key});

  void login() {}

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
                SvgPicture.asset('assets/svg/eplogoo.svg'),
                const SizedBox(height: 50),
                MyTextField(
                  hintText: "Username",
                  obscureText: false,
                  controller: usernameControler,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailControler,
                ),

                const SizedBox(height: 10),

                const DropdownStrand(),

                const SizedBox(height: 10),
                const SchoolPage(),
                const SizedBox(height: 10),
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordControler,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: confirmControler,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                                        GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordText()),
                        );
                      },
                      child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xFFC8ACD6),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ButtonRegister(),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xFFC8ACD6),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()),
                        );
                      },
                      child: const Text(
                        "Login Here",
                        style: TextStyle(
                          color: Color(0xFFC8ACD6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}