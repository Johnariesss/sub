import 'package:epredik_app/Login_and_SignUp/LoginAndSignUpPage.dart';
import 'package:epredik_app/Login_and_SignUp/Login_page/Login.dart';
import 'package:epredik_app/Login_and_SignUp/SignUp_page/SignUp.dart';
import 'package:epredik_app/User&Admin/User/Nav/Nav_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';


class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 50,
      child: CupertinoButton(
        color: const Color(0xffC8ACD6),
        onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const NavUser()),
                );
              },

        child: Text(
  'Sign in',
  style: GoogleFonts.inter (
    color: const Color(0xFF17153B),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
),
      ),
    );
  }
}



class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295,
      height: 45,
      child: CupertinoButton(
        color: const Color(0xFFC8ACD6).withOpacity(0.10),
        onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },

        child: Text(
  'Sign up',
  style: GoogleFonts.inter (
    color: white,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  ),
),
      ),
    );
  }
}



class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295,
      height: 45,
      child: CupertinoButton(
        color: const Color(0xFFC8ACD6).withOpacity(0.10),
        onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginPage()),
                );
              },

        child: Text(
  'Sign in',
  style: GoogleFonts.inter (
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w600,
    fontSize: 14,
  ),
),
      ),
    );
  }
}


class Button3 extends StatelessWidget {
  const Button3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295,
      height: 44,
      child: CupertinoButton(
        color: const Color(0xFFC8ACD6).withOpacity(0.10),
        onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  const LoginandSignUp()),
                );
              },

        child: Text(
  'Get Started',
  style: GoogleFonts.inter (
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w600,
    fontSize: 14,
  ),
),
      ),
    );
  }
}