import 'package:epredik_app/Button_and_textfield/button_login.dart';
import 'package:epredik_app/Button_and_textfield/my_textfield.dart';
import 'package:epredik_app/ForgetPassword/EnterYourEmail.dart';
import 'package:epredik_app/Login_and_SignUp/SignUp_page/SignUp.dart';
import 'package:epredik_app/User&Admin/Admin/Home/Admin_Home.dart';
import 'package:epredik_app/User&Admin/Admin/Nav_admin/Nav_Admin.dart';
import 'package:epredik_app/User&Admin/User/Nav/Nav_user.dart';
import 'package:epredik_app/services/repository/userRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController studentidController = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();

  LoginPage({super.key});

  Future<void> login(BuildContext context) async {
    final authServices = AuthServices();
    String studentID = studentidController.text;
    String password = passwordControler.text;

    if (studentID.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    final result = await authServices.login(studentID, password);

    if (result.startsWith('success with role:')) {
      final role = result.split(':').last.trim();

      if (role == 'user') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const NavUser()),
        );
      } else if (role == 'admin') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const NavAdmin()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Unknown role: $role')),
        );
      }
    } else {
      // Display error message if login failed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF17153B),
                Color(0xff2E236C),
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svg/eplogoo.svg'),
                  const SizedBox(height: 50),
                  MyTextField(
                    hintText: "Student ID",
                    obscureText: false,
                    controller: studentidController,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passwordControler,
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
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ButtonLogin(
                    onPressed: () => login(context),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
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
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: const Text(
                          "Register Here",
                          style: TextStyle(
                            color: Color(0xFFC8ACD6),
                            fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
