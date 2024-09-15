import 'package:epredik_app/Button_and_textfield/Button_Register.dart';
import 'package:epredik_app/services/repository/userRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:epredik_app/Button_and_textfield/my_textfield.dart';
import 'package:epredik_app/DropDown/Strand.dart';
import 'package:epredik_app/Login_and_SignUp/Login_page/Login.dart';
import 'package:epredik_app/ForgetPassword/EnterYourEmail.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController studentIDController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  String? selectedStrand;

  Future<void> signUp(BuildContext context) async {
    final authService = AuthServices();
    final studentID = studentIDController.text;
    final email = emailController.text;
    final school = schoolController.text;
    final password = passwordController.text;
    final confirmPassword = confirmController.text;

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    // Call signUp method with the selected strand
    final result = await authService.signUp(email, studentID, password, school, selectedStrand!);

    // Show result after ensuring the Scaffold is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (result == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration Successful')),
        );
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(result)),
        );
      }
    });
  }

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
                    controller: studentIDController,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    hintText: "E-mail",
                    obscureText: false,
                    controller: emailController,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    hintText: "School",
                    obscureText: false,
                    controller: schoolController,
                  ),
                  const SizedBox(height: 10),
                  DropdownStrand(
                    onStrandChanged: (String? value) {
                      setState(() {
                        selectedStrand = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    hintText: "Confirm Password",
                    obscureText: true,
                    controller: confirmController,
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
                  Builder(
                    builder: (BuildContext scaffoldContext) {
                      return ButtonRegister(
                        onPressed: () => signUp(scaffoldContext),
                      );
                    },
                  ),
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
      ),
    );
  }
}
